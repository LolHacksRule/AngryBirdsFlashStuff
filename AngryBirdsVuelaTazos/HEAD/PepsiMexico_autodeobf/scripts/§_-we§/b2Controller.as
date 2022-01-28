package §_-we§
{
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2DebugDraw;
   import §_-vk§.b2TimeStep;
   import §_-vk§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-np§:b2Controller;
      
      b2internal var §_-Fg§:b2Controller;
      
      protected var §_-Zx§:b2ControllerEdge;
      
      protected var §_-OF§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-If§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-Hw§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-Fe§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-6j§ = this;
         _loc2_.§_-QT§ = param1;
         _loc2_.§_-nz§ = this.§_-Zx§;
         _loc2_.§_-R2§ = null;
         this.§_-Zx§ = _loc2_;
         if(_loc2_.§_-nz§)
         {
            _loc2_.§_-nz§.§_-R2§ = _loc2_;
         }
         ++this.§_-OF§;
         _loc2_.§_-c1§ = param1.§_-lO§;
         _loc2_.§_-PD§ = null;
         param1.§_-lO§ = _loc2_;
         if(_loc2_.§_-c1§)
         {
            _loc2_.§_-c1§.§_-PD§ = _loc2_;
         }
         ++param1.§_-T9§;
      }
      
      public function §_-YJ§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-lO§;
         while(_loc2_ && _loc2_.§_-6j§ != this)
         {
            _loc2_ = _loc2_.§_-c1§;
         }
         if(_loc2_.§_-R2§)
         {
            _loc2_.§_-R2§.§_-nz§ = _loc2_.§_-nz§;
         }
         if(_loc2_.§_-nz§)
         {
            _loc2_.§_-nz§.§_-R2§ = _loc2_.§_-R2§;
         }
         if(_loc2_.§_-c1§)
         {
            _loc2_.§_-c1§.§_-PD§ = _loc2_.§_-PD§;
         }
         if(_loc2_.§_-PD§)
         {
            _loc2_.§_-PD§.§_-c1§ = _loc2_.§_-c1§;
         }
         if(this.§_-Zx§ == _loc2_)
         {
            this.§_-Zx§ = _loc2_.§_-nz§;
         }
         if(param1.§_-lO§ == _loc2_)
         {
            param1.§_-lO§ = _loc2_.§_-c1§;
         }
         --param1.§_-T9§;
         --this.§_-OF§;
      }
      
      public function §_-XW§() : void
      {
         while(this.§_-Zx§)
         {
            this.§_-YJ§(this.§_-Zx§.§_-QT§);
         }
      }
      
      public function §_-9Y§() : b2Controller
      {
         return this.§_-np§;
      }
      
      public function §_-AD§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-Ir§() : b2ControllerEdge
      {
         return this.§_-Zx§;
      }
   }
}
