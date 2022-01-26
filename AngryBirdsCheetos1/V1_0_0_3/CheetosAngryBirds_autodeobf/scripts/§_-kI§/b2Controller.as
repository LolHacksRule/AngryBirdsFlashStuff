package §_-KI§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2DebugDraw;
   import §_-00B§.b2TimeStep;
   import §_-00B§.b2World;
   import §_-Jf§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-E1§:b2Controller;
      
      b2internal var §_-u6§:b2Controller;
      
      protected var §_-Nz§:b2ControllerEdge;
      
      protected var §_-hT§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-qa§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-ub§(param1:b2DebugDraw) : void
      {
      }
      
      public function § case§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ try§ = this;
         _loc2_.§_-OJ§ = param1;
         _loc2_.§_-O0§ = this.§_-Nz§;
         _loc2_.§_-48§ = null;
         this.§_-Nz§ = _loc2_;
         if(_loc2_.§_-O0§)
         {
            _loc2_.§_-O0§.§_-48§ = _loc2_;
         }
         ++this.§_-hT§;
         _loc2_.§_-d4§ = param1.§_-eA§;
         _loc2_.§_-uR§ = null;
         param1.§_-eA§ = _loc2_;
         if(_loc2_.§_-d4§)
         {
            _loc2_.§_-d4§.§_-uR§ = _loc2_;
         }
         ++param1.§_-ih§;
      }
      
      public function §_-6S§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-eA§;
         while(_loc2_ && _loc2_.§ try§ != this)
         {
            _loc2_ = _loc2_.§_-d4§;
         }
         if(_loc2_.§_-48§)
         {
            _loc2_.§_-48§.§_-O0§ = _loc2_.§_-O0§;
         }
         if(_loc2_.§_-O0§)
         {
            _loc2_.§_-O0§.§_-48§ = _loc2_.§_-48§;
         }
         if(_loc2_.§_-d4§)
         {
            _loc2_.§_-d4§.§_-uR§ = _loc2_.§_-uR§;
         }
         if(_loc2_.§_-uR§)
         {
            _loc2_.§_-uR§.§_-d4§ = _loc2_.§_-d4§;
         }
         if(this.§_-Nz§ == _loc2_)
         {
            this.§_-Nz§ = _loc2_.§_-O0§;
         }
         if(param1.§_-eA§ == _loc2_)
         {
            param1.§_-eA§ = _loc2_.§_-d4§;
         }
         --param1.§_-ih§;
         --this.§_-hT§;
      }
      
      public function §_-SP§() : void
      {
         while(this.§_-Nz§)
         {
            this.§_-6S§(this.§_-Nz§.§_-OJ§);
         }
      }
      
      public function §_-si§() : b2Controller
      {
         return this.§_-E1§;
      }
      
      public function §_-n6§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-Sw§() : b2ControllerEdge
      {
         return this.§_-Nz§;
      }
   }
}
