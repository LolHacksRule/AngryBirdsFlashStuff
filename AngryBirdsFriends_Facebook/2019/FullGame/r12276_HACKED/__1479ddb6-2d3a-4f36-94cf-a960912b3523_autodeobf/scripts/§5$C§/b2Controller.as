package §5$C§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2DebugDraw;
   import §3#h§.b2TimeStep;
   import §3#h§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7<§:b2Controller;
      
      b2internal var §2Y§:b2Controller;
      
      protected var §`I§:b2ControllerEdge;
      
      protected var §[!a§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §>#6§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0q§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§-#W§ = this;
         _loc2_.body = param1;
         _loc2_.§[4§ = this.§`I§;
         _loc2_.§;!$§ = null;
         this.§`I§ = _loc2_;
         if(_loc2_.§[4§)
         {
            _loc2_.§[4§.§;!$§ = _loc2_;
         }
         ++this.§[!a§;
         _loc2_.§8#5§ = param1.§`#6§;
         _loc2_.§4#I§ = null;
         param1.§`#6§ = _loc2_;
         if(_loc2_.§8#5§)
         {
            _loc2_.§8#5§.§4#I§ = _loc2_;
         }
         ++param1.§4"5§;
      }
      
      public function §4!R§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§`#6§;
         while(_loc2_ && _loc2_.§-#W§ != this)
         {
            _loc2_ = _loc2_.§8#5§;
         }
         if(_loc2_.§;!$§)
         {
            _loc2_.§;!$§.§[4§ = _loc2_.§[4§;
         }
         if(_loc2_.§[4§)
         {
            _loc2_.§[4§.§;!$§ = _loc2_.§;!$§;
         }
         if(_loc2_.§8#5§)
         {
            _loc2_.§8#5§.§4#I§ = _loc2_.§4#I§;
         }
         if(_loc2_.§4#I§)
         {
            _loc2_.§4#I§.§8#5§ = _loc2_.§8#5§;
         }
         if(this.§`I§ == _loc2_)
         {
            this.§`I§ = _loc2_.§[4§;
         }
         if(param1.§`#6§ == _loc2_)
         {
            param1.§`#6§ = _loc2_.§8#5§;
         }
         --param1.§4"5§;
         --this.§[!a§;
      }
      
      public function §[!U§() : void
      {
         while(this.§`I§)
         {
            this.§4!R§(this.§`I§.body);
         }
      }
      
      public function §6"t§() : b2Controller
      {
         return this.§7<§;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function §3"!§() : b2ControllerEdge
      {
         return this.§`I§;
      }
   }
}
