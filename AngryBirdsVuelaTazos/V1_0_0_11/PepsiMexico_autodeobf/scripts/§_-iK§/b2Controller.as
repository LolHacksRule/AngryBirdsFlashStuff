package §_-iK§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2DebugDraw;
   import §_-WW§.b2TimeStep;
   import §_-WW§.b2World;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-Lg§:b2Controller;
      
      b2internal var §_-mb§:b2Controller;
      
      protected var §_-Q3§:b2ControllerEdge;
      
      protected var §_-E3§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-g8§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-RJ§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-Km§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-V7§ = this;
         _loc2_.§_-al§ = param1;
         _loc2_.§_-Zl§ = this.§_-Q3§;
         _loc2_.§_-0l§ = null;
         this.§_-Q3§ = _loc2_;
         if(_loc2_.§_-Zl§)
         {
            _loc2_.§_-Zl§.§_-0l§ = _loc2_;
         }
         ++this.§_-E3§;
         _loc2_.§_-0Z§ = param1.§_-4F§;
         _loc2_.§_-QS§ = null;
         param1.§_-4F§ = _loc2_;
         if(_loc2_.§_-0Z§)
         {
            _loc2_.§_-0Z§.§_-QS§ = _loc2_;
         }
         ++param1.§_-Jl§;
      }
      
      public function §_-Du§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-4F§;
         while(_loc2_ && _loc2_.§_-V7§ != this)
         {
            _loc2_ = _loc2_.§_-0Z§;
         }
         if(_loc2_.§_-0l§)
         {
            _loc2_.§_-0l§.§_-Zl§ = _loc2_.§_-Zl§;
         }
         if(_loc2_.§_-Zl§)
         {
            _loc2_.§_-Zl§.§_-0l§ = _loc2_.§_-0l§;
         }
         if(_loc2_.§_-0Z§)
         {
            _loc2_.§_-0Z§.§_-QS§ = _loc2_.§_-QS§;
         }
         if(_loc2_.§_-QS§)
         {
            _loc2_.§_-QS§.§_-0Z§ = _loc2_.§_-0Z§;
         }
         if(this.§_-Q3§ == _loc2_)
         {
            this.§_-Q3§ = _loc2_.§_-Zl§;
         }
         if(param1.§_-4F§ == _loc2_)
         {
            param1.§_-4F§ = _loc2_.§_-0Z§;
         }
         --param1.§_-Jl§;
         --this.§_-E3§;
      }
      
      public function §_-Fa§() : void
      {
         while(this.§_-Q3§)
         {
            this.§_-Du§(this.§_-Q3§.§_-al§);
         }
      }
      
      public function §_-7P§() : b2Controller
      {
         return this.§_-Lg§;
      }
      
      public function §_-78§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-XL§() : b2ControllerEdge
      {
         return this.§_-Q3§;
      }
   }
}
