package §?D§
{
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   import §6"1§.b2DebugDraw;
   import §6"1§.b2TimeStep;
   import §6"1§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §?!g§:b2Controller;
      
      b2internal var §;<§:b2Controller;
      
      protected var §6t§:b2ControllerEdge;
      
      protected var §;0§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §=m§(param1:b2TimeStep) : void
      {
      }
      
      public function §5""§(param1:b2DebugDraw) : void
      {
      }
      
      public function §'!$§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§5-§ = this;
         _loc2_.§&"L§ = param1;
         _loc2_.§'l§ = this.§6t§;
         _loc2_.§`!f§ = null;
         this.§6t§ = _loc2_;
         if(_loc2_.§'l§)
         {
            _loc2_.§'l§.§`!f§ = _loc2_;
         }
         ++this.§;0§;
         _loc2_.§@!'§ = param1.§]!5§;
         _loc2_.§#!B§ = null;
         param1.§]!5§ = _loc2_;
         if(_loc2_.§@!'§)
         {
            _loc2_.§@!'§.§#!B§ = _loc2_;
         }
         ++param1.§>+§;
      }
      
      public function §!!z§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§]!5§;
         while(_loc2_ && _loc2_.§5-§ != this)
         {
            _loc2_ = _loc2_.§@!'§;
         }
         if(_loc2_.§`!f§)
         {
            _loc2_.§`!f§.§'l§ = _loc2_.§'l§;
         }
         if(_loc2_.§'l§)
         {
            _loc2_.§'l§.§`!f§ = _loc2_.§`!f§;
         }
         if(_loc2_.§@!'§)
         {
            _loc2_.§@!'§.§#!B§ = _loc2_.§#!B§;
         }
         if(_loc2_.§#!B§)
         {
            _loc2_.§#!B§.§@!'§ = _loc2_.§@!'§;
         }
         if(this.§6t§ == _loc2_)
         {
            this.§6t§ = _loc2_.§'l§;
         }
         if(param1.§]!5§ == _loc2_)
         {
            param1.§]!5§ = _loc2_.§@!'§;
         }
         --param1.§>+§;
         --this.§;0§;
      }
      
      public function §7!P§() : void
      {
         while(this.§6t§)
         {
            this.§!!z§(this.§6t§.§&"L§);
         }
      }
      
      public function §>!v§() : b2Controller
      {
         return this.§?!g§;
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      public function §4"-§() : b2ControllerEdge
      {
         return this.§6t§;
      }
   }
}
