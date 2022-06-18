package §!!L§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2DebugDraw;
   import §9t§.b2TimeStep;
   import §9t§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §%m§:b2Controller;
      
      b2internal var §&J§:b2Controller;
      
      protected var §5g§:b2ControllerEdge;
      
      protected var §&y§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §'!'§(param1:b2TimeStep) : void
      {
      }
      
      public function §9!6§(param1:b2DebugDraw) : void
      {
      }
      
      public function §9!P§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§;§ = this;
         _loc2_.§1-§ = param1;
         _loc2_.§6!5§ = this.§5g§;
         _loc2_.§6!F§ = null;
         this.§5g§ = _loc2_;
         if(_loc2_.§6!5§)
         {
            _loc2_.§6!5§.§6!F§ = _loc2_;
         }
         ++this.§&y§;
         _loc2_.§&!F§ = param1.§,!+§;
         _loc2_.§<_§ = null;
         param1.§,!+§ = _loc2_;
         if(_loc2_.§&!F§)
         {
            _loc2_.§&!F§.§<_§ = _loc2_;
         }
         ++param1.§7%§;
      }
      
      public function §"!O§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,!+§;
         while(_loc2_ && _loc2_.§;§ != this)
         {
            _loc2_ = _loc2_.§&!F§;
         }
         if(_loc2_.§6!F§)
         {
            _loc2_.§6!F§.§6!5§ = _loc2_.§6!5§;
         }
         if(_loc2_.§6!5§)
         {
            _loc2_.§6!5§.§6!F§ = _loc2_.§6!F§;
         }
         if(_loc2_.§&!F§)
         {
            _loc2_.§&!F§.§<_§ = _loc2_.§<_§;
         }
         if(_loc2_.§<_§)
         {
            _loc2_.§<_§.§&!F§ = _loc2_.§&!F§;
         }
         if(this.§5g§ == _loc2_)
         {
            this.§5g§ = _loc2_.§6!5§;
         }
         if(param1.§,!+§ == _loc2_)
         {
            param1.§,!+§ = _loc2_.§&!F§;
         }
         --param1.§7%§;
         --this.§&y§;
      }
      
      public function §-N§() : void
      {
         while(this.§5g§)
         {
            this.§"!O§(this.§5g§.§1-§);
         }
      }
      
      public function §&!V§() : b2Controller
      {
         return this.§%m§;
      }
      
      public function §]i§() : b2World
      {
         return this.m_world;
      }
      
      public function §;!S§() : b2ControllerEdge
      {
         return this.§5g§;
      }
   }
}
