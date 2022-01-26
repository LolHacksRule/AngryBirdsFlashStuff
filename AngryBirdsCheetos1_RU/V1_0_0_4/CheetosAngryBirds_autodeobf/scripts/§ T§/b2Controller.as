package § t§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2DebugDraw;
   import §&i§.b2TimeStep;
   import §&i§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §`!T§:b2Controller;
      
      b2internal var §80§:b2Controller;
      
      protected var §"K§:b2ControllerEdge;
      
      protected var §4!Y§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §2p§(param1:b2TimeStep) : void
      {
      }
      
      public function §'b§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!1§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§`P§ = this;
         _loc2_.§-!S§ = param1;
         _loc2_.§-!Q§ = this.§"K§;
         _loc2_.§!!"§ = null;
         this.§"K§ = _loc2_;
         if(_loc2_.§-!Q§)
         {
            _loc2_.§-!Q§.§!!"§ = _loc2_;
         }
         ++this.§4!Y§;
         _loc2_.§<C§ = param1.§>!B§;
         _loc2_.§'!`§ = null;
         param1.§>!B§ = _loc2_;
         if(_loc2_.§<C§)
         {
            _loc2_.§<C§.§'!`§ = _loc2_;
         }
         ++param1.§,!G§;
      }
      
      public function §5S§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§>!B§;
         while(_loc2_ && _loc2_.§`P§ != this)
         {
            _loc2_ = _loc2_.§<C§;
         }
         if(_loc2_.§!!"§)
         {
            _loc2_.§!!"§.§-!Q§ = _loc2_.§-!Q§;
         }
         if(_loc2_.§-!Q§)
         {
            _loc2_.§-!Q§.§!!"§ = _loc2_.§!!"§;
         }
         if(_loc2_.§<C§)
         {
            _loc2_.§<C§.§'!`§ = _loc2_.§'!`§;
         }
         if(_loc2_.§'!`§)
         {
            _loc2_.§'!`§.§<C§ = _loc2_.§<C§;
         }
         if(this.§"K§ == _loc2_)
         {
            this.§"K§ = _loc2_.§-!Q§;
         }
         if(param1.§>!B§ == _loc2_)
         {
            param1.§>!B§ = _loc2_.§<C§;
         }
         --param1.§,!G§;
         --this.§4!Y§;
      }
      
      public function §>m§() : void
      {
         while(this.§"K§)
         {
            this.§5S§(this.§"K§.§-!S§);
         }
      }
      
      public function §%!<§() : b2Controller
      {
         return this.§`!T§;
      }
      
      public function §<!D§() : b2World
      {
         return this.m_world;
      }
      
      public function §`!Y§() : b2ControllerEdge
      {
         return this.§"K§;
      }
   }
}
