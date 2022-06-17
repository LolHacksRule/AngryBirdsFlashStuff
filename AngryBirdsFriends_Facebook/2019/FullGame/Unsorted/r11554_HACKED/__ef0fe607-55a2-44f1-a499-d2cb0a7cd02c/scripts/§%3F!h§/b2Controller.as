package §?!h§
{
   import §8#t§.b2Body;
   import §8#t§.b2DebugDraw;
   import §8#t§.b2TimeStep;
   import §8#t§.b2World;
   import §[!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0$9§:b2Controller;
      
      b2internal var §@!w§:b2Controller;
      
      protected var §,!x§:b2ControllerEdge;
      
      protected var §3$1§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §7!<§(param1:b2DebugDraw) : void
      {
      }
      
      public function § ?§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§+"M§ = this;
         _loc2_.body = param1;
         _loc2_.§>#U§ = this.§,!x§;
         _loc2_.§-#g§ = null;
         this.§,!x§ = _loc2_;
         if(_loc2_.§>#U§)
         {
            _loc2_.§>#U§.§-#g§ = _loc2_;
         }
         ++this.§3$1§;
         _loc2_.§""T§ = param1.§,,§;
         _loc2_.§'#]§ = null;
         param1.§,,§ = _loc2_;
         if(_loc2_.§""T§)
         {
            _loc2_.§""T§.§'#]§ = _loc2_;
         }
         ++param1.§]$A§;
      }
      
      public function §="o§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,,§;
         while(_loc2_ && _loc2_.§+"M§ != this)
         {
            _loc2_ = _loc2_.§""T§;
         }
         if(_loc2_.§-#g§)
         {
            _loc2_.§-#g§.§>#U§ = _loc2_.§>#U§;
         }
         if(_loc2_.§>#U§)
         {
            _loc2_.§>#U§.§-#g§ = _loc2_.§-#g§;
         }
         if(_loc2_.§""T§)
         {
            _loc2_.§""T§.§'#]§ = _loc2_.§'#]§;
         }
         if(_loc2_.§'#]§)
         {
            _loc2_.§'#]§.§""T§ = _loc2_.§""T§;
         }
         if(this.§,!x§ == _loc2_)
         {
            this.§,!x§ = _loc2_.§>#U§;
         }
         if(param1.§,,§ == _loc2_)
         {
            param1.§,,§ = _loc2_.§""T§;
         }
         --param1.§]$A§;
         --this.§3$1§;
      }
      
      public function §;"l§() : void
      {
         while(this.§,!x§)
         {
            this.§="o§(this.§,!x§.body);
         }
      }
      
      public function §+c§() : b2Controller
      {
         return this.§0$9§;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function §4!J§() : b2ControllerEdge
      {
         return this.§,!x§;
      }
   }
}
