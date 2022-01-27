package §0!i§
{
   import §1x§.b2Body;
   import §1x§.b2DebugDraw;
   import §1x§.b2TimeStep;
   import §1x§.b2World;
   import §9!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var § z§:b2Controller;
      
      b2internal var §<@§:b2Controller;
      
      protected var §,"P§:b2ControllerEdge;
      
      protected var §%_§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §%"L§(param1:b2DebugDraw) : void
      {
      }
      
      public function §=#5§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§%e§ = this;
         _loc2_.body = param1;
         _loc2_.§?",§ = this.§,"P§;
         _loc2_.§5$§ = null;
         this.§,"P§ = _loc2_;
         if(_loc2_.§?",§)
         {
            _loc2_.§?",§.§5$§ = _loc2_;
         }
         ++this.§%_§;
         _loc2_.§]!3§ = param1.§!o§;
         _loc2_.§+!"§ = null;
         param1.§!o§ = _loc2_;
         if(_loc2_.§]!3§)
         {
            _loc2_.§]!3§.§+!"§ = _loc2_;
         }
         ++param1.§0#-§;
      }
      
      public function §-"b§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§!o§;
         while(_loc2_ && _loc2_.§%e§ != this)
         {
            _loc2_ = _loc2_.§]!3§;
         }
         if(_loc2_.§5$§)
         {
            _loc2_.§5$§.§?",§ = _loc2_.§?",§;
         }
         if(_loc2_.§?",§)
         {
            _loc2_.§?",§.§5$§ = _loc2_.§5$§;
         }
         if(_loc2_.§]!3§)
         {
            _loc2_.§]!3§.§+!"§ = _loc2_.§+!"§;
         }
         if(_loc2_.§+!"§)
         {
            _loc2_.§+!"§.§]!3§ = _loc2_.§]!3§;
         }
         if(this.§,"P§ == _loc2_)
         {
            this.§,"P§ = _loc2_.§?",§;
         }
         if(param1.§!o§ == _loc2_)
         {
            param1.§!o§ = _loc2_.§]!3§;
         }
         --param1.§0#-§;
         --this.§%_§;
      }
      
      public function §4"6§() : void
      {
         while(this.§,"P§)
         {
            this.§-"b§(this.§,"P§.body);
         }
      }
      
      public function §=!&§() : b2Controller
      {
         return this.§ z§;
      }
      
      public function §#!M§() : b2World
      {
         return this.m_world;
      }
      
      public function §9"Y§() : b2ControllerEdge
      {
         return this.§,"P§;
      }
   }
}
