package §,";§
{
   import §7!q§.b2Body;
   import §7!q§.b2DebugDraw;
   import §7!q§.b2TimeStep;
   import §7!q§.b2World;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,"!§:b2Controller;
      
      b2internal var §5!M§:b2Controller;
      
      protected var §'§:b2ControllerEdge;
      
      protected var §3",§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §9>§(param1:b2TimeStep) : void
      {
      }
      
      public function §0f§(param1:b2DebugDraw) : void
      {
      }
      
      public function §3I§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ !t§ = this;
         _loc2_.§-"-§ = param1;
         _loc2_.§6"<§ = this.§'§;
         _loc2_.§?;§ = null;
         this.§'§ = _loc2_;
         if(_loc2_.§6"<§)
         {
            _loc2_.§6"<§.§?;§ = _loc2_;
         }
         ++this.§3",§;
         _loc2_.§7!p§ = param1.§true§;
         _loc2_.§4!H§ = null;
         param1.§true§ = _loc2_;
         if(_loc2_.§7!p§)
         {
            _loc2_.§7!p§.§4!H§ = _loc2_;
         }
         ++param1.§'>§;
      }
      
      public function §5!7§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§true§;
         while(_loc2_ && _loc2_.§ !t§ != this)
         {
            _loc2_ = _loc2_.§7!p§;
         }
         if(_loc2_.§?;§)
         {
            _loc2_.§?;§.§6"<§ = _loc2_.§6"<§;
         }
         if(_loc2_.§6"<§)
         {
            _loc2_.§6"<§.§?;§ = _loc2_.§?;§;
         }
         if(_loc2_.§7!p§)
         {
            _loc2_.§7!p§.§4!H§ = _loc2_.§4!H§;
         }
         if(_loc2_.§4!H§)
         {
            _loc2_.§4!H§.§7!p§ = _loc2_.§7!p§;
         }
         if(this.§'§ == _loc2_)
         {
            this.§'§ = _loc2_.§6"<§;
         }
         if(param1.§true§ == _loc2_)
         {
            param1.§true§ = _loc2_.§7!p§;
         }
         --param1.§'>§;
         --this.§3",§;
      }
      
      public function §"!R§() : void
      {
         while(this.§'§)
         {
            this.§5!7§(this.§'§.§-"-§);
         }
      }
      
      public function §5!`§() : b2Controller
      {
         return this.§,"!§;
      }
      
      public function §7! §() : b2World
      {
         return this.m_world;
      }
      
      public function §#y§() : b2ControllerEdge
      {
         return this.§'§;
      }
   }
}
