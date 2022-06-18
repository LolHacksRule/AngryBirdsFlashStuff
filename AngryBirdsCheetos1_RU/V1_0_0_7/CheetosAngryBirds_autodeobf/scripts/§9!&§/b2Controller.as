package §9!&§
{
   import §'!3§.b2internal;
   import §?0§.b2Body;
   import §?0§.b2DebugDraw;
   import §?0§.b2TimeStep;
   import §?0§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>!W§:b2Controller;
      
      b2internal var §"5§:b2Controller;
      
      protected var §^S§:b2ControllerEdge;
      
      protected var §&p§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §^!6§(param1:b2TimeStep) : void
      {
      }
      
      public function §"m§(param1:b2DebugDraw) : void
      {
      }
      
      public function §&k§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ !=§ = this;
         _loc2_.§&t§ = param1;
         _loc2_.§9?§ = this.§^S§;
         _loc2_.§0!_§ = null;
         this.§^S§ = _loc2_;
         if(_loc2_.§9?§)
         {
            _loc2_.§9?§.§0!_§ = _loc2_;
         }
         ++this.§&p§;
         _loc2_.§18§ = param1.§8!'§;
         _loc2_.§^x§ = null;
         param1.§8!'§ = _loc2_;
         if(_loc2_.§18§)
         {
            _loc2_.§18§.§^x§ = _loc2_;
         }
         ++param1.§9m§;
      }
      
      public function §+Y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§8!'§;
         while(_loc2_ && _loc2_.§ !=§ != this)
         {
            _loc2_ = _loc2_.§18§;
         }
         if(_loc2_.§0!_§)
         {
            _loc2_.§0!_§.§9?§ = _loc2_.§9?§;
         }
         if(_loc2_.§9?§)
         {
            _loc2_.§9?§.§0!_§ = _loc2_.§0!_§;
         }
         if(_loc2_.§18§)
         {
            _loc2_.§18§.§^x§ = _loc2_.§^x§;
         }
         if(_loc2_.§^x§)
         {
            _loc2_.§^x§.§18§ = _loc2_.§18§;
         }
         if(this.§^S§ == _loc2_)
         {
            this.§^S§ = _loc2_.§9?§;
         }
         if(param1.§8!'§ == _loc2_)
         {
            param1.§8!'§ = _loc2_.§18§;
         }
         --param1.§9m§;
         --this.§&p§;
      }
      
      public function §-r§() : void
      {
         while(this.§^S§)
         {
            this.§+Y§(this.§^S§.§&t§);
         }
      }
      
      public function §%W§() : b2Controller
      {
         return this.§>!W§;
      }
      
      public function §;+§() : b2World
      {
         return this.m_world;
      }
      
      public function §`i§() : b2ControllerEdge
      {
         return this.§^S§;
      }
   }
}
