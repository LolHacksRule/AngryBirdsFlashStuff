package §!!R§
{
   import §7!u§.b2internal;
   import §`w§.b2Body;
   import §`w§.b2DebugDraw;
   import §`w§.b2TimeStep;
   import §`w§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §3=§:b2Controller;
      
      b2internal var §-!I§:b2Controller;
      
      protected var §"!Z§:b2ControllerEdge;
      
      protected var §[r§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §#$§(param1:b2TimeStep) : void
      {
      }
      
      public function §#!n§(param1:b2DebugDraw) : void
      {
      }
      
      public function §'!=§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§?!]§ = this;
         _loc2_.§2d§ = param1;
         _loc2_.§ @§ = this.§"!Z§;
         _loc2_.§#!l§ = null;
         this.§"!Z§ = _loc2_;
         if(_loc2_.§ @§)
         {
            _loc2_.§ @§.§#!l§ = _loc2_;
         }
         ++this.§[r§;
         _loc2_.§?J§ = param1.§-_§;
         _loc2_.§=s§ = null;
         param1.§-_§ = _loc2_;
         if(_loc2_.§?J§)
         {
            _loc2_.§?J§.§=s§ = _loc2_;
         }
         ++param1.§ !>§;
      }
      
      public function §"!B§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§-_§;
         while(_loc2_ && _loc2_.§?!]§ != this)
         {
            _loc2_ = _loc2_.§?J§;
         }
         if(_loc2_.§#!l§)
         {
            _loc2_.§#!l§.§ @§ = _loc2_.§ @§;
         }
         if(_loc2_.§ @§)
         {
            _loc2_.§ @§.§#!l§ = _loc2_.§#!l§;
         }
         if(_loc2_.§?J§)
         {
            _loc2_.§?J§.§=s§ = _loc2_.§=s§;
         }
         if(_loc2_.§=s§)
         {
            _loc2_.§=s§.§?J§ = _loc2_.§?J§;
         }
         if(this.§"!Z§ == _loc2_)
         {
            this.§"!Z§ = _loc2_.§ @§;
         }
         if(param1.§-_§ == _loc2_)
         {
            param1.§-_§ = _loc2_.§?J§;
         }
         --param1.§ !>§;
         --this.§[r§;
      }
      
      public function §49§() : void
      {
         while(this.§"!Z§)
         {
            this.§"!B§(this.§"!Z§.§2d§);
         }
      }
      
      public function §+!N§() : b2Controller
      {
         return this.§3=§;
      }
      
      public function §%!D§() : b2World
      {
         return this.m_world;
      }
      
      public function §7!"§() : b2ControllerEdge
      {
         return this.§"!Z§;
      }
   }
}
