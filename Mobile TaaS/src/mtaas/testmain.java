package mtaas;

import java.io.IOException;









import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.StringReader;
//import java.sql.Date;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.ec2.AmazonEC2;
import com.amazonaws.services.ec2.AmazonEC2Client;
import com.amazonaws.services.ec2.model.AttachVolumeRequest;
import com.amazonaws.services.ec2.model.AttachVolumeResult;
import com.amazonaws.services.ec2.model.AuthorizeSecurityGroupIngressRequest;
import com.amazonaws.services.ec2.model.CreateKeyPairResult;
import com.amazonaws.services.ec2.model.CreateSecurityGroupRequest;
import com.amazonaws.services.ec2.model.CreateTagsRequest;
import com.amazonaws.services.ec2.model.CreateVolumeRequest;
import com.amazonaws.services.ec2.model.CreateVolumeResult;
import com.amazonaws.services.ec2.model.DescribeAvailabilityZonesResult;
import com.amazonaws.services.ec2.model.DescribeImagesResult;
import com.amazonaws.services.ec2.model.DescribeInstanceAttributeRequest;
import com.amazonaws.services.ec2.model.DescribeInstancesResult;
import com.amazonaws.services.ec2.model.DescribeKeyPairsResult;
import com.amazonaws.services.ec2.model.Image;
import com.amazonaws.services.ec2.model.Instance;
import com.amazonaws.services.ec2.model.InstanceState;
import com.amazonaws.services.ec2.model.IpPermission;
import com.amazonaws.services.ec2.model.KeyPair;
import com.amazonaws.services.ec2.model.LaunchSpecification;
import com.amazonaws.services.ec2.model.RequestSpotInstancesRequest;
import com.amazonaws.services.ec2.model.RequestSpotInstancesResult;
import com.amazonaws.services.ec2.model.Reservation;
import com.amazonaws.services.ec2.model.RunInstancesRequest;
import com.amazonaws.services.ec2.model.RunInstancesResult;
import com.amazonaws.services.ec2.model.SpotInstanceRequest;
import com.amazonaws.services.ec2.model.StartInstancesRequest;
import com.amazonaws.services.ec2.model.StopInstancesRequest;
import com.amazonaws.services.ec2.model.Tag;
import com.amazonaws.services.ec2.model.TerminateInstancesRequest;
import com.amazonaws.services.ec2.model.Volume;
import com.amazonaws.services.ec2.model.CreateKeyPairRequest;
import com.amazonaws.services.identitymanagement.model.CreateAccessKeyRequest;
import com.amazonaws.util.StringUtils;

public class testmain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<String> spotInstanceRequestIds;
	String size,instanceSize;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testmain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
		// TODO Auto-generated method stub
		



		/*These are the APIs*/
		
		    /*
		     * Important: Be sure to fill in your AWS access credentials in the
		     *            AwsCredentials.properties file before you try to run this
		     *            sample.
		     * http://aws.amazon.com/security-credentials

		     */
		
		response.getWriter().println("<html>");
		response.getWriter().println("<head>");
		response.getWriter().println("<head>");
		response.getWriter().println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">");
		response.getWriter().println("<title>Team 19</title>");
response.getWriter().println("</head>");
response.getWriter().println("<body bgcolor=grey>");
response.getWriter().println("Hello Welcome to Cloudlets,<br>");

response.getWriter().println("<br>==========================================================================================================<br>");

		long startTime = new Date().getTime();
		request.getSession().setAttribute("startTime",startTime);
		System.out.println("time in milliseconds"+ startTime);
		
		response.getWriter().print("<br><br>welcome");
		  KeyPair keyPair;
		  int count  = 1;
		    
		     AmazonEC2      ec2 ;
		  

		      AWSCredentials credentials = new ProfileCredentialsProvider("default").getCredentials();
		         /*********************************************
		          * 
		          *  #1 Create Amazon Client object
		          *  
		          *********************************************/
		      response.getWriter().print("<br>#1 Create Amazon Client object");
		         ec2 = new AmazonEC2Client(credentials);
		         Region usWest2 = Region.getRegion(Regions.US_WEST_2);
		         ec2.setRegion(usWest2);
		         
		       
		        try {
		        
		         /*********************************************
		          * 
		             *  #2 Describe Availability Zones.
		             *  
		             *********************************************/
		         /*response.getWriter().print("<br>#2 Describe Availability Zones.");
		            DescribeAvailabilityZonesResult availabilityZonesResult = ec2.describeAvailabilityZones();
		            response.getWriter().print("<br>You have access to " + availabilityZonesResult.getAvailabilityZones().size() +
		                    " Availability Zones.");
		            response.getWriter().print("<br>You have access to " + availabilityZonesResult.getAvailabilityZones() +
		                    " Availability Zones.");*/
		            /*********************************************
		             * 
		             *  #3 Describe Available Images
		             *  
		             *********************************************/
		            
		          //  response.getWriter().print("<br>#3 Describe Available Images");
		             
		           DescribeImagesResult dir = ec2.describeImages();
		            List<Image> images = dir.getImages();
		            
		            size = Integer.toString(images.size());
		            response.getWriter().print("<br>You have " + images.size() + " Amazon images");
		            
		            /*********************************************
		             *                 
		             *  #4 Describe Key Pair
		             *                 
		             *********************************************/
		            /*response.getWriter().print("<br>#9 Describe Key Pair");
		            DescribeKeyPairsResult dkr = ec2.describeKeyPairs();
		            response.getWriter().print(dkr.toString());*/
		            
		            /*********************************************
		             * 
		             *  #5 Describe Current Instances
		             *  
		             *********************************************/
		            response.getWriter().print("<br>#4 Describe Current Instances");
		            DescribeInstancesResult describeInstancesRequest = ec2.describeInstances();
		            List<Reservation> reservations = describeInstancesRequest.getReservations();
		            Set<Instance> instances = new HashSet<Instance>();
		            // add all instances to a Set.
		            for (Reservation reservation : reservations) {
		             instances.addAll(reservation.getInstances());
		            }
		            
		            instanceSize = Integer.toString(instances.size());
		            
		            response.getWriter().print("<br>You have " + instances.size() + " Amazon EC2 instance(s).");
		            for (Instance ins : instances){
		            
		             // instance id
		             String instanceId = ins.getInstanceId();
		            
		             // instance state
		             InstanceState is = ins.getState();
		             response.getWriter().print(instanceId+" "+is.getName());
		            }
		            
		            /*********************************************
		             * 
		             *  #6.1 Create a New Group
		             *  
		             *********************************************/
//		            String Temp_Group = "Newgroup"+count; //name of the group
//		             CreateSecurityGroupRequest r1 = new CreateSecurityGroupRequest(Temp_Group, "temporal group");
//		             ec2.createSecurityGroup(r1);
//		              AuthorizeSecurityGroupIngressRequest r2 = new AuthorizeSecurityGroupIngressRequest();
//		              r2.setGroupName(Temp_Group);
//		           
//		            /*************the property of http*****************/
//		            IpPermission permission = new IpPermission();
//		            permission.setIpProtocol("tcp");
//		            permission.setFromPort(80);
//		            permission.setToPort(80);
//		            List<String> ipRanges = new ArrayList<String>();
//		            ipRanges.add("0.0.0.0/0"); 
//		            permission.setIpRanges(ipRanges);
//		            
//		            /*************the property of SSH**********************/
//		            IpPermission permission1 = new IpPermission();
//		            permission1.setIpProtocol("tcp");
//		            permission1.setFromPort(22);
//		            permission1.setToPort(22);
//		            List<String> ipRanges1 = new ArrayList<String>();
//		            ipRanges1.add("0.0.0.0/0"); 
//		            permission1.setIpRanges(ipRanges1);
//		              
//		            /*************the property of https**********************/ 
//		            IpPermission permission2 = new IpPermission();
//		            permission2.setIpProtocol("tcp");
//		            permission2.setFromPort(443);
//		            permission2.setToPort(443);
//		            List<String> ipRanges2 = new ArrayList<String>();
//		            ipRanges2.add("0.0.0.0/0"); 
//		            permission2.setIpRanges(ipRanges2);
//		            
//		            /*************the property of tcp**********************/ 
//		            IpPermission permission3 = new IpPermission();
//		            permission3.setIpProtocol("tcp");
//		            permission3.setFromPort(0);
//		            permission3.setToPort(65535);
//		            List<String> ipRanges3 = new ArrayList<String>();
//		            ipRanges3.add("0.0.0.0/0"); 
//		            permission3.setIpRanges(ipRanges3);
//		            
//		            /**********************add rules to the group*********************/
//		            List<IpPermission> permissions = new ArrayList<IpPermission>();
//		            permissions.add(permission);
//		            permissions.add(permission1);
//		            permissions.add(permission2);
//		            permissions.add(permission3);
//		            r2.setIpPermissions(permissions);
//		            
//		            ec2.authorizeSecurityGroupIngress(r2);
		            //List<String> groupName = new ArrayList<String>();
		            //String Temp_Group = "Newgroup"+1;
		            
		            //groupName.add("GettingStartedGroup1");//wait to out our instance into this group
		            
		            
		            
		            /*********************************************
		             * 
		             *  #6.2 Create a New Key Pair
		             *  
		             *********************************************/
		                    
//		            count++;
//		            CreateKeyPairRequest newKeyRequest = new CreateKeyPairRequest();
//		            newKeyRequest.setKeyName("New_Key"+count);
//		            CreateKeyPairResult keyresult = ec2.createKeyPair(newKeyRequest);
//		            
//		            /************************print the properties of this key*****************/
//		            keyPair = keyresult.getKeyPair();
//		            response.getWriter().print("<br>The key we created is = "
//		            + keyPair.getKeyName() + "\nIts fingerprint is="
//		            + keyPair.getKeyFingerprint() + "\nIts material is= \n"
//		            + keyPair.getKeyMaterial());
//		           
//		            /*****************store the key in a .pem file ****************/
//		            String fileName="d:/"+"New_Key"+count+".pem"; 
//		            File distFile = new File(fileName); 
//		            BufferedReader bufferedReader = new BufferedReader(new StringReader(keyPair.getKeyMaterial()));
//		            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(distFile)); 
//		            char buf[] = new char[1024];        
//		            int len; 
//		            while ((len = bufferedReader.read(buf)) != -1) { 
//		                    bufferedWriter.write(buf, 0, len); 
//		            } 
//		            bufferedWriter.flush(); 
//		            bufferedReader.close(); 
//		            bufferedWriter.close(); 

		 
		            /*********************************************
		             * 
		             *  #6.3 Create an Instance
		             *  
		             *********************************************/
		            response.getWriter().print("<br>#5 Create an Instance");
		            /*String imageId = "ami-9da68dad";//  change to SUSE 64 bit Amazon AMI 
		            int minInstanceCount = 1; // create 1 instance
		            int maxInstanceCount = 1;
		            RunInstancesRequest rir = new RunInstancesRequest(imageId, minInstanceCount, maxInstanceCount);
		            rir.setInstanceType("m1.small");*/
		            //rir.setKeyName("New_Key2");// give the instance the key we just created
		            //rir.setSecurityGroups(groupName);// set the instance in the group we just created
		          
		            //RunInstancesResult result = ec2.runInstances(rir);
		            
		            /***********to make sure the instance's state is "running instead of "pending",**********/
		            /***********we wait for a while                                                **********/
		            response.getWriter().print("<br>waiting");
		          //  Thread.currentThread().sleep(50000);
		            response.getWriter().print("<br>OK");
		            //Our Code//
		          //==========================================================================//
		            //================= Submit a Spot Instance Request =====================//
		            //==========================================================================//

		            // Initializes a Spot Instance Request
		            RequestSpotInstancesRequest requestRequest = new RequestSpotInstancesRequest();

		            // Request 1 x t1.micro instance with a bid price of $0.03.
		            requestRequest.setSpotPrice("0.03");
		            requestRequest.setInstanceCount(Integer.valueOf(1));

		            // Setup the specifications of the launch. This includes the instance type (e.g. t1.micro)
		            // and the latest Amazon Linux AMI id available. Note, you should always use the latest
		            // Amazon Linux AMI id or another of your choosing.
		            LaunchSpecification launchSpecification = new LaunchSpecification();
		            launchSpecification.setImageId("ami-9da68dad");
		            launchSpecification.setInstanceType("m1.small");

		            // Add the security group to the request.
		            ArrayList<String> securityGroups = new ArrayList<String>();
		            securityGroups.add("GettingStartedGroup");
		            launchSpecification.setSecurityGroups(securityGroups);

		            // Add the launch specifications to the request.
		            requestRequest.setLaunchSpecification(launchSpecification);

		            // Call the RequestSpotInstance API.
		            RequestSpotInstancesResult requestResult = ec2.requestSpotInstances(requestRequest);
		            List<SpotInstanceRequest> requestResponses = requestResult.getSpotInstanceRequests();

		            // Setup an arraylist to collect all of the request ids we want to watch hit the running
		            // state.
		            spotInstanceRequestIds = new ArrayList<String>();

		            // Add all of the request ids to the hashset, so we can determine when they hit the
		            // active state.
		            for (SpotInstanceRequest requestResponse : requestResponses) {
		                System.out.println("Created Spot Request: "+requestResponse.getSpotInstanceRequestId());
		                spotInstanceRequestIds.add(requestResponse.getSpotInstanceRequestId());
		            
		            
		            
		            //our code//
		            
		            //List<Instance> resultInstance = result.getReservation().getInstances();
		         
		            //String createdInstanceId = null;
		            //for (Instance ins : resultInstance){
		            
		             //createdInstanceId = ins.getInstanceId();
		             //response.getWriter().print("<br>New instance has been created: "+ins.getInstanceId());//print the instance ID
		            
		            System.out.println("hi");
		               /*********************************************
		                 * 
		                 *  #6.4 Create an Instance
		                 *  
		                 *********************************************/
		                CreateVolumeRequest newVolumeRequest = new CreateVolumeRequest();
		                newVolumeRequest.setSize(1); //1.0GB
		                String availcount="";
		                newVolumeRequest.setAvailabilityZone("US-WEST-2C");// set its available zone, it may change.
		              
		                

		        			long endTime = new Date().getTime();
		        			System.out.println("time in milliseconds"+ endTime);
		        			long turnAroundTime = endTime - startTime;
		                CreateVolumeResult volumeResult = ec2.createVolume(newVolumeRequest);
		                
		                Volume v1 = volumeResult.getVolume();
		                String volumeID = v1.getVolumeId();
		                AttachVolumeRequest avr = new AttachVolumeRequest();//begin to attach the volume to instance
		             avr.withInstanceId(requestResponse.getInstanceId());
		                avr.withVolumeId(volumeID);
		                //avr.withDevice("/dev/sda2"); //mount it
		                AttachVolumeResult attachResult = ec2.attachVolume(avr);
		                response.getWriter().print("<br>EBS volume has been attached and the volume ID is: "+volumeID);
		                  
		                
		                  
//		                
		                
		            

		            
		            /*********************************************
		             * 
		             *  #6.5 print public DNS and IP            *  
		             *********************************************/
		          
		            describeInstancesRequest = ec2.describeInstances();
		            reservations = describeInstancesRequest.getReservations();
		            int k = reservations.size();
		            Reservation tempReservation = reservations.get(k-1);
		            Instance tempInstances = tempReservation.getInstances().get(0);
		            response.getWriter().print("<br>The public DNS is: "+tempInstances.getPublicDnsName()+"\n"+tempInstances.getRamdiskId());
		            response.getWriter().print("<br>The private IP is: "+tempInstances.getPrivateIpAddress());
		            response.getWriter().print("<br>The public IP is: "+tempInstances.getPublicIpAddress());
		            
		      
		              
		       
		            
		            /*********************************************
		             * 
		             *  #7 Create a 'tag' for the new instance.
		             *  
		             *********************************************/
		            response.getWriter().print("<br>#6 Create a 'tag' for the new instance.");
		            List<String> resources = new LinkedList<String>();
		            List<Tag> tags = new LinkedList<Tag>();
		            Tag nameTag = new Tag("Name", "MyFirstInstance"+count);
		            
		            resources.add(requestResponse.getInstanceId());
		            tags.add(nameTag);
		            
		            CreateTagsRequest ctr = new CreateTagsRequest(resources, tags);
		            ec2.createTags(ctr);
		            
		            
		                        
		            /*********************************************
		             * 
		             *  #8 Stop/Start an Instance
		             *  
		             *********************************************/
		            response.getWriter().print("<br>#7 Stop the Instance");
		            List<String> instanceIds = new LinkedList<String>();
		            instanceIds.add(requestResponse.getInstanceId());
		            
		            //stop
		            StopInstancesRequest stopIR = new StopInstancesRequest(instanceIds);
		            //ec2.stopInstances(stopIR);
		            
		            //start
		            StartInstancesRequest startIR = new StartInstancesRequest(instanceIds);
		            //ec2.startInstances(startIR);
		         
		   

		            
		            /*********************************************
		             * 
		             *  #9 Terminate an Instance
		             *  
		             *********************************************/
		            response.getWriter().print("<br>#8 Terminate the Instance");
		            TerminateInstancesRequest tir = new TerminateInstancesRequest(instanceIds);
		            //ec2.terminateInstances(tir);
		            
		                        
		            /*********************************************
		             *  
		             *  #10 shutdown client object
		             *  
		             *********************************************/
		            ec2.shutdown();
		            

		           
		            
		            
	}}
	catch (AmazonServiceException ase) {
		                System.out.println("<br>Caught Exception: " + ase.getMessage());
		                System.out.println("<br>Reponse Status Code: " + ase.getStatusCode());
		                System.out.println("<br>Error Code: " + ase.getErrorCode());
		                System.out.println("<br>Request ID: " + ase.getRequestId());
		         }
		        long endTime = new Date().getTime();
		       request.getSession().setAttribute("endTime",endTime);
		       request.getSession().setAttribute("size",size);
		       request.getSession().setAttribute("instanceSize",instanceSize);
		       //request.getSession().setAttribute("instanceIds", instanceIds);

		    	double a=Math.random()%2000;
        		long difference=endTime-startTime;
        				double dif=difference+a;
        			
        				request.getSession().setAttribute("dif",dif);
        				
        				double payment=dif*2/1000;
        				request.getSession().setAttribute("payment",payment);
		     
		        
		        		//response.getWriter().print("<br><form action=\"payment.jsp\">");
		        		
		        	   				
		  			  //response.getWriter().print("<br><input type=\"submit\" value= \"Stop Instance\">");
		  							  //response.getWriter().print("<br></form>");	
        				response.sendRedirect("StopInstance.jsp");
		  							  
	
	}
		
}
	

	


