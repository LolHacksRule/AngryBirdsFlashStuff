package §]!?§
{
   import §3!g§.b2Body;
   import §3!g§.b2DebugDraw;
   import §3!g§.b2TimeStep;
   import §3!g§.b2World;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var § set§:b2Controller;
      
      b2internal var §4W§:b2Controller;
      
      protected var §,6§:b2ControllerEdge;
      
      protected var §1]§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4!@§(param1:b2TimeStep) : void
      {
      }
      
      public function §+!L§(param1:b2DebugDraw) : void
      {
      }
      
      public function §&8§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§>!b§ = this;
         _loc2_.§&2§ = param1;
         _loc2_.§@!X§ = this.§,6§;
         _loc2_.§^k§ = null;
         this.§,6§ = _loc2_;
         if(_loc2_.§@!X§)
         {
            _loc2_.§@!X§.§^k§ = _loc2_;
         }
         ++this.§1]§;
         _loc2_.§4!U§ = param1.§6! §;
         _loc2_.§ each§ = null;
         param1.§6! § = _loc2_;
         if(_loc2_.§4!U§)
         {
            _loc2_.§4!U§.§ each§ = _loc2_;
         }
         ++param1.§9Y§;
      }
      
      public function §0b§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§6! §;
         while(_loc2_ && _loc2_.§>!b§ != this)
         {
            _loc2_ = _loc2_.§4!U§;
         }
         if(_loc2_.§^k§)
         {
            _loc2_.§^k§.§@!X§ = _loc2_.§@!X§;
         }
         if(_loc2_.§@!X§)
         {
            _loc2_.§@!X§.§^k§ = _loc2_.§^k§;
         }
         if(_loc2_.§4!U§)
         {
            _loc2_.§4!U§.§ each§ = _loc2_.§ each§;
         }
         if(_loc2_.§ each§)
         {
            _loc2_.§ each§.§4!U§ = _loc2_.§4!U§;
         }
         if(this.§,6§ == _loc2_)
         {
            this.§,6§ = _loc2_.§@!X§;
         }
         if(param1.§6! § == _loc2_)
         {
            param1.§6! § = _loc2_.§4!U§;
         }
         --param1.§9Y§;
         --this.§1]§;
      }
      
      public function §-!<§() : void
      {
         while(this.§,6§)
         {
            this.§0b§(this.§,6§.§&2§);
         }
      }
      
      public function §%H§() : b2Controller
      {
         return this.§ set§;
      }
      
      public function §0_§() : b2World
      {
         return this.m_world;
      }
      
      public function §3!=§() : b2ControllerEdge
      {
         return this.§,6§;
      }
   }
}
