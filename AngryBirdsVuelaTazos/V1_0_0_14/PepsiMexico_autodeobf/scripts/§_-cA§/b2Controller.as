package §_-cA§
{
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2DebugDraw;
   import §const§.b2TimeStep;
   import §const§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-1k§:b2Controller;
      
      b2internal var §_-nr§:b2Controller;
      
      protected var §_-fJ§:b2ControllerEdge;
      
      protected var §_-JW§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-Aq§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-nB§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-FP§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-FQ§ = this;
         _loc2_.§_-bY§ = param1;
         _loc2_.§_-A6§ = this.§_-fJ§;
         _loc2_.§_-zs§ = null;
         this.§_-fJ§ = _loc2_;
         if(_loc2_.§_-A6§)
         {
            _loc2_.§_-A6§.§_-zs§ = _loc2_;
         }
         ++this.§_-JW§;
         _loc2_.§_-J9§ = param1.§_-PH§;
         _loc2_.§_-ES§ = null;
         param1.§_-PH§ = _loc2_;
         if(_loc2_.§_-J9§)
         {
            _loc2_.§_-J9§.§_-ES§ = _loc2_;
         }
         ++param1.§_-7s§;
      }
      
      public function §_-z8§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-PH§;
         while(_loc2_ && _loc2_.§_-FQ§ != this)
         {
            _loc2_ = _loc2_.§_-J9§;
         }
         if(_loc2_.§_-zs§)
         {
            _loc2_.§_-zs§.§_-A6§ = _loc2_.§_-A6§;
         }
         if(_loc2_.§_-A6§)
         {
            _loc2_.§_-A6§.§_-zs§ = _loc2_.§_-zs§;
         }
         if(_loc2_.§_-J9§)
         {
            _loc2_.§_-J9§.§_-ES§ = _loc2_.§_-ES§;
         }
         if(_loc2_.§_-ES§)
         {
            _loc2_.§_-ES§.§_-J9§ = _loc2_.§_-J9§;
         }
         if(this.§_-fJ§ == _loc2_)
         {
            this.§_-fJ§ = _loc2_.§_-A6§;
         }
         if(param1.§_-PH§ == _loc2_)
         {
            param1.§_-PH§ = _loc2_.§_-J9§;
         }
         --param1.§_-7s§;
         --this.§_-JW§;
      }
      
      public function §_-5E§() : void
      {
         while(this.§_-fJ§)
         {
            this.§_-z8§(this.§_-fJ§.§_-bY§);
         }
      }
      
      public function §_-e4§() : b2Controller
      {
         return this.§_-1k§;
      }
      
      public function §_-kB§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-IO§() : b2ControllerEdge
      {
         return this.§_-fJ§;
      }
   }
}
