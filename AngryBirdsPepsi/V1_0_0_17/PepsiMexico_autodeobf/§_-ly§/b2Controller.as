package §_-ly§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2DebugDraw;
   import §_-Iw§.b2TimeStep;
   import §_-Iw§.b2World;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-NA§:b2Controller;
      
      b2internal var §_-VL§:b2Controller;
      
      protected var §_-qV§:b2ControllerEdge;
      
      protected var §_-Ww§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-bf§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-q0§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-J2§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-Gk§ = this;
         _loc2_.§_-zo§ = param1;
         _loc2_.§_-kM§ = this.§_-qV§;
         _loc2_.§_-kn§ = null;
         this.§_-qV§ = _loc2_;
         if(_loc2_.§_-kM§)
         {
            _loc2_.§_-kM§.§_-kn§ = _loc2_;
         }
         ++this.§_-Ww§;
         _loc2_.§_-Ok§ = param1.§_-C2§;
         _loc2_.§_-NU§ = null;
         param1.§_-C2§ = _loc2_;
         if(_loc2_.§_-Ok§)
         {
            _loc2_.§_-Ok§.§_-NU§ = _loc2_;
         }
         ++param1.§_-Tf§;
      }
      
      public function §_-4E§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-C2§;
         while(_loc2_ && _loc2_.§_-Gk§ != this)
         {
            _loc2_ = _loc2_.§_-Ok§;
         }
         if(_loc2_.§_-kn§)
         {
            _loc2_.§_-kn§.§_-kM§ = _loc2_.§_-kM§;
         }
         if(_loc2_.§_-kM§)
         {
            _loc2_.§_-kM§.§_-kn§ = _loc2_.§_-kn§;
         }
         if(_loc2_.§_-Ok§)
         {
            _loc2_.§_-Ok§.§_-NU§ = _loc2_.§_-NU§;
         }
         if(_loc2_.§_-NU§)
         {
            _loc2_.§_-NU§.§_-Ok§ = _loc2_.§_-Ok§;
         }
         if(this.§_-qV§ == _loc2_)
         {
            this.§_-qV§ = _loc2_.§_-kM§;
         }
         if(param1.§_-C2§ == _loc2_)
         {
            param1.§_-C2§ = _loc2_.§_-Ok§;
         }
         --param1.§_-Tf§;
         --this.§_-Ww§;
      }
      
      public function §_-jU§() : void
      {
         while(this.§_-qV§)
         {
            this.§_-4E§(this.§_-qV§.§_-zo§);
         }
      }
      
      public function §_-tx§() : b2Controller
      {
         return this.§_-NA§;
      }
      
      public function §_-MR§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-kA§() : b2ControllerEdge
      {
         return this.§_-qV§;
      }
   }
}
