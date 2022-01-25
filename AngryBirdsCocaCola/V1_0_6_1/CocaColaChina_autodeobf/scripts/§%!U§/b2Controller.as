package §%!U§
{
   import § y§.b2Body;
   import § y§.b2DebugDraw;
   import § y§.b2TimeStep;
   import § y§.b2World;
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §&!+§:b2Controller;
      
      b2internal var §7G§:b2Controller;
      
      protected var §=!^§:b2ControllerEdge;
      
      protected var §=z§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §-l§(param1:b2TimeStep) : void
      {
      }
      
      public function §9c§(param1:b2DebugDraw) : void
      {
      }
      
      public function §+r§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§0!9§ = this;
         _loc2_.§2g§ = param1;
         _loc2_.§"&§ = this.§=!^§;
         _loc2_.§"q§ = null;
         this.§=!^§ = _loc2_;
         if(_loc2_.§"&§)
         {
            _loc2_.§"&§.§"q§ = _loc2_;
         }
         ++this.§=z§;
         _loc2_.§@!1§ = param1.§8!"§;
         _loc2_.§%!<§ = null;
         param1.§8!"§ = _loc2_;
         if(_loc2_.§@!1§)
         {
            _loc2_.§@!1§.§%!<§ = _loc2_;
         }
         ++param1.§0!^§;
      }
      
      public function §?S§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§8!"§;
         while(_loc2_ && _loc2_.§0!9§ != this)
         {
            _loc2_ = _loc2_.§@!1§;
         }
         if(_loc2_.§"q§)
         {
            _loc2_.§"q§.§"&§ = _loc2_.§"&§;
         }
         if(_loc2_.§"&§)
         {
            _loc2_.§"&§.§"q§ = _loc2_.§"q§;
         }
         if(_loc2_.§@!1§)
         {
            _loc2_.§@!1§.§%!<§ = _loc2_.§%!<§;
         }
         if(_loc2_.§%!<§)
         {
            _loc2_.§%!<§.§@!1§ = _loc2_.§@!1§;
         }
         if(this.§=!^§ == _loc2_)
         {
            this.§=!^§ = _loc2_.§"&§;
         }
         if(param1.§8!"§ == _loc2_)
         {
            param1.§8!"§ = _loc2_.§@!1§;
         }
         --param1.§0!^§;
         --this.§=z§;
      }
      
      public function §3'§() : void
      {
         while(this.§=!^§)
         {
            this.§?S§(this.§=!^§.§2g§);
         }
      }
      
      public function §3!I§() : b2Controller
      {
         return this.§&!+§;
      }
      
      public function §!c§() : b2World
      {
         return this.m_world;
      }
      
      public function §3G§() : b2ControllerEdge
      {
         return this.§=!^§;
      }
   }
}
