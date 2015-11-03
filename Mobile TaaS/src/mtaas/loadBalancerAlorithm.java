package mtaas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class loadBalancerMain
 */
public class loadBalancerAlorithm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<VirtualMachine> vmList = new ArrayList<VirtualMachine>();
	List<Cloud> myCloudList = new ArrayList<Cloud>();
	
	 VirtualMachine currentVM=null;
	 String resources = null;
	 Cloud c1 = new Cloud(12134, 1);
	 Cloud c2 = new Cloud(12135, 2);
	 Cloud c3 = new Cloud(12136, 3);
	 VirtualMachine vm1 = new VirtualMachine(12134, 10000, 10000, 10000, true, 0, 0, 0, 1, 0);
	 VirtualMachine vm2 = new VirtualMachine(12135, 10000, 10000, 10000, true, 0, 0, 0, 2, 0);
	 VirtualMachine vm3 = new VirtualMachine(12136, 10000, 10000, 10000, true, 0, 0, 0, 3, 0);
	 
	 /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void loadBalancer(String algo,String resources,String region)
	{
		
		
		
//		Calendar lCDateTime = Calendar.getInstance();
//		System.out.println("time in milliseconds"+ lCDateTime.getTimeInMillis());
		
		honeyBeeAlgo(resources,myCloudList,region);
		//antColonyAlgo(resources,myCloudList);
		
		
		
	}

	public void honeyBeeAlgo(String resources,List<Cloud> myCloudList,String region)
	{
		VirtualMachine currentVM = selectVMHonyeBee(resources,myCloudList);
		if(currentVM!=null)
		{
			int newCapacity = currentVM.getCpuCapacity() - Integer.parseInt(resources);
			currentVM.setCpuCapacity(newCapacity);
			if(newCapacity==0)
			{
				currentVM.setAvailable(false);
				System.out.println("vmid " +currentVM.getVmId() +" full" );
			}
			else
			{
				System.out.println("location id--> " +currentVM.getLocationId() +" vm Id --> " +currentVM.getVmId());
				
			}
		}
		else
		{
			// no vm availabe
		}
		List<VirtualMachine> vmList = new ArrayList<VirtualMachine>();

			for(int i=0;i<myCloudList.size();i++)
			{
				vmList.addAll(myCloudList.get(i).getVmList());
			}
			for(int i=0;i<vmList.size();i++)
			{
				System.out.println("vm id: "+vmList.get(i).getVmId()+" capacity: " + vmList.get(i).getCpuCapacity());
			}
	}
	
	
	public VirtualMachine selectVMHonyeBee(String resources,List<Cloud> myCloudList)
	{
		List<VirtualMachine> vmList = new ArrayList<VirtualMachine>();
		
	
		 int max = -1;
		 int vmId = 0;
		 VirtualMachine currentVM = null;
		for(int i=0;i<myCloudList.size();i++)
		{
			vmList.addAll(myCloudList.get(i).getVmList());
		}
		int tempQty=0,tempVMId=0;
		for(int i=0;i<vmList.size();i++)
		{
			int quality = vmList.get(i).getQuality();
			if(quality>=tempQty){
				tempQty = quality;
				int capacity = vmList.get(i).getCpuCapacity();
				int available = capacity-Integer.parseInt(resources);
				if(available>=0){
				tempVMId = vmList.get(i).getVmId();
				currentVM = vmList.get(i);
				}
			}
		}
		try
		{
			//VirtualMachine currentVM= vmList.get(tempVMId-1);
			return currentVM;
		}
		catch(Exception e)
		{
			return null;
		}
		
	}
	
	public VirtualMachine selectVMAnt(String resources,List<Cloud> myCloudList)
	{
		 int max = -1;
		 int vmId = 0;
		for(int i=0;i<myCloudList.size();i++)
		{
			vmList.addAll(myCloudList.get(i).getVmList());
		}
		
		for(int i=0;i<vmList.size();i++)
		{
			int pheromon = vmList.get(i).getPheromonCount();
			int capacity = vmList.get(i).getCpuCapacity();
			int available = capacity-Integer.parseInt(resources);

			if(pheromon>max && available>=0){
				max=pheromon;
				vmId= vmList.get(i).getVmId();
				currentVM = vmList.get(i);
			}
		}
		try
		{
			//VirtualMachine currentVM= vmList.get(vmId-1);
			return currentVM;
		}
		catch(Exception e)
		{
			return null;
		}
		
	}

	public VirtualMachine antColonyAlgo(String resources,List<Cloud> myCloudList)
	{
		currentVM = selectVMAnt( resources, myCloudList);
		int pheromonCount = 0;
		int newCapacity = 0;
		if(currentVM!=null)
		{
			
			pheromonCount = currentVM.getPheromonCount();
			pheromonCount++;
			currentVM.setPheromonCount(pheromonCount);
			newCapacity = currentVM.getCpuCapacity() - Integer.parseInt(resources);
			currentVM.setCpuCapacity(newCapacity);
			if(newCapacity==0)
			{
				currentVM.setAvailable(false);
				System.out.println("vmid " +currentVM.getVmId() +" full" );
			}
			else
			{
				System.out.println("location id--> " +currentVM.getLocationId() +" vm Id --> " +currentVM.getVmId());
				
			}
		}
		else
		{
			System.out.println("no vm " );
		}
		List<VirtualMachine> vmList = new ArrayList<VirtualMachine>();

			for(int i=0;i<myCloudList.size();i++)
			{
				vmList.addAll(myCloudList.get(i).getVmList());
			}
			for(int i=0;i<vmList.size();i++)
			{
				System.out.println("vm id: "+vmList.get(i).getVmId()+" capacity: " + vmList.get(i).getCpuCapacity());
			}
			return null;




	
		
		
	}


	
		int getHostBasedOnUtilization(ArrayList<Integer> hostList) {
		int hostValUtil = 0, noOfHostsAMI = 0;
		for (int j = 0; j < hostList.size(); j++) {
			int noOfHostsAMITemp = getNumberOfHostsOnAmi(hostList.get(j));
			if (noOfHostsAMITemp > noOfHostsAMI) {
				hostValUtil = hostList.get(j);
			}
		}
		return hostValUtil;
	}

	int getHostBasedOnCost(ArrayList<Integer> hostList) {
		int hostValUtil = 0, costPerAMI = 0;
		for (int j = 0; j < hostList.size(); j++) {
			int costPerAMITemp = getCostOfHostOnAmi(hostList.get(j));
			if (costPerAMITemp > costPerAMI) {
				hostValUtil = hostList.get(j);
			}
		}
		return hostValUtil;
	}

	int getHostBasedOnLocation(ArrayList<Integer> hostList) {
		int longitude = 0, latitude = 0;
		ArrayList<Integer> locationHost = getAvailableHosts(longitude, latitude);
		Random randGen = new Random();
		int value = randGen.nextInt(locationHost.size());
		return (Integer) locationHost.get(value);
	}

	ArrayList<Integer> getAvailableHosts(int longitude, int latitude) {
		ArrayList<Integer> locationHost = null;
		return locationHost;
	}

	int getCostOfHostOnAmi(int value) {
		return 0;
	}

	int getNumberOfHostsOnAmi(int value) {
		return 0;
	}

	String getInitialHost(ArrayList<String> instanceIds) {
		Random randGen = new Random();
		int value = randGen.nextInt(instanceIds.size());
		return instanceIds.get(value);
	}

	double calculateTotalLoad(String initialHostID,
			HashMap<String, Integer> instanceLoad) {
		// int maxPro = 8800;
		double loadVal = 0.0;
		loadVal = getProcPowerForHostId(initialHostID, instanceLoad);
		// System.out.println("Load Value of initial Host ID:"+" "+initialHostID+" is of load value "+loadVal/maxPro);
		return loadVal;
	}

	int getProcPowerForHostId(String initialHostID,
			HashMap<String, Integer> instanceLoad) {
		return instanceLoad.get(initialHostID);
	}

	void setProcPowerForHostId(int hostid, int value,
			HashMap<Integer, Integer> hostProcVal) {
		hostProcVal.put(hostid, value);
	}

	ArrayList getNeighbours(String initialHostID, ArrayList<String> instanceIds) {
		ArrayList<String> neighbourHostList = new ArrayList<String>();
		for (String inst : instanceIds) {
			if (inst.equalsIgnoreCase(initialHostID))
				neighbourHostList.add(inst);
		}
		return neighbourHostList;

	}



private void distance(double lat1, double lng1, double lat2, double lng2) {
		double earthRadius = 3958.75;

        double dLat = Math.toRadians(lat1-lat2);
        double dLng = Math.toRadians(lng1-lng2);
        double a = Math.sin(dLat/2) * Math.sin(dLat/2) +
                   Math.cos(Math.toRadians(lat2)) * Math.cos(Math.toRadians(lat1)) *
                   Math.sin(dLng/2) * Math.sin(dLng/2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
        double dis = earthRadius * c;
        
        System.out.println("The output of requests");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String resources = request.getParameter("resources");
		String algo = request.getParameter("algo");
		String requests = request.getParameter("requests");
		String region = request.getParameter("region");
		
		System.out.println(region+"   "+requests+"  "+algo+"   "+resources);
		
		long startTime = new Date().getTime();
		System.out.println("time in milliseconds"+ startTime);
		for(int i=0; i<Integer.parseInt(requests);i++)
		{
			
			loadBalancer(algo,resources,region);
			
		}
		long endTime = new Date().getTime();
		System.out.println("time in milliseconds"+ endTime);
		long turnAroundTime = endTime - startTime;
		

	}

}
