package §_-wK§
{
   import §_-43§.b2Body;
   import §_-43§.b2DebugDraw;
   import §_-43§.b2TimeStep;
   import §_-43§.b2World;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-4N§:b2Controller;
      
      b2internal var §_-Nc§:b2Controller;
      
      protected var §_-BE§:b2ControllerEdge;
      
      protected var §_-xV§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-U1§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-4C§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-sk§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-0j§ = this;
         _loc2_.§_-GP§ = param1;
         _loc2_.§_-0-V§ = this.§_-BE§;
         _loc2_.§_-s-§ = null;
         this.§_-BE§ = _loc2_;
         if(_loc2_.§_-0-V§)
         {
            _loc2_.§_-0-V§.§_-s-§ = _loc2_;
         }
         ++this.§_-xV§;
         _loc2_.§_-LI§ = param1.§_-xY§;
         _loc2_.§_-00K§ = null;
         param1.§_-xY§ = _loc2_;
         if(_loc2_.§_-LI§)
         {
            _loc2_.§_-LI§.§_-00K§ = _loc2_;
         }
         ++param1.§_-gC§;
      }
      
      public function §_-O9§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-xY§;
         while(_loc2_ && _loc2_.§_-0j§ != this)
         {
            _loc2_ = _loc2_.§_-LI§;
         }
         if(_loc2_.§_-s-§)
         {
            _loc2_.§_-s-§.§_-0-V§ = _loc2_.§_-0-V§;
         }
         if(_loc2_.§_-0-V§)
         {
            _loc2_.§_-0-V§.§_-s-§ = _loc2_.§_-s-§;
         }
         if(_loc2_.§_-LI§)
         {
            _loc2_.§_-LI§.§_-00K§ = _loc2_.§_-00K§;
         }
         if(_loc2_.§_-00K§)
         {
            _loc2_.§_-00K§.§_-LI§ = _loc2_.§_-LI§;
         }
         if(this.§_-BE§ == _loc2_)
         {
            this.§_-BE§ = _loc2_.§_-0-V§;
         }
         if(param1.§_-xY§ == _loc2_)
         {
            param1.§_-xY§ = _loc2_.§_-LI§;
         }
         --param1.§_-gC§;
         --this.§_-xV§;
      }
      
      public function §_-ai§() : void
      {
         while(this.§_-BE§)
         {
            this.§_-O9§(this.§_-BE§.§_-GP§);
         }
      }
      
      public function §_-4A§() : b2Controller
      {
         return this.§_-4N§;
      }
      
      public function §_-0-e§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-Za§() : b2ControllerEdge
      {
         return this.§_-BE§;
      }
   }
}
