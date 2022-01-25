package §3!^§
{
   import §<!L§.b2Body;
   import §<!L§.b2DebugDraw;
   import §<!L§.b2TimeStep;
   import §<!L§.b2World;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §!!U§:b2Controller;
      
      b2internal var §4=§:b2Controller;
      
      protected var §3!L§:b2ControllerEdge;
      
      protected var §7D§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §31§(param1:b2TimeStep) : void
      {
      }
      
      public function §-A§(param1:b2DebugDraw) : void
      {
      }
      
      public function §;!N§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§3!W§ = this;
         _loc2_.§7N§ = param1;
         _loc2_.§]i§ = this.§3!L§;
         _loc2_.§?N§ = null;
         this.§3!L§ = _loc2_;
         if(_loc2_.§]i§)
         {
            _loc2_.§]i§.§?N§ = _loc2_;
         }
         ++this.§7D§;
         _loc2_.§57§ = param1.§;a§;
         _loc2_.§@!Z§ = null;
         param1.§;a§ = _loc2_;
         if(_loc2_.§57§)
         {
            _loc2_.§57§.§@!Z§ = _loc2_;
         }
         ++param1.§6?§;
      }
      
      public function §'H§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§;a§;
         while(_loc2_ && _loc2_.§3!W§ != this)
         {
            _loc2_ = _loc2_.§57§;
         }
         if(_loc2_.§?N§)
         {
            _loc2_.§?N§.§]i§ = _loc2_.§]i§;
         }
         if(_loc2_.§]i§)
         {
            _loc2_.§]i§.§?N§ = _loc2_.§?N§;
         }
         if(_loc2_.§57§)
         {
            _loc2_.§57§.§@!Z§ = _loc2_.§@!Z§;
         }
         if(_loc2_.§@!Z§)
         {
            _loc2_.§@!Z§.§57§ = _loc2_.§57§;
         }
         if(this.§3!L§ == _loc2_)
         {
            this.§3!L§ = _loc2_.§]i§;
         }
         if(param1.§;a§ == _loc2_)
         {
            param1.§;a§ = _loc2_.§57§;
         }
         --param1.§6?§;
         --this.§7D§;
      }
      
      public function §^!V§() : void
      {
         while(this.§3!L§)
         {
            this.§'H§(this.§3!L§.§7N§);
         }
      }
      
      public function §4"§() : b2Controller
      {
         return this.§!!U§;
      }
      
      public function §]!I§() : b2World
      {
         return this.m_world;
      }
      
      public function §1q§() : b2ControllerEdge
      {
         return this.§3!L§;
      }
   }
}
