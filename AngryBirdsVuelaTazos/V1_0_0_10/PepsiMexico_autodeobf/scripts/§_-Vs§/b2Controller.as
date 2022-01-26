package §_-Vs§
{
   import §_-rg§.b2Body;
   import §_-rg§.b2DebugDraw;
   import §_-rg§.b2TimeStep;
   import §_-rg§.b2World;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-AX§:b2Controller;
      
      b2internal var §_-M9§:b2Controller;
      
      protected var §_-38§:b2ControllerEdge;
      
      protected var §_-FG§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-h0§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-tG§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-T1§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-gT§ = this;
         _loc2_.§_-Gz§ = param1;
         _loc2_.§_-Yb§ = this.§_-38§;
         _loc2_.§_-ss§ = null;
         this.§_-38§ = _loc2_;
         if(_loc2_.§_-Yb§)
         {
            _loc2_.§_-Yb§.§_-ss§ = _loc2_;
         }
         ++this.§_-FG§;
         _loc2_.§_-EK§ = param1.§_-wG§;
         _loc2_.§_-Ch§ = null;
         param1.§_-wG§ = _loc2_;
         if(_loc2_.§_-EK§)
         {
            _loc2_.§_-EK§.§_-Ch§ = _loc2_;
         }
         ++param1.§_-OP§;
      }
      
      public function §_-D7§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-wG§;
         while(_loc2_ && _loc2_.§_-gT§ != this)
         {
            _loc2_ = _loc2_.§_-EK§;
         }
         if(_loc2_.§_-ss§)
         {
            _loc2_.§_-ss§.§_-Yb§ = _loc2_.§_-Yb§;
         }
         if(_loc2_.§_-Yb§)
         {
            _loc2_.§_-Yb§.§_-ss§ = _loc2_.§_-ss§;
         }
         if(_loc2_.§_-EK§)
         {
            _loc2_.§_-EK§.§_-Ch§ = _loc2_.§_-Ch§;
         }
         if(_loc2_.§_-Ch§)
         {
            _loc2_.§_-Ch§.§_-EK§ = _loc2_.§_-EK§;
         }
         if(this.§_-38§ == _loc2_)
         {
            this.§_-38§ = _loc2_.§_-Yb§;
         }
         if(param1.§_-wG§ == _loc2_)
         {
            param1.§_-wG§ = _loc2_.§_-EK§;
         }
         --param1.§_-OP§;
         --this.§_-FG§;
      }
      
      public function §_-H0§() : void
      {
         while(this.§_-38§)
         {
            this.§_-D7§(this.§_-38§.§_-Gz§);
         }
      }
      
      public function §_-mR§() : b2Controller
      {
         return this.§_-AX§;
      }
      
      public function §_-9U§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-b3§() : b2ControllerEdge
      {
         return this.§_-38§;
      }
   }
}
