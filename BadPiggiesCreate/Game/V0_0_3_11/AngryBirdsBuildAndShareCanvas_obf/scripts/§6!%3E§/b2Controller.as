package §6!>§
{
   import §7z§.b2Body;
   import §7z§.b2DebugDraw;
   import §7z§.b2TimeStep;
   import §7z§.b2World;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7t§:b2Controller;
      
      b2internal var §;!F§:b2Controller;
      
      protected var §]"8§:b2ControllerEdge;
      
      protected var §0!1§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §"M§(param1:b2TimeStep) : void
      {
      }
      
      public function §]!"§(param1:b2DebugDraw) : void
      {
      }
      
      public function §9"7§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§6!#§ = this;
         _loc2_.§!!1§ = param1;
         _loc2_.§8k§ = this.§]"8§;
         _loc2_.§,!1§ = null;
         this.§]"8§ = _loc2_;
         if(_loc2_.§8k§)
         {
            _loc2_.§8k§.§,!1§ = _loc2_;
         }
         ++this.§0!1§;
         _loc2_.§do § = param1.§1u§;
         _loc2_.§]W§ = null;
         param1.§1u§ = _loc2_;
         if(_loc2_.§do §)
         {
            _loc2_.§do §.§]W§ = _loc2_;
         }
         ++param1.§^!-§;
      }
      
      public function §!!y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1u§;
         while(_loc2_ && _loc2_.§6!#§ != this)
         {
            _loc2_ = _loc2_.§do §;
         }
         if(_loc2_.§,!1§)
         {
            _loc2_.§,!1§.§8k§ = _loc2_.§8k§;
         }
         if(_loc2_.§8k§)
         {
            _loc2_.§8k§.§,!1§ = _loc2_.§,!1§;
         }
         if(_loc2_.§do §)
         {
            _loc2_.§do §.§]W§ = _loc2_.§]W§;
         }
         if(_loc2_.§]W§)
         {
            _loc2_.§]W§.§do § = _loc2_.§do §;
         }
         if(this.§]"8§ == _loc2_)
         {
            this.§]"8§ = _loc2_.§8k§;
         }
         if(param1.§1u§ == _loc2_)
         {
            param1.§1u§ = _loc2_.§do §;
         }
         --param1.§^!-§;
         --this.§0!1§;
      }
      
      public function §"]§() : void
      {
         while(this.§]"8§)
         {
            this.§!!y§(this.§]"8§.§!!1§);
         }
      }
      
      public function §9!P§() : b2Controller
      {
         return this.§7t§;
      }
      
      public function §%@§() : b2World
      {
         return this.m_world;
      }
      
      public function §+4§() : b2ControllerEdge
      {
         return this.§]"8§;
      }
   }
}
