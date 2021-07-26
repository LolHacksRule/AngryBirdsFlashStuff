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
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function Draw(param1:b2DebugDraw) : void
      {
      }
      
      public function AddBody(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.nextBody = this.m_bodyList;
         _loc2_.prevBody = null;
         this.m_bodyList = _loc2_;
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_;
         }
         ++this.m_bodyCount;
         _loc2_.nextController = param1.m_controllerList;
         _loc2_.prevController = null;
         param1.m_controllerList = _loc2_;
         if(_loc2_.nextController)
         {
            _loc2_.nextController.prevController = _loc2_;
         }
         ++param1.m_controllerCount;
      }
      
      public function RemoveBody(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.m_controllerList;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.nextController;
         }
         if(_loc2_.prevBody)
         {
            _loc2_.prevBody.nextBody = _loc2_.nextBody;
         }
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_.prevBody;
         }
         if(_loc2_.nextController)
         {
            _loc2_.nextController.prevController = _loc2_.prevController;
         }
         if(_loc2_.prevController)
         {
            _loc2_.prevController.nextController = _loc2_.nextController;
         }
         if(this.m_bodyList == _loc2_)
         {
            this.m_bodyList = _loc2_.nextBody;
         }
         if(param1.m_controllerList == _loc2_)
         {
            param1.m_controllerList = _loc2_.nextController;
         }
         --param1.m_controllerCount;
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
