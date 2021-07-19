package §@0§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2DebugDraw;
   import §3!`§.b2TimeStep;
   import §3!`§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0!>§:b2Controller;
      
      b2internal var §0!^§:b2Controller;
      
      protected var §>L§:b2ControllerEdge;
      
      protected var §3"'§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4!6§(param1:b2TimeStep) : void
      {
      }
      
      public function §>"&§(param1:b2DebugDraw) : void
      {
      }
      
      public function §<",§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§#@§ = this.§>L§;
         _loc2_.§%M§ = null;
         this.§>L§ = _loc2_;
         if(_loc2_.§#@§)
         {
            _loc2_.§#@§.§%M§ = _loc2_;
         }
         ++this.§3"'§;
         _loc2_.§4!m§ = param1.§9"&§;
         _loc2_.§0?§ = null;
         param1.§9"&§ = _loc2_;
         if(_loc2_.§4!m§)
         {
            _loc2_.§4!m§.§0?§ = _loc2_;
         }
         ++param1.§,!l§;
      }
      
      public function §2!U§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§9"&§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§4!m§;
         }
         if(_loc2_.§%M§)
         {
            _loc2_.§%M§.§#@§ = _loc2_.§#@§;
         }
         if(_loc2_.§#@§)
         {
            _loc2_.§#@§.§%M§ = _loc2_.§%M§;
         }
         if(_loc2_.§4!m§)
         {
            _loc2_.§4!m§.§0?§ = _loc2_.§0?§;
         }
         if(_loc2_.§0?§)
         {
            _loc2_.§0?§.§4!m§ = _loc2_.§4!m§;
         }
         if(this.§>L§ == _loc2_)
         {
            this.§>L§ = _loc2_.§#@§;
         }
         if(param1.§9"&§ == _loc2_)
         {
            param1.§9"&§ = _loc2_.§4!m§;
         }
         --param1.§,!l§;
         --this.§3"'§;
      }
      
      public function §,A§() : void
      {
         while(this.§>L§)
         {
            this.§2!U§(this.§>L§.body);
         }
      }
      
      public function §>X§() : b2Controller
      {
         return this.§0!>§;
      }
      
      public function §7!$§() : b2World
      {
         return this.m_world;
      }
      
      public function §`K§() : b2ControllerEdge
      {
         return this.§>L§;
      }
   }
}
