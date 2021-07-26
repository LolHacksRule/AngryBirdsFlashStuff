package §>!2§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2DebugDraw;
   import §'#K§.b2TimeStep;
   import §'#K§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>d§:b2Controller;
      
      b2internal var §-$7§:b2Controller;
      
      protected var §8#U§:b2ControllerEdge;
      
      protected var §?"q§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function § !L§(param1:b2DebugDraw) : void
      {
      }
      
      public function §;"t§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§;r§ = this;
         _loc2_.body = param1;
         _loc2_.§<"2§ = this.§8#U§;
         _loc2_.§?#@§ = null;
         this.§8#U§ = _loc2_;
         if(_loc2_.§<"2§)
         {
            _loc2_.§<"2§.§?#@§ = _loc2_;
         }
         ++this.§?"q§;
         _loc2_.§>u§ = param1.§`"&§;
         _loc2_.§7"]§ = null;
         param1.§`"&§ = _loc2_;
         if(_loc2_.§>u§)
         {
            _loc2_.§>u§.§7"]§ = _loc2_;
         }
         ++param1.§`#I§;
      }
      
      public function §[!t§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§`"&§;
         while(_loc2_ && _loc2_.§;r§ != this)
         {
            _loc2_ = _loc2_.§>u§;
         }
         if(_loc2_.§?#@§)
         {
            _loc2_.§?#@§.§<"2§ = _loc2_.§<"2§;
         }
         if(_loc2_.§<"2§)
         {
            _loc2_.§<"2§.§?#@§ = _loc2_.§?#@§;
         }
         if(_loc2_.§>u§)
         {
            _loc2_.§>u§.§7"]§ = _loc2_.§7"]§;
         }
         if(_loc2_.§7"]§)
         {
            _loc2_.§7"]§.§>u§ = _loc2_.§>u§;
         }
         if(this.§8#U§ == _loc2_)
         {
            this.§8#U§ = _loc2_.§<"2§;
         }
         if(param1.§`"&§ == _loc2_)
         {
            param1.§`"&§ = _loc2_.§>u§;
         }
         --param1.§`#I§;
         --this.§?"q§;
      }
      
      public function §+#"§() : void
      {
         while(this.§8#U§)
         {
            this.§[!t§(this.§8#U§.body);
         }
      }
      
      public function §4!7§() : b2Controller
      {
         return this.§>d§;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function §!D§() : b2ControllerEdge
      {
         return this.§8#U§;
      }
   }
}
