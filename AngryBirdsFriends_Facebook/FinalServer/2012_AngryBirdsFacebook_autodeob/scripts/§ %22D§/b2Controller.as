package § "D§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2DebugDraw;
   import §&!Y§.b2TimeStep;
   import §&!Y§.b2World;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §&!n§:b2Controller;
      
      b2internal var §>b§:b2Controller;
      
      protected var §%!>§:b2ControllerEdge;
      
      protected var §1U§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §;!z§(param1:b2TimeStep) : void
      {
      }
      
      public function §0`§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0!S§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§,!x§ = this;
         _loc2_.§[!H§ = param1;
         _loc2_.§+"C§ = this.§%!>§;
         _loc2_.§=!"§ = null;
         this.§%!>§ = _loc2_;
         if(_loc2_.§+"C§)
         {
            _loc2_.§+"C§.§=!"§ = _loc2_;
         }
         ++this.§1U§;
         _loc2_.§`"B§ = param1.§1!x§;
         _loc2_.§0!z§ = null;
         param1.§1!x§ = _loc2_;
         if(_loc2_.§`"B§)
         {
            _loc2_.§`"B§.§0!z§ = _loc2_;
         }
         ++param1.§>^§;
      }
      
      public function §+!5§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1!x§;
         while(_loc2_ && _loc2_.§,!x§ != this)
         {
            _loc2_ = _loc2_.§`"B§;
         }
         if(_loc2_.§=!"§)
         {
            _loc2_.§=!"§.§+"C§ = _loc2_.§+"C§;
         }
         if(_loc2_.§+"C§)
         {
            _loc2_.§+"C§.§=!"§ = _loc2_.§=!"§;
         }
         if(_loc2_.§`"B§)
         {
            _loc2_.§`"B§.§0!z§ = _loc2_.§0!z§;
         }
         if(_loc2_.§0!z§)
         {
            _loc2_.§0!z§.§`"B§ = _loc2_.§`"B§;
         }
         if(this.§%!>§ == _loc2_)
         {
            this.§%!>§ = _loc2_.§+"C§;
         }
         if(param1.§1!x§ == _loc2_)
         {
            param1.§1!x§ = _loc2_.§`"B§;
         }
         --param1.§>^§;
         --this.§1U§;
      }
      
      public function §2"J§() : void
      {
         while(this.§%!>§)
         {
            this.§+!5§(this.§%!>§.§[!H§);
         }
      }
      
      public function §+U§() : b2Controller
      {
         return this.§&!n§;
      }
      
      public function §!!,§() : b2World
      {
         return this.m_world;
      }
      
      public function §="§() : b2ControllerEdge
      {
         return this.§%!>§;
      }
   }
}
