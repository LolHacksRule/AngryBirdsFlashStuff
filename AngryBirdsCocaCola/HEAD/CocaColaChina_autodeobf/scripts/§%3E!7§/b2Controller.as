package §>!7§
{
   import §3f§.b2Body;
   import §3f§.b2DebugDraw;
   import §3f§.b2TimeStep;
   import §3f§.b2World;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §',§:b2Controller;
      
      b2internal var §<`§:b2Controller;
      
      protected var §!!R§:b2ControllerEdge;
      
      protected var §0]§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §'j§(param1:b2TimeStep) : void
      {
      }
      
      public function §=!>§(param1:b2DebugDraw) : void
      {
      }
      
      public function §9v§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§>o§ = this;
         _loc2_.§+6§ = param1;
         _loc2_.§5!'§ = this.§!!R§;
         _loc2_.§,[§ = null;
         this.§!!R§ = _loc2_;
         if(_loc2_.§5!'§)
         {
            _loc2_.§5!'§.§,[§ = _loc2_;
         }
         ++this.§0]§;
         _loc2_.§,!$§ = param1.§ a§;
         _loc2_.§ !J§ = null;
         param1.§ a§ = _loc2_;
         if(_loc2_.§,!$§)
         {
            _loc2_.§,!$§.§ !J§ = _loc2_;
         }
         ++param1.§'q§;
      }
      
      public function §"!7§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§ a§;
         while(_loc2_ && _loc2_.§>o§ != this)
         {
            _loc2_ = _loc2_.§,!$§;
         }
         if(_loc2_.§,[§)
         {
            _loc2_.§,[§.§5!'§ = _loc2_.§5!'§;
         }
         if(_loc2_.§5!'§)
         {
            _loc2_.§5!'§.§,[§ = _loc2_.§,[§;
         }
         if(_loc2_.§,!$§)
         {
            _loc2_.§,!$§.§ !J§ = _loc2_.§ !J§;
         }
         if(_loc2_.§ !J§)
         {
            _loc2_.§ !J§.§,!$§ = _loc2_.§,!$§;
         }
         if(this.§!!R§ == _loc2_)
         {
            this.§!!R§ = _loc2_.§5!'§;
         }
         if(param1.§ a§ == _loc2_)
         {
            param1.§ a§ = _loc2_.§,!$§;
         }
         --param1.§'q§;
         --this.§0]§;
      }
      
      public function §-X§() : void
      {
         while(this.§!!R§)
         {
            this.§"!7§(this.§!!R§.§+6§);
         }
      }
      
      public function § O§() : b2Controller
      {
         return this.§',§;
      }
      
      public function §2&§() : b2World
      {
         return this.m_world;
      }
      
      public function §3!!§() : b2ControllerEdge
      {
         return this.§!!R§;
      }
   }
}
