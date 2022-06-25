package com.rovio.Box2D.Dynamics.Controllers
{
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class b2ControllerEdge
   {
       
      
      public var controller:b2Controller;
      
      public var body:b2Body;
      
      public var prevBody:b2ControllerEdge;
      
      public var nextBody:b2ControllerEdge;
      
      public var prevController:b2ControllerEdge;
      
      public var nextController:b2ControllerEdge;
      
      public function b2ControllerEdge()
      {
         super();
      }
   }
}
