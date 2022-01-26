package §_-lH§
{
   import §_-b4§.b2internal;
   import §try§.b2Body;
   import §try§.b2DebugDraw;
   import §try§.b2TimeStep;
   import §try§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-QK§:b2Controller;
      
      b2internal var §_-o2§:b2Controller;
      
      protected var §_-dC§:b2ControllerEdge;
      
      protected var §_-Is§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-bY§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-GC§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-1y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-Og§ = this;
         _loc2_.§_-XF§ = param1;
         _loc2_.§_-g7§ = this.§_-dC§;
         _loc2_.§_-lW§ = null;
         this.§_-dC§ = _loc2_;
         if(_loc2_.§_-g7§)
         {
            _loc2_.§_-g7§.§_-lW§ = _loc2_;
         }
         ++this.§_-Is§;
         _loc2_.§_-pP§ = param1.§_-KT§;
         _loc2_.§_-73§ = null;
         param1.§_-KT§ = _loc2_;
         if(_loc2_.§_-pP§)
         {
            _loc2_.§_-pP§.§_-73§ = _loc2_;
         }
         ++param1.§_-5T§;
      }
      
      public function §_-kU§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-KT§;
         while(_loc2_ && _loc2_.§_-Og§ != this)
         {
            _loc2_ = _loc2_.§_-pP§;
         }
         if(_loc2_.§_-lW§)
         {
            _loc2_.§_-lW§.§_-g7§ = _loc2_.§_-g7§;
         }
         if(_loc2_.§_-g7§)
         {
            _loc2_.§_-g7§.§_-lW§ = _loc2_.§_-lW§;
         }
         if(_loc2_.§_-pP§)
         {
            _loc2_.§_-pP§.§_-73§ = _loc2_.§_-73§;
         }
         if(_loc2_.§_-73§)
         {
            _loc2_.§_-73§.§_-pP§ = _loc2_.§_-pP§;
         }
         if(this.§_-dC§ == _loc2_)
         {
            this.§_-dC§ = _loc2_.§_-g7§;
         }
         if(param1.§_-KT§ == _loc2_)
         {
            param1.§_-KT§ = _loc2_.§_-pP§;
         }
         --param1.§_-5T§;
         --this.§_-Is§;
      }
      
      public function §_-Xb§() : void
      {
         while(this.§_-dC§)
         {
            this.§_-kU§(this.§_-dC§.§_-XF§);
         }
      }
      
      public function §_-go§() : b2Controller
      {
         return this.§_-QK§;
      }
      
      public function §_-wR§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-ej§() : b2ControllerEdge
      {
         return this.§_-dC§;
      }
   }
}
