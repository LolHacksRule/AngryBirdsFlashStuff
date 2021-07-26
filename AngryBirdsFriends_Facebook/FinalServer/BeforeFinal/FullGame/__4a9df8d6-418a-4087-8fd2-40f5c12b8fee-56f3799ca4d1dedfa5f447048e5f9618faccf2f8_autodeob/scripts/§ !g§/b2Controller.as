package § !g§
{
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2DebugDraw;
   import §@!S§.b2TimeStep;
   import §@!S§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §@W§:b2Controller;
      
      b2internal var §@"4§:b2Controller;
      
      protected var §<P§:b2ControllerEdge;
      
      protected var §^#[§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function § !O§(param1:b2DebugDraw) : void
      {
      }
      
      public function §2!2§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ "'§ = this;
         _loc2_.body = param1;
         _loc2_.§["p§ = this.§<P§;
         _loc2_.§'#b§ = null;
         this.§<P§ = _loc2_;
         if(_loc2_.§["p§)
         {
            _loc2_.§["p§.§'#b§ = _loc2_;
         }
         ++this.§^#[§;
         _loc2_.§1!4§ = param1.§,!V§;
         _loc2_.§[#R§ = null;
         param1.§,!V§ = _loc2_;
         if(_loc2_.§1!4§)
         {
            _loc2_.§1!4§.§[#R§ = _loc2_;
         }
         ++param1.§?#6§;
      }
      
      public function §`"q§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,!V§;
         while(_loc2_ && _loc2_.§ "'§ != this)
         {
            _loc2_ = _loc2_.§1!4§;
         }
         if(_loc2_.§'#b§)
         {
            _loc2_.§'#b§.§["p§ = _loc2_.§["p§;
         }
         if(_loc2_.§["p§)
         {
            _loc2_.§["p§.§'#b§ = _loc2_.§'#b§;
         }
         if(_loc2_.§1!4§)
         {
            _loc2_.§1!4§.§[#R§ = _loc2_.§[#R§;
         }
         if(_loc2_.§[#R§)
         {
            _loc2_.§[#R§.§1!4§ = _loc2_.§1!4§;
         }
         if(this.§<P§ == _loc2_)
         {
            this.§<P§ = _loc2_.§["p§;
         }
         if(param1.§,!V§ == _loc2_)
         {
            param1.§,!V§ = _loc2_.§1!4§;
         }
         --param1.§?#6§;
         --this.§^#[§;
      }
      
      public function §!!<§() : void
      {
         while(this.§<P§)
         {
            this.§`"q§(this.§<P§.body);
         }
      }
      
      public function §%$>§() : b2Controller
      {
         return this.§@W§;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function §+7§() : b2ControllerEdge
      {
         return this.§<P§;
      }
   }
}
