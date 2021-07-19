package com.rovio.Box2D.Dynamics.Controllers
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   import com.rovio.Box2D.Dynamics.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var m_next:b2Controller;
      
      b2internal var m_prev:b2Controller;
      
      protected var m_bodyList:b2ControllerEdge;
      
      protected var m_bodyCount:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(step:b2TimeStep) : void
      {
      }
      
      public function Draw(debugDraw:b2DebugDraw) : void
      {
      }
      
      public function AddBody(body:b2Body) : void
      {
         var edge:b2ControllerEdge = new b2ControllerEdge();
         edge.controller = this;
         edge.body = body;
         edge.nextBody = this.m_bodyList;
         edge.prevBody = null;
         this.m_bodyList = edge;
         if(edge.nextBody)
         {
            edge.nextBody.prevBody = edge;
         }
         ++this.m_bodyCount;
         edge.nextController = body.m_controllerList;
         edge.prevController = null;
         body.m_controllerList = edge;
         if(edge.nextController)
         {
            edge.nextController.prevController = edge;
         }
         ++body.m_controllerCount;
      }
      
      public function RemoveBody(body:b2Body) : void
      {
         var edge:b2ControllerEdge = body.m_controllerList;
         while(edge && edge.controller != this)
         {
            edge = edge.nextController;
         }
         if(edge.prevBody)
         {
            edge.prevBody.nextBody = edge.nextBody;
         }
         if(edge.nextBody)
         {
            edge.nextBody.prevBody = edge.prevBody;
         }
         if(edge.nextController)
         {
            edge.nextController.prevController = edge.prevController;
         }
         if(edge.prevController)
         {
            edge.prevController.nextController = edge.nextController;
         }
         if(this.m_bodyList == edge)
         {
            this.m_bodyList = edge.nextBody;
         }
         if(body.m_controllerList == edge)
         {
            body.m_controllerList = edge.nextController;
         }
         --body.m_controllerCount;
         --this.m_bodyCount;
      }
      
      public function Clear() : void
      {
         while(this.m_bodyList)
         {
            this.RemoveBody(this.m_bodyList.body);
         }
      }
      
      public function GetNext() : b2Controller
      {
         return this.m_next;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function GetBodyList() : b2ControllerEdge
      {
         return this.m_bodyList;
      }
   }
}
