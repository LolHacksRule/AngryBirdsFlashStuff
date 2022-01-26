package §_-GC§
{
   import §_-EH§.b2Body;
   import §_-EH§.b2DebugDraw;
   import §_-EH§.b2TimeStep;
   import §_-EH§.b2World;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-GH§:b2Controller;
      
      b2internal var §_-3w§:b2Controller;
      
      protected var §_-bX§:b2ControllerEdge;
      
      protected var §_-39§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §_-23§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-52§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-EV§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§_-0A§ = this;
         _loc2_.§_-NI§ = param1;
         _loc2_.§_-C9§ = this.§_-bX§;
         _loc2_.§_-rC§ = null;
         this.§_-bX§ = _loc2_;
         if(_loc2_.§_-C9§)
         {
            _loc2_.§_-C9§.§_-rC§ = _loc2_;
         }
         ++this.§_-39§;
         _loc2_.§_-65§ = param1.§_-ne§;
         _loc2_.§_-S7§ = null;
         param1.§_-ne§ = _loc2_;
         if(_loc2_.§_-65§)
         {
            _loc2_.§_-65§.§_-S7§ = _loc2_;
         }
         ++param1.§_-Gc§;
      }
      
      public function §_-9§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§_-ne§;
         while(_loc2_ && _loc2_.§_-0A§ != this)
         {
            _loc2_ = _loc2_.§_-65§;
         }
         if(_loc2_.§_-rC§)
         {
            _loc2_.§_-rC§.§_-C9§ = _loc2_.§_-C9§;
         }
         if(_loc2_.§_-C9§)
         {
            _loc2_.§_-C9§.§_-rC§ = _loc2_.§_-rC§;
         }
         if(_loc2_.§_-65§)
         {
            _loc2_.§_-65§.§_-S7§ = _loc2_.§_-S7§;
         }
         if(_loc2_.§_-S7§)
         {
            _loc2_.§_-S7§.§_-65§ = _loc2_.§_-65§;
         }
         if(this.§_-bX§ == _loc2_)
         {
            this.§_-bX§ = _loc2_.§_-C9§;
         }
         if(param1.§_-ne§ == _loc2_)
         {
            param1.§_-ne§ = _loc2_.§_-65§;
         }
         --param1.§_-Gc§;
         --this.§_-39§;
      }
      
      public function §_-SQ§() : void
      {
         while(this.§_-bX§)
         {
            this.§_-9§(this.§_-bX§.§_-NI§);
         }
      }
      
      public function §_-nc§() : b2Controller
      {
         return this.§_-GH§;
      }
      
      public function §_-ms§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-FD§() : b2ControllerEdge
      {
         return this.§_-bX§;
      }
   }
}
