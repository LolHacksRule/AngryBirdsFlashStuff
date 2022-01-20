package §2G§
{
   import §8T§.b2Body;
   import §8T§.b2DebugDraw;
   import §8T§.b2TimeStep;
   import §8T§.b2World;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §[h§:b2Controller;
      
      b2internal var §7%§:b2Controller;
      
      protected var §2e§:b2ControllerEdge;
      
      protected var § w§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §`8§(param1:b2TimeStep) : void
      {
      }
      
      public function §?!-§(param1:b2DebugDraw) : void
      {
      }
      
      public function §5@§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§`r§ = this;
         _loc2_.§'f§ = param1;
         _loc2_.§#G§ = this.§2e§;
         _loc2_.§+N§ = null;
         this.§2e§ = _loc2_;
         if(_loc2_.§#G§)
         {
            _loc2_.§#G§.§+N§ = _loc2_;
         }
         ++this.§ w§;
         _loc2_.§^w§ = param1.§6%§;
         _loc2_.§;K§ = null;
         param1.§6%§ = _loc2_;
         if(_loc2_.§^w§)
         {
            _loc2_.§^w§.§;K§ = _loc2_;
         }
         ++param1.§!! §;
      }
      
      public function §^!M§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§6%§;
         while(_loc2_ && _loc2_.§`r§ != this)
         {
            _loc2_ = _loc2_.§^w§;
         }
         if(_loc2_.§+N§)
         {
            _loc2_.§+N§.§#G§ = _loc2_.§#G§;
         }
         if(_loc2_.§#G§)
         {
            _loc2_.§#G§.§+N§ = _loc2_.§+N§;
         }
         if(_loc2_.§^w§)
         {
            _loc2_.§^w§.§;K§ = _loc2_.§;K§;
         }
         if(_loc2_.§;K§)
         {
            _loc2_.§;K§.§^w§ = _loc2_.§^w§;
         }
         if(this.§2e§ == _loc2_)
         {
            this.§2e§ = _loc2_.§#G§;
         }
         if(param1.§6%§ == _loc2_)
         {
            param1.§6%§ = _loc2_.§^w§;
         }
         --param1.§!! §;
         --this.§ w§;
      }
      
      public function §['§() : void
      {
         while(this.§2e§)
         {
            this.§^!M§(this.§2e§.§'f§);
         }
      }
      
      public function §%!J§() : b2Controller
      {
         return this.§[h§;
      }
      
      public function §#R§() : b2World
      {
         return this.m_world;
      }
      
      public function §"k§() : b2ControllerEdge
      {
         return this.§2e§;
      }
   }
}
