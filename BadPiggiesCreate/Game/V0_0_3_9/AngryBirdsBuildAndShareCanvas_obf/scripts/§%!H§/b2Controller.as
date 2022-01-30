package §%!H§
{
   import §7"'§.b2internal;
   import §=9§.b2Body;
   import §=9§.b2DebugDraw;
   import §=9§.b2TimeStep;
   import §=9§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §1""§:b2Controller;
      
      b2internal var §7%§:b2Controller;
      
      protected var §">§:b2ControllerEdge;
      
      protected var §^"2§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §1!-§(param1:b2TimeStep) : void
      {
      }
      
      public function §'!T§(param1:b2DebugDraw) : void
      {
      }
      
      public function §&!V§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§]x§ = this;
         _loc2_.§]"§ = param1;
         _loc2_.§'s§ = this.§">§;
         _loc2_.§4"0§ = null;
         this.§">§ = _loc2_;
         if(_loc2_.§'s§)
         {
            _loc2_.§'s§.§4"0§ = _loc2_;
         }
         ++this.§^"2§;
         _loc2_.§5!<§ = param1.§0L§;
         _loc2_.§33§ = null;
         param1.§0L§ = _loc2_;
         if(_loc2_.§5!<§)
         {
            _loc2_.§5!<§.§33§ = _loc2_;
         }
         ++param1.§,!b§;
      }
      
      public function § y§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§0L§;
         while(_loc2_ && _loc2_.§]x§ != this)
         {
            _loc2_ = _loc2_.§5!<§;
         }
         if(_loc2_.§4"0§)
         {
            _loc2_.§4"0§.§'s§ = _loc2_.§'s§;
         }
         if(_loc2_.§'s§)
         {
            _loc2_.§'s§.§4"0§ = _loc2_.§4"0§;
         }
         if(_loc2_.§5!<§)
         {
            _loc2_.§5!<§.§33§ = _loc2_.§33§;
         }
         if(_loc2_.§33§)
         {
            _loc2_.§33§.§5!<§ = _loc2_.§5!<§;
         }
         if(this.§">§ == _loc2_)
         {
            this.§">§ = _loc2_.§'s§;
         }
         if(param1.§0L§ == _loc2_)
         {
            param1.§0L§ = _loc2_.§5!<§;
         }
         --param1.§,!b§;
         --this.§^"2§;
      }
      
      public function §-!]§() : void
      {
         while(this.§">§)
         {
            this.§ y§(this.§">§.§]"§);
         }
      }
      
      public function §9!]§() : b2Controller
      {
         return this.§1""§;
      }
      
      public function §8!L§() : b2World
      {
         return this.m_world;
      }
      
      public function §!=§() : b2ControllerEdge
      {
         return this.§">§;
      }
   }
}
