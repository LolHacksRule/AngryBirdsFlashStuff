package §9!+§
{
   import §+!g§.b2internal;
   import §>!L§.b2Body;
   import §>!L§.b2DebugDraw;
   import §>!L§.b2TimeStep;
   import §>!L§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,!Z§:b2Controller;
      
      b2internal var §<!9§:b2Controller;
      
      protected var §;;§:b2ControllerEdge;
      
      protected var §+C§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §<!;§(param1:b2TimeStep) : void
      {
      }
      
      public function §<!f§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0!Y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.§[r§ = param1;
         _loc2_.§;!A§ = this.§;;§;
         _loc2_.§ [§ = null;
         this.§;;§ = _loc2_;
         if(_loc2_.§;!A§)
         {
            _loc2_.§;!A§.§ [§ = _loc2_;
         }
         ++this.§+C§;
         _loc2_.§2e§ = param1.§@!U§;
         _loc2_.§-!U§ = null;
         param1.§@!U§ = _loc2_;
         if(_loc2_.§2e§)
         {
            _loc2_.§2e§.§-!U§ = _loc2_;
         }
         ++param1.§<!-§;
      }
      
      public function §>!F§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§@!U§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§2e§;
         }
         if(_loc2_.§ [§)
         {
            _loc2_.§ [§.§;!A§ = _loc2_.§;!A§;
         }
         if(_loc2_.§;!A§)
         {
            _loc2_.§;!A§.§ [§ = _loc2_.§ [§;
         }
         if(_loc2_.§2e§)
         {
            _loc2_.§2e§.§-!U§ = _loc2_.§-!U§;
         }
         if(_loc2_.§-!U§)
         {
            _loc2_.§-!U§.§2e§ = _loc2_.§2e§;
         }
         if(this.§;;§ == _loc2_)
         {
            this.§;;§ = _loc2_.§;!A§;
         }
         if(param1.§@!U§ == _loc2_)
         {
            param1.§@!U§ = _loc2_.§2e§;
         }
         --param1.§<!-§;
         --this.§+C§;
      }
      
      public function §-!g§() : void
      {
         while(this.§;;§)
         {
            this.§>!F§(this.§;;§.§[r§);
         }
      }
      
      public function §'!;§() : b2Controller
      {
         return this.§,!Z§;
      }
      
      public function §1g§() : b2World
      {
         return this.m_world;
      }
      
      public function §%f§() : b2ControllerEdge
      {
         return this.§;;§;
      }
   }
}
