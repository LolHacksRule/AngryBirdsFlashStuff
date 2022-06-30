package §?@§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2DebugDraw;
   import §8!I§.b2TimeStep;
   import §8!I§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,C§:b2Controller;
      
      b2internal var §5E§:b2Controller;
      
      protected var §-!3§:b2ControllerEdge;
      
      protected var §7X§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §@%§(param1:b2TimeStep) : void
      {
      }
      
      public function §]!,§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0!Z§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§6!L§ = this;
         _loc2_.§[1§ = param1;
         _loc2_.§[!J§ = this.§-!3§;
         _loc2_.§2Q§ = null;
         this.§-!3§ = _loc2_;
         if(_loc2_.§[!J§)
         {
            _loc2_.§[!J§.§2Q§ = _loc2_;
         }
         ++this.§7X§;
         _loc2_.§2,§ = param1.§6!`§;
         _loc2_.§[z§ = null;
         param1.§6!`§ = _loc2_;
         if(_loc2_.§2,§)
         {
            _loc2_.§2,§.§[z§ = _loc2_;
         }
         ++param1.§]n§;
      }
      
      public function §>M§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§6!`§;
         while(_loc2_ && _loc2_.§6!L§ != this)
         {
            _loc2_ = _loc2_.§2,§;
         }
         if(_loc2_.§2Q§)
         {
            _loc2_.§2Q§.§[!J§ = _loc2_.§[!J§;
         }
         if(_loc2_.§[!J§)
         {
            _loc2_.§[!J§.§2Q§ = _loc2_.§2Q§;
         }
         if(_loc2_.§2,§)
         {
            _loc2_.§2,§.§[z§ = _loc2_.§[z§;
         }
         if(_loc2_.§[z§)
         {
            _loc2_.§[z§.§2,§ = _loc2_.§2,§;
         }
         if(this.§-!3§ == _loc2_)
         {
            this.§-!3§ = _loc2_.§[!J§;
         }
         if(param1.§6!`§ == _loc2_)
         {
            param1.§6!`§ = _loc2_.§2,§;
         }
         --param1.§]n§;
         --this.§7X§;
      }
      
      public function §,@§() : void
      {
         while(this.§-!3§)
         {
            this.§>M§(this.§-!3§.§[1§);
         }
      }
      
      public function §]S§() : b2Controller
      {
         return this.§,C§;
      }
      
      public function §%§() : b2World
      {
         return this.m_world;
      }
      
      public function §+v§() : b2ControllerEdge
      {
         return this.§-!3§;
      }
   }
}
