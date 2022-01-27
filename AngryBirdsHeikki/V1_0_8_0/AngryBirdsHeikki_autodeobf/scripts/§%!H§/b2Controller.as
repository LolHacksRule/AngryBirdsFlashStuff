package §%!H§
{
   import §0!?§.b2Body;
   import §0!?§.b2DebugDraw;
   import §0!?§.b2TimeStep;
   import §0!?§.b2World;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §=!T§:b2Controller;
      
      b2internal var §4!_§:b2Controller;
      
      protected var §6y§:b2ControllerEdge;
      
      protected var §8a§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §2!"§(param1:b2TimeStep) : void
      {
      }
      
      public function §5-§(param1:b2DebugDraw) : void
      {
      }
      
      public function §45§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§7=§ = this;
         _loc2_.§<j§ = param1;
         _loc2_.§4b§ = this.§6y§;
         _loc2_.§4t§ = null;
         this.§6y§ = _loc2_;
         if(_loc2_.§4b§)
         {
            _loc2_.§4b§.§4t§ = _loc2_;
         }
         ++this.§8a§;
         _loc2_.§7N§ = param1.§<!X§;
         _loc2_.§9!A§ = null;
         param1.§<!X§ = _loc2_;
         if(_loc2_.§7N§)
         {
            _loc2_.§7N§.§9!A§ = _loc2_;
         }
         ++param1.§^c§;
      }
      
      public function §?1§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§<!X§;
         while(_loc2_ && _loc2_.§7=§ != this)
         {
            _loc2_ = _loc2_.§7N§;
         }
         if(_loc2_.§4t§)
         {
            _loc2_.§4t§.§4b§ = _loc2_.§4b§;
         }
         if(_loc2_.§4b§)
         {
            _loc2_.§4b§.§4t§ = _loc2_.§4t§;
         }
         if(_loc2_.§7N§)
         {
            _loc2_.§7N§.§9!A§ = _loc2_.§9!A§;
         }
         if(_loc2_.§9!A§)
         {
            _loc2_.§9!A§.§7N§ = _loc2_.§7N§;
         }
         if(this.§6y§ == _loc2_)
         {
            this.§6y§ = _loc2_.§4b§;
         }
         if(param1.§<!X§ == _loc2_)
         {
            param1.§<!X§ = _loc2_.§7N§;
         }
         --param1.§^c§;
         --this.§8a§;
      }
      
      public function §@!U§() : void
      {
         while(this.§6y§)
         {
            this.§?1§(this.§6y§.§<j§);
         }
      }
      
      public function §=t§() : b2Controller
      {
         return this.§=!T§;
      }
      
      public function §,R§() : b2World
      {
         return this.m_world;
      }
      
      public function §8S§() : b2ControllerEdge
      {
         return this.§6y§;
      }
   }
}
