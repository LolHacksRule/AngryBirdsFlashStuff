package §5G§
{
   import §7!I§.b2internal;
   import §>"_§.b2Body;
   import §>"_§.b2DebugDraw;
   import §>"_§.b2TimeStep;
   import §>"_§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §?"Z§:b2Controller;
      
      b2internal var §%" §:b2Controller;
      
      protected var §>'§:b2ControllerEdge;
      
      protected var §'"e§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §%"U§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!"d§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§]!D§ = this;
         _loc2_.body = param1;
         _loc2_.§7!'§ = this.§>'§;
         _loc2_.§9S§ = null;
         this.§>'§ = _loc2_;
         if(_loc2_.§7!'§)
         {
            _loc2_.§7!'§.§9S§ = _loc2_;
         }
         ++this.§'"e§;
         _loc2_.§^F§ = param1.§0"7§;
         _loc2_.§%!T§ = null;
         param1.§0"7§ = _loc2_;
         if(_loc2_.§^F§)
         {
            _loc2_.§^F§.§%!T§ = _loc2_;
         }
         ++param1.§@"0§;
      }
      
      public function §[u§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§0"7§;
         while(_loc2_ && _loc2_.§]!D§ != this)
         {
            _loc2_ = _loc2_.§^F§;
         }
         if(_loc2_.§9S§)
         {
            _loc2_.§9S§.§7!'§ = _loc2_.§7!'§;
         }
         if(_loc2_.§7!'§)
         {
            _loc2_.§7!'§.§9S§ = _loc2_.§9S§;
         }
         if(_loc2_.§^F§)
         {
            _loc2_.§^F§.§%!T§ = _loc2_.§%!T§;
         }
         if(_loc2_.§%!T§)
         {
            _loc2_.§%!T§.§^F§ = _loc2_.§^F§;
         }
         if(this.§>'§ == _loc2_)
         {
            this.§>'§ = _loc2_.§7!'§;
         }
         if(param1.§0"7§ == _loc2_)
         {
            param1.§0"7§ = _loc2_.§^F§;
         }
         --param1.§@"0§;
         --this.§'"e§;
      }
      
      public function §?H§() : void
      {
         while(this.§>'§)
         {
            this.§[u§(this.§>'§.body);
         }
      }
      
      public function §^a§() : b2Controller
      {
         return this.§?"Z§;
      }
      
      public function §import§() : b2World
      {
         return this.m_world;
      }
      
      public function §>#7§() : b2ControllerEdge
      {
         return this.§>'§;
      }
   }
}
