package §!!t§
{
   import § D§.b2Body;
   import § D§.b2DebugDraw;
   import § D§.b2TimeStep;
   import § D§.b2World;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7n§:b2Controller;
      
      b2internal var §4!7§:b2Controller;
      
      protected var §%H§:b2ControllerEdge;
      
      protected var §1!;§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §`!9§(param1:b2TimeStep) : void
      {
      }
      
      public function §?4§(param1:b2DebugDraw) : void
      {
      }
      
      public function §#H§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§=`§ = this;
         _loc2_.§=!§ = param1;
         _loc2_.§2!D§ = this.§%H§;
         _loc2_.§@3§ = null;
         this.§%H§ = _loc2_;
         if(_loc2_.§2!D§)
         {
            _loc2_.§2!D§.§@3§ = _loc2_;
         }
         ++this.§1!;§;
         _loc2_.§;!V§ = param1.§[U§;
         _loc2_.§5#§ = null;
         param1.§[U§ = _loc2_;
         if(_loc2_.§;!V§)
         {
            _loc2_.§;!V§.§5#§ = _loc2_;
         }
         ++param1.§7,§;
      }
      
      public function §2o§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§[U§;
         while(_loc2_ && _loc2_.§=`§ != this)
         {
            _loc2_ = _loc2_.§;!V§;
         }
         if(_loc2_.§@3§)
         {
            _loc2_.§@3§.§2!D§ = _loc2_.§2!D§;
         }
         if(_loc2_.§2!D§)
         {
            _loc2_.§2!D§.§@3§ = _loc2_.§@3§;
         }
         if(_loc2_.§;!V§)
         {
            _loc2_.§;!V§.§5#§ = _loc2_.§5#§;
         }
         if(_loc2_.§5#§)
         {
            _loc2_.§5#§.§;!V§ = _loc2_.§;!V§;
         }
         if(this.§%H§ == _loc2_)
         {
            this.§%H§ = _loc2_.§2!D§;
         }
         if(param1.§[U§ == _loc2_)
         {
            param1.§[U§ = _loc2_.§;!V§;
         }
         --param1.§7,§;
         --this.§1!;§;
      }
      
      public function §1!E§() : void
      {
         while(this.§%H§)
         {
            this.§2o§(this.§%H§.§=!§);
         }
      }
      
      public function §2!g§() : b2Controller
      {
         return this.§7n§;
      }
      
      public function §]`§() : b2World
      {
         return this.m_world;
      }
      
      public function §'!H§() : b2ControllerEdge
      {
         return this.§%H§;
      }
   }
}
