package §_-YZ§
{
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   import §_-aU§.b2DebugDraw;
   import §_-aU§.b2TimeStep;
   import §_-aU§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-oz§:b2Controller;
      
      b2internal var §_-021§:b2Controller;
      
      protected var §_-WS§:b2ControllerEdge;
      
      protected var §_-F9§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-wu§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-xw§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-gW§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-03s§ = this;
         _loc2_.§_-mV§ = param1;
         _loc2_.§_-Vq§ = this.§_-WS§;
         _loc2_.§_-qA§ = null;
         this.§_-WS§ = _loc2_;
         if(_loc2_.§_-Vq§)
         {
            _loc2_.§_-Vq§.§_-qA§ = _loc2_;
         }
         ++this.§_-F9§;
         _loc2_.§_-0AE§ = param1.§_-DZ§;
         _loc2_.§_-SP§ = null;
         param1.§_-DZ§ = _loc2_;
         if(_loc2_.§_-0AE§)
         {
            _loc2_.§_-0AE§.§_-SP§ = _loc2_;
         }
         ++param1.§_-04s§;
      }
      
      public function §_-kG§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-DZ§;
         while(_loc2_ && _loc2_.§_-03s§ != this)
         {
            _loc2_ = _loc2_.§_-0AE§;
         }
         if(_loc2_.§_-qA§)
         {
            _loc2_.§_-qA§.§_-Vq§ = _loc2_.§_-Vq§;
         }
         if(_loc2_.§_-Vq§)
         {
            _loc2_.§_-Vq§.§_-qA§ = _loc2_.§_-qA§;
         }
         if(_loc2_.§_-0AE§)
         {
            _loc2_.§_-0AE§.§_-SP§ = _loc2_.§_-SP§;
         }
         if(_loc2_.§_-SP§)
         {
            _loc2_.§_-SP§.§_-0AE§ = _loc2_.§_-0AE§;
         }
         if(this.§_-WS§ == _loc2_)
         {
            this.§_-WS§ = _loc2_.§_-Vq§;
         }
         if(param1.§_-DZ§ == _loc2_)
         {
            param1.§_-DZ§ = _loc2_.§_-0AE§;
         }
         --param1.§_-04s§;
         --this.§_-F9§;
      }
      
      public function §_-p7§() : void
      {
         while(this.§_-WS§)
         {
            this.§_-kG§(this.§_-WS§.§_-mV§);
         }
      }
      
      public function §_-02g§() : b2Controller
      {
         return this.§_-oz§;
      }
      
      public function §_-ZS§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-JW§() : b2ControllerEdge
      {
         return this.§_-WS§;
      }
   }
}
