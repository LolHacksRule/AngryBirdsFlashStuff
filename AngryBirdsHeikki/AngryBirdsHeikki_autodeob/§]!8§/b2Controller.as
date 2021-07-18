package §]!8§
{
   import §3!R§.b2Body;
   import §3!R§.b2DebugDraw;
   import §3!R§.b2TimeStep;
   import §3!R§.b2World;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>W§:b2Controller;
      
      b2internal var §8s§:b2Controller;
      
      protected var §^`§:b2ControllerEdge;
      
      protected var §7!6§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §00§(param1:b2TimeStep) : void
      {
      }
      
      public function §];§(param1:b2DebugDraw) : void
      {
      }
      
      public function §']§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§]O§ = this;
         _loc2_.§3K§ = param1;
         _loc2_.§+U§ = this.§^`§;
         _loc2_.§,!R§ = null;
         this.§^`§ = _loc2_;
         if(_loc2_.§+U§)
         {
            _loc2_.§+U§.§,!R§ = _loc2_;
         }
         ++this.§7!6§;
         _loc2_.§&e§ = param1.§2w§;
         _loc2_.§'%§ = null;
         param1.§2w§ = _loc2_;
         if(_loc2_.§&e§)
         {
            _loc2_.§&e§.§'%§ = _loc2_;
         }
         ++param1.§'D§;
      }
      
      public function §^%§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§2w§;
         while(_loc2_ && _loc2_.§]O§ != this)
         {
            _loc2_ = _loc2_.§&e§;
         }
         if(_loc2_.§,!R§)
         {
            _loc2_.§,!R§.§+U§ = _loc2_.§+U§;
         }
         if(_loc2_.§+U§)
         {
            _loc2_.§+U§.§,!R§ = _loc2_.§,!R§;
         }
         if(_loc2_.§&e§)
         {
            _loc2_.§&e§.§'%§ = _loc2_.§'%§;
         }
         if(_loc2_.§'%§)
         {
            _loc2_.§'%§.§&e§ = _loc2_.§&e§;
         }
         if(this.§^`§ == _loc2_)
         {
            this.§^`§ = _loc2_.§+U§;
         }
         if(param1.§2w§ == _loc2_)
         {
            param1.§2w§ = _loc2_.§&e§;
         }
         --param1.§'D§;
         --this.§7!6§;
      }
      
      public function §?P§() : void
      {
         while(this.§^`§)
         {
            this.§^%§(this.§^`§.§3K§);
         }
      }
      
      public function §5!J§() : b2Controller
      {
         return this.§>W§;
      }
      
      public function §+&§() : b2World
      {
         return this.m_world;
      }
      
      public function §4!Z§() : b2ControllerEdge
      {
         return this.§^`§;
      }
   }
}
