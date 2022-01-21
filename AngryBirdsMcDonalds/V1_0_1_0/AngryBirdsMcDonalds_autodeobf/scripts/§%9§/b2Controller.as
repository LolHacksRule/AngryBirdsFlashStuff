package §%9§
{
   import §1B§.b2Body;
   import §1B§.b2DebugDraw;
   import §1B§.b2TimeStep;
   import §1B§.b2World;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>y§:b2Controller;
      
      b2internal var §]!K§:b2Controller;
      
      protected var §2!8§:b2ControllerEdge;
      
      protected var § T§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §]1§(param1:b2TimeStep) : void
      {
      }
      
      public function §,e§(param1:b2DebugDraw) : void
      {
      }
      
      public function §"!_§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ u§ = this;
         _loc2_.§,-§ = param1;
         _loc2_.§-!h§ = this.§2!8§;
         _loc2_.§+U§ = null;
         this.§2!8§ = _loc2_;
         if(_loc2_.§-!h§)
         {
            _loc2_.§-!h§.§+U§ = _loc2_;
         }
         ++this.§ T§;
         _loc2_.§74§ = param1.§1p§;
         _loc2_.§import§ = null;
         param1.§1p§ = _loc2_;
         if(_loc2_.§74§)
         {
            _loc2_.§74§.§import§ = _loc2_;
         }
         ++param1.§`2§;
      }
      
      public function §5b§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1p§;
         while(_loc2_ && _loc2_.§ u§ != this)
         {
            _loc2_ = _loc2_.§74§;
         }
         if(_loc2_.§+U§)
         {
            _loc2_.§+U§.§-!h§ = _loc2_.§-!h§;
         }
         if(_loc2_.§-!h§)
         {
            _loc2_.§-!h§.§+U§ = _loc2_.§+U§;
         }
         if(_loc2_.§74§)
         {
            _loc2_.§74§.§import§ = _loc2_.§import§;
         }
         if(_loc2_.§import§)
         {
            _loc2_.§import§.§74§ = _loc2_.§74§;
         }
         if(this.§2!8§ == _loc2_)
         {
            this.§2!8§ = _loc2_.§-!h§;
         }
         if(param1.§1p§ == _loc2_)
         {
            param1.§1p§ = _loc2_.§74§;
         }
         --param1.§`2§;
         --this.§ T§;
      }
      
      public function §`!X§() : void
      {
         while(this.§2!8§)
         {
            this.§5b§(this.§2!8§.§,-§);
         }
      }
      
      public function §-7§() : b2Controller
      {
         return this.§>y§;
      }
      
      public function §[A§() : b2World
      {
         return this.m_world;
      }
      
      public function §7z§() : b2ControllerEdge
      {
         return this.§2!8§;
      }
   }
}
