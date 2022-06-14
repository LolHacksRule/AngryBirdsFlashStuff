package §<!c§
{
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2DebugDraw;
   import §48§.b2TimeStep;
   import §48§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §%"@§:b2Controller;
      
      b2internal var §-!Q§:b2Controller;
      
      protected var §'!7§:b2ControllerEdge;
      
      protected var §]!M§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4$§(param1:b2TimeStep) : void
      {
      }
      
      public function §!Y§(param1:b2DebugDraw) : void
      {
      }
      
      public function §53§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§'" § = this;
         _loc2_.§ Y§ = param1;
         _loc2_.§<!H§ = this.§'!7§;
         _loc2_.§3,§ = null;
         this.§'!7§ = _loc2_;
         if(_loc2_.§<!H§)
         {
            _loc2_.§<!H§.§3,§ = _loc2_;
         }
         ++this.§]!M§;
         _loc2_.§'0§ = param1.§+q§;
         _loc2_.§9!W§ = null;
         param1.§+q§ = _loc2_;
         if(_loc2_.§'0§)
         {
            _loc2_.§'0§.§9!W§ = _loc2_;
         }
         ++param1.§,"4§;
      }
      
      public function §<V§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§+q§;
         while(_loc2_ && _loc2_.§'" § != this)
         {
            _loc2_ = _loc2_.§'0§;
         }
         if(_loc2_.§3,§)
         {
            _loc2_.§3,§.§<!H§ = _loc2_.§<!H§;
         }
         if(_loc2_.§<!H§)
         {
            _loc2_.§<!H§.§3,§ = _loc2_.§3,§;
         }
         if(_loc2_.§'0§)
         {
            _loc2_.§'0§.§9!W§ = _loc2_.§9!W§;
         }
         if(_loc2_.§9!W§)
         {
            _loc2_.§9!W§.§'0§ = _loc2_.§'0§;
         }
         if(this.§'!7§ == _loc2_)
         {
            this.§'!7§ = _loc2_.§<!H§;
         }
         if(param1.§+q§ == _loc2_)
         {
            param1.§+q§ = _loc2_.§'0§;
         }
         --param1.§,"4§;
         --this.§]!M§;
      }
      
      public function §;!R§() : void
      {
         while(this.§'!7§)
         {
            this.§<V§(this.§'!7§.§ Y§);
         }
      }
      
      public function §8!+§() : b2Controller
      {
         return this.§%"@§;
      }
      
      public function §%!y§() : b2World
      {
         return this.m_world;
      }
      
      public function §8F§() : b2ControllerEdge
      {
         return this.§'!7§;
      }
   }
}
