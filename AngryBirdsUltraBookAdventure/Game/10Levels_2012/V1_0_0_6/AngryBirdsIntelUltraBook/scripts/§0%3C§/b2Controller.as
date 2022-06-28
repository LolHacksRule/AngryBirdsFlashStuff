package §0<§
{
   import §#V§.b2Body;
   import §#V§.b2DebugDraw;
   import §#V§.b2TimeStep;
   import §#V§.b2World;
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §@o§:b2Controller;
      
      b2internal var §[2§:b2Controller;
      
      protected var §4!B§:b2ControllerEdge;
      
      protected var §2R§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §8y§(param1:b2TimeStep) : void
      {
      }
      
      public function §<9§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@O§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§-U§ = this;
         _loc2_.§?!t§ = param1;
         _loc2_.§%!y§ = this.§4!B§;
         _loc2_.include = null;
         this.§4!B§ = _loc2_;
         if(_loc2_.§%!y§)
         {
            _loc2_.§%!y§.include = _loc2_;
         }
         ++this.§2R§;
         _loc2_.§^!K§ = param1.§+!f§;
         _loc2_.override = null;
         param1.§+!f§ = _loc2_;
         if(_loc2_.§^!K§)
         {
            _loc2_.§^!K§.override = _loc2_;
         }
         ++param1.§2&§;
      }
      
      public function §[T§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§+!f§;
         while(_loc2_ && _loc2_.§-U§ != this)
         {
            _loc2_ = _loc2_.§^!K§;
         }
         if(_loc2_.include)
         {
            _loc2_.include.§%!y§ = _loc2_.§%!y§;
         }
         if(_loc2_.§%!y§)
         {
            _loc2_.§%!y§.include = _loc2_.include;
         }
         if(_loc2_.§^!K§)
         {
            _loc2_.§^!K§.override = _loc2_.override;
         }
         if(_loc2_.override)
         {
            _loc2_.override.§^!K§ = _loc2_.§^!K§;
         }
         if(this.§4!B§ == _loc2_)
         {
            this.§4!B§ = _loc2_.§%!y§;
         }
         if(param1.§+!f§ == _loc2_)
         {
            param1.§+!f§ = _loc2_.§^!K§;
         }
         --param1.§2&§;
         --this.§2R§;
      }
      
      public function §-6§() : void
      {
         while(this.§4!B§)
         {
            this.§[T§(this.§4!B§.§?!t§);
         }
      }
      
      public function §>H§() : b2Controller
      {
         return this.§@o§;
      }
      
      public function §@!"§() : b2World
      {
         return this.m_world;
      }
      
      public function §;1§() : b2ControllerEdge
      {
         return this.§4!B§;
      }
   }
}
