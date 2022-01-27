package §^!8§
{
   import §#!X§.b2Body;
   import §#!X§.b2DebugDraw;
   import §#!X§.b2TimeStep;
   import §#!X§.b2World;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §`!s§:b2Controller;
      
      b2internal var §%4§:b2Controller;
      
      protected var §`e§:b2ControllerEdge;
      
      protected var §%!X§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §1o§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!%§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§%O§ = this;
         _loc2_.§5i§ = param1;
         _loc2_.§,x§ = this.§`e§;
         _loc2_.§9!"§ = null;
         this.§`e§ = _loc2_;
         if(_loc2_.§,x§)
         {
            _loc2_.§,x§.§9!"§ = _loc2_;
         }
         ++this.§%!X§;
         _loc2_.§+"@§ = param1.§<!4§;
         _loc2_.§case § = null;
         param1.§<!4§ = _loc2_;
         if(_loc2_.§+"@§)
         {
            _loc2_.§+"@§.§case § = _loc2_;
         }
         ++param1.§4V§;
      }
      
      public function §-!A§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§<!4§;
         while(_loc2_ && _loc2_.§%O§ != this)
         {
            _loc2_ = _loc2_.§+"@§;
         }
         if(_loc2_.§9!"§)
         {
            _loc2_.§9!"§.§,x§ = _loc2_.§,x§;
         }
         if(_loc2_.§,x§)
         {
            _loc2_.§,x§.§9!"§ = _loc2_.§9!"§;
         }
         if(_loc2_.§+"@§)
         {
            _loc2_.§+"@§.§case § = _loc2_.§case §;
         }
         if(_loc2_.§case §)
         {
            _loc2_.§case §.§+"@§ = _loc2_.§+"@§;
         }
         if(this.§`e§ == _loc2_)
         {
            this.§`e§ = _loc2_.§,x§;
         }
         if(param1.§<!4§ == _loc2_)
         {
            param1.§<!4§ = _loc2_.§+"@§;
         }
         --param1.§4V§;
         --this.§%!X§;
      }
      
      public function §6![§() : void
      {
         while(this.§`e§)
         {
            this.§-!A§(this.§`e§.§5i§);
         }
      }
      
      public function §6!4§() : b2Controller
      {
         return this.§`!s§;
      }
      
      public function §@!l§() : b2World
      {
         return this.m_world;
      }
      
      public function § e§() : b2ControllerEdge
      {
         return this.§`e§;
      }
   }
}
