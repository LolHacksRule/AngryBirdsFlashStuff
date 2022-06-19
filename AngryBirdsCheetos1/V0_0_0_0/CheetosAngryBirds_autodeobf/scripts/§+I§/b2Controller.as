package §+I§
{
   import §&!"§.b2Body;
   import §&!"§.b2DebugDraw;
   import §&!"§.b2TimeStep;
   import §&!"§.b2World;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0]§:b2Controller;
      
      b2internal var §3U§:b2Controller;
      
      protected var § R§:b2ControllerEdge;
      
      protected var §-!N§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §<!P§(param1:b2TimeStep) : void
      {
      }
      
      public function §2!9§(param1:b2DebugDraw) : void
      {
      }
      
      public function §3J§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§&#§ = this;
         _loc2_.§7!@§ = param1;
         _loc2_.§!+§ = this.§ R§;
         _loc2_.§8P§ = null;
         this.§ R§ = _loc2_;
         if(_loc2_.§!+§)
         {
            _loc2_.§!+§.§8P§ = _loc2_;
         }
         ++this.§-!N§;
         _loc2_.§%;§ = param1.§8r§;
         _loc2_.§;b§ = null;
         param1.§8r§ = _loc2_;
         if(_loc2_.§%;§)
         {
            _loc2_.§%;§.§;b§ = _loc2_;
         }
         ++param1.§5&§;
      }
      
      public function §5!&§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§8r§;
         while(_loc2_ && _loc2_.§&#§ != this)
         {
            _loc2_ = _loc2_.§%;§;
         }
         if(_loc2_.§8P§)
         {
            _loc2_.§8P§.§!+§ = _loc2_.§!+§;
         }
         if(_loc2_.§!+§)
         {
            _loc2_.§!+§.§8P§ = _loc2_.§8P§;
         }
         if(_loc2_.§%;§)
         {
            _loc2_.§%;§.§;b§ = _loc2_.§;b§;
         }
         if(_loc2_.§;b§)
         {
            _loc2_.§;b§.§%;§ = _loc2_.§%;§;
         }
         if(this.§ R§ == _loc2_)
         {
            this.§ R§ = _loc2_.§!+§;
         }
         if(param1.§8r§ == _loc2_)
         {
            param1.§8r§ = _loc2_.§%;§;
         }
         --param1.§5&§;
         --this.§-!N§;
      }
      
      public function §`Y§() : void
      {
         while(this.§ R§)
         {
            this.§5!&§(this.§ R§.§7!@§);
         }
      }
      
      public function §`!R§() : b2Controller
      {
         return this.§0]§;
      }
      
      public function §4!@§() : b2World
      {
         return this.m_world;
      }
      
      public function §;+§() : b2ControllerEdge
      {
         return this.§ R§;
      }
   }
}
