package §_-q4§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2DebugDraw;
   import §_-qW§.b2TimeStep;
   import §_-qW§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-4b§:b2Controller;
      
      b2internal var §_-ft§:b2Controller;
      
      protected var §_-Sx§:b2ControllerEdge;
      
      protected var §_-fQ§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-1I§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-EE§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-cX§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-eR§ = this;
         _loc2_.§_-HV§ = param1;
         _loc2_.§_-O1§ = this.§_-Sx§;
         _loc2_.§_-ZP§ = null;
         this.§_-Sx§ = _loc2_;
         if(_loc2_.§_-O1§)
         {
            _loc2_.§_-O1§.§_-ZP§ = _loc2_;
         }
         ++this.§_-fQ§;
         _loc2_.§_-Sr§ = param1.§_-3d§;
         _loc2_.§_-YA§ = null;
         param1.§_-3d§ = _loc2_;
         if(_loc2_.§_-Sr§)
         {
            _loc2_.§_-Sr§.§_-YA§ = _loc2_;
         }
         ++param1.§_-ag§;
      }
      
      public function §_-op§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-3d§;
         while(_loc2_ && _loc2_.§_-eR§ != this)
         {
            _loc2_ = _loc2_.§_-Sr§;
         }
         if(_loc2_.§_-ZP§)
         {
            _loc2_.§_-ZP§.§_-O1§ = _loc2_.§_-O1§;
         }
         if(_loc2_.§_-O1§)
         {
            _loc2_.§_-O1§.§_-ZP§ = _loc2_.§_-ZP§;
         }
         if(_loc2_.§_-Sr§)
         {
            _loc2_.§_-Sr§.§_-YA§ = _loc2_.§_-YA§;
         }
         if(_loc2_.§_-YA§)
         {
            _loc2_.§_-YA§.§_-Sr§ = _loc2_.§_-Sr§;
         }
         if(this.§_-Sx§ == _loc2_)
         {
            this.§_-Sx§ = _loc2_.§_-O1§;
         }
         if(param1.§_-3d§ == _loc2_)
         {
            param1.§_-3d§ = _loc2_.§_-Sr§;
         }
         --param1.§_-ag§;
         --this.§_-fQ§;
      }
      
      public function §_-OH§() : void
      {
         while(this.§_-Sx§)
         {
            this.§_-op§(this.§_-Sx§.§_-HV§);
         }
      }
      
      public function §_-lA§() : b2Controller
      {
         return this.§_-4b§;
      }
      
      public function §_-dV§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-P§() : b2ControllerEdge
      {
         return this.§_-Sx§;
      }
   }
}
