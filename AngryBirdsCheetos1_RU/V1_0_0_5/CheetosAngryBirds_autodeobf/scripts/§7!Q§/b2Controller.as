package §7!Q§
{
   import § !5§.b2internal;
   import §[W§.b2Body;
   import §[W§.b2DebugDraw;
   import §[W§.b2TimeStep;
   import §[W§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §60§:b2Controller;
      
      b2internal var §<]§:b2Controller;
      
      protected var §2I§:b2ControllerEdge;
      
      protected var §[!=§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function § 3§(param1:b2TimeStep) : void
      {
      }
      
      public function §=Q§(param1:b2DebugDraw) : void
      {
      }
      
      public function §1!,§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§;O§ = this;
         _loc2_.§+u§ = param1;
         _loc2_.§'!8§ = this.§2I§;
         _loc2_.§;N§ = null;
         this.§2I§ = _loc2_;
         if(_loc2_.§'!8§)
         {
            _loc2_.§'!8§.§;N§ = _loc2_;
         }
         ++this.§[!=§;
         _loc2_.§>T§ = param1.§]I§;
         _loc2_.§@!'§ = null;
         param1.§]I§ = _loc2_;
         if(_loc2_.§>T§)
         {
            _loc2_.§>T§.§@!'§ = _loc2_;
         }
         ++param1.§ !]§;
      }
      
      public function §@!V§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§]I§;
         while(_loc2_ && _loc2_.§;O§ != this)
         {
            _loc2_ = _loc2_.§>T§;
         }
         if(_loc2_.§;N§)
         {
            _loc2_.§;N§.§'!8§ = _loc2_.§'!8§;
         }
         if(_loc2_.§'!8§)
         {
            _loc2_.§'!8§.§;N§ = _loc2_.§;N§;
         }
         if(_loc2_.§>T§)
         {
            _loc2_.§>T§.§@!'§ = _loc2_.§@!'§;
         }
         if(_loc2_.§@!'§)
         {
            _loc2_.§@!'§.§>T§ = _loc2_.§>T§;
         }
         if(this.§2I§ == _loc2_)
         {
            this.§2I§ = _loc2_.§'!8§;
         }
         if(param1.§]I§ == _loc2_)
         {
            param1.§]I§ = _loc2_.§>T§;
         }
         --param1.§ !]§;
         --this.§[!=§;
      }
      
      public function §9'§() : void
      {
         while(this.§2I§)
         {
            this.§@!V§(this.§2I§.§+u§);
         }
      }
      
      public function §25§() : b2Controller
      {
         return this.§60§;
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      public function §6!E§() : b2ControllerEdge
      {
         return this.§2I§;
      }
   }
}
