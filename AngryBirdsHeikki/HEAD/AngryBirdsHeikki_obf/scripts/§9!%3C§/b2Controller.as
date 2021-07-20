package §9!<§
{
   import §+d§.b2Body;
   import §+d§.b2DebugDraw;
   import §+d§.b2TimeStep;
   import §+d§.b2World;
   import §6%§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §8A§:b2Controller;
      
      b2internal var §;h§:b2Controller;
      
      protected var §%X§:b2ControllerEdge;
      
      protected var §,1§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §7!F§(param1:b2TimeStep) : void
      {
      }
      
      public function §3T§(param1:b2DebugDraw) : void
      {
      }
      
      public function §+"§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§"1§ = this;
         _loc2_.§3!I§ = param1;
         _loc2_.§%Z§ = this.§%X§;
         _loc2_.§&!U§ = null;
         this.§%X§ = _loc2_;
         if(_loc2_.§%Z§)
         {
            _loc2_.§%Z§.§&!U§ = _loc2_;
         }
         ++this.§,1§;
         _loc2_.§'!,§ = param1.§7r§;
         _loc2_.§5§ = null;
         param1.§7r§ = _loc2_;
         if(_loc2_.§'!,§)
         {
            _loc2_.§'!,§.§5§ = _loc2_;
         }
         ++param1.§97§;
      }
      
      public function §;Y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§7r§;
         while(_loc2_ && _loc2_.§"1§ != this)
         {
            _loc2_ = _loc2_.§'!,§;
         }
         if(_loc2_.§&!U§)
         {
            _loc2_.§&!U§.§%Z§ = _loc2_.§%Z§;
         }
         if(_loc2_.§%Z§)
         {
            _loc2_.§%Z§.§&!U§ = _loc2_.§&!U§;
         }
         if(_loc2_.§'!,§)
         {
            _loc2_.§'!,§.§5§ = _loc2_.§5§;
         }
         if(_loc2_.§5§)
         {
            _loc2_.§5§.§'!,§ = _loc2_.§'!,§;
         }
         if(this.§%X§ == _loc2_)
         {
            this.§%X§ = _loc2_.§%Z§;
         }
         if(param1.§7r§ == _loc2_)
         {
            param1.§7r§ = _loc2_.§'!,§;
         }
         --param1.§97§;
         --this.§,1§;
      }
      
      public function §]!E§() : void
      {
         while(this.§%X§)
         {
            this.§;Y§(this.§%X§.§3!I§);
         }
      }
      
      public function §%;§() : b2Controller
      {
         return this.§8A§;
      }
      
      public function §`o§() : b2World
      {
         return this.m_world;
      }
      
      public function §!E§() : b2ControllerEdge
      {
         return this.§%X§;
      }
   }
}
