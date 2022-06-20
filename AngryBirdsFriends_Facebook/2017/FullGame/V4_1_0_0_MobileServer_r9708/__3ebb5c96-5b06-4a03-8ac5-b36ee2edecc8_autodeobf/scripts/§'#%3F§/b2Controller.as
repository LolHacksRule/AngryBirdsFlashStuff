package §'#?§
{
   import §1!+§.b2Body;
   import §1!+§.b2DebugDraw;
   import §1!+§.b2TimeStep;
   import §1!+§.b2World;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §3!=§:b2Controller;
      
      b2internal var §6T§:b2Controller;
      
      protected var §4!a§:b2ControllerEdge;
      
      protected var §-!F§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §>!b§(param1:b2DebugDraw) : void
      {
      }
      
      public function §=$<§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§=![§ = this;
         _loc2_.body = param1;
         _loc2_.§8W§ = this.§4!a§;
         _loc2_.§2#M§ = null;
         this.§4!a§ = _loc2_;
         if(_loc2_.§8W§)
         {
            _loc2_.§8W§.§2#M§ = _loc2_;
         }
         ++this.§-!F§;
         _loc2_.§%#D§ = param1.§-W§;
         _loc2_.§"#r§ = null;
         param1.§-W§ = _loc2_;
         if(_loc2_.§%#D§)
         {
            _loc2_.§%#D§.§"#r§ = _loc2_;
         }
         ++param1.§#r§;
      }
      
      public function §?"Q§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§-W§;
         while(_loc2_ && _loc2_.§=![§ != this)
         {
            _loc2_ = _loc2_.§%#D§;
         }
         if(_loc2_.§2#M§)
         {
            _loc2_.§2#M§.§8W§ = _loc2_.§8W§;
         }
         if(_loc2_.§8W§)
         {
            _loc2_.§8W§.§2#M§ = _loc2_.§2#M§;
         }
         if(_loc2_.§%#D§)
         {
            _loc2_.§%#D§.§"#r§ = _loc2_.§"#r§;
         }
         if(_loc2_.§"#r§)
         {
            _loc2_.§"#r§.§%#D§ = _loc2_.§%#D§;
         }
         if(this.§4!a§ == _loc2_)
         {
            this.§4!a§ = _loc2_.§8W§;
         }
         if(param1.§-W§ == _loc2_)
         {
            param1.§-W§ = _loc2_.§%#D§;
         }
         --param1.§#r§;
         --this.§-!F§;
      }
      
      public function §;,§() : void
      {
         while(this.§4!a§)
         {
            this.§?"Q§(this.§4!a§.body);
         }
      }
      
      public function §,=§() : b2Controller
      {
         return this.§3!=§;
      }
      
      public function §<!T§() : b2World
      {
         return this.m_world;
      }
      
      public function §[!e§() : b2ControllerEdge
      {
         return this.§4!a§;
      }
   }
}
