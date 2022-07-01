package §`U§
{
   import §8,§.b2internal;
   import §?!E§.b2Body;
   import §?!E§.b2DebugDraw;
   import §?!E§.b2TimeStep;
   import §?!E§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §-!7§:b2Controller;
      
      b2internal var §2<§:b2Controller;
      
      protected var §;C§:b2ControllerEdge;
      
      protected var § -§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §<"2§(param1:b2TimeStep) : void
      {
      }
      
      public function §!B§(param1:b2DebugDraw) : void
      {
      }
      
      public function §7F§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§00§ = this;
         _loc2_.§ X§ = param1;
         _loc2_.§#!A§ = this.§;C§;
         _loc2_.§"f§ = null;
         this.§;C§ = _loc2_;
         if(_loc2_.§#!A§)
         {
            _loc2_.§#!A§.§"f§ = _loc2_;
         }
         ++this.§ -§;
         _loc2_.§'!Z§ = param1.§+!H§;
         _loc2_.§"-§ = null;
         param1.§+!H§ = _loc2_;
         if(_loc2_.§'!Z§)
         {
            _loc2_.§'!Z§.§"-§ = _loc2_;
         }
         ++param1.§?!=§;
      }
      
      public function §52§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§+!H§;
         while(_loc2_ && _loc2_.§00§ != this)
         {
            _loc2_ = _loc2_.§'!Z§;
         }
         if(_loc2_.§"f§)
         {
            _loc2_.§"f§.§#!A§ = _loc2_.§#!A§;
         }
         if(_loc2_.§#!A§)
         {
            _loc2_.§#!A§.§"f§ = _loc2_.§"f§;
         }
         if(_loc2_.§'!Z§)
         {
            _loc2_.§'!Z§.§"-§ = _loc2_.§"-§;
         }
         if(_loc2_.§"-§)
         {
            _loc2_.§"-§.§'!Z§ = _loc2_.§'!Z§;
         }
         if(this.§;C§ == _loc2_)
         {
            this.§;C§ = _loc2_.§#!A§;
         }
         if(param1.§+!H§ == _loc2_)
         {
            param1.§+!H§ = _loc2_.§'!Z§;
         }
         --param1.§?!=§;
         --this.§ -§;
      }
      
      public function §8!f§() : void
      {
         while(this.§;C§)
         {
            this.§52§(this.§;C§.§ X§);
         }
      }
      
      public function §%T§() : b2Controller
      {
         return this.§-!7§;
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      public function §!! §() : b2ControllerEdge
      {
         return this.§;C§;
      }
   }
}
