package § 2§
{
   import §;]§.b2internal;
   import §?!0§.b2Body;
   import §?!0§.b2DebugDraw;
   import §?!0§.b2TimeStep;
   import §?!0§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0]§:b2Controller;
      
      b2internal var §3U§:b2Controller;
      
      protected var §;+§:b2ControllerEdge;
      
      protected var § R§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §%;§(param1:b2TimeStep) : void
      {
      }
      
      public function §<!P§(param1:b2DebugDraw) : void
      {
      }
      
      public function §2!9§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§&#§ = this;
         _loc2_.§+I§ = param1;
         _loc2_.§8P§ = this.§;+§;
         _loc2_.§7!@§ = null;
         this.§;+§ = _loc2_;
         if(_loc2_.§8P§)
         {
            _loc2_.§8P§.§7!@§ = _loc2_;
         }
         ++this.§ R§;
         _loc2_.§;b§ = param1.§>k§;
         _loc2_.§!+§ = null;
         param1.§>k§ = _loc2_;
         if(_loc2_.§;b§)
         {
            _loc2_.§;b§.§!+§ = _loc2_;
         }
         ++param1.§8r§;
      }
      
      public function §3J§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§>k§;
         while(_loc2_ && _loc2_.§&#§ != this)
         {
            _loc2_ = _loc2_.§;b§;
         }
         if(_loc2_.§7!@§)
         {
            _loc2_.§7!@§.§8P§ = _loc2_.§8P§;
         }
         if(_loc2_.§8P§)
         {
            _loc2_.§8P§.§7!@§ = _loc2_.§7!@§;
         }
         if(_loc2_.§;b§)
         {
            _loc2_.§;b§.§!+§ = _loc2_.§!+§;
         }
         if(_loc2_.§!+§)
         {
            _loc2_.§!+§.§;b§ = _loc2_.§;b§;
         }
         if(this.§;+§ == _loc2_)
         {
            this.§;+§ = _loc2_.§8P§;
         }
         if(param1.§>k§ == _loc2_)
         {
            param1.§>k§ = _loc2_.§;b§;
         }
         --param1.§8r§;
         --this.§ R§;
      }
      
      public function §5!&§() : void
      {
         while(this.§;+§)
         {
            this.§3J§(this.§;+§.§+I§);
         }
      }
      
      public function §`!R§() : b2Controller
      {
         return this.§0]§;
      }
      
      public function §`Y§() : b2World
      {
         return this.m_world;
      }
      
      public function §4!@§() : b2ControllerEdge
      {
         return this.§;+§;
      }
   }
}
