package § X§
{
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2DebugDraw;
   import §^!Z§.b2TimeStep;
   import §^!Z§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §]!8§:b2Controller;
      
      b2internal var §9!@§:b2Controller;
      
      protected var §@!T§:b2ControllerEdge;
      
      protected var §2Q§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §@!D§(param1:b2TimeStep) : void
      {
      }
      
      public function §'^§(param1:b2DebugDraw) : void
      {
      }
      
      public function §1!]§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§[-§ = this;
         _loc2_.get = param1;
         _loc2_.§"!'§ = this.§@!T§;
         _loc2_.§ y§ = null;
         this.§@!T§ = _loc2_;
         if(_loc2_.§"!'§)
         {
            _loc2_.§"!'§.§ y§ = _loc2_;
         }
         ++this.§2Q§;
         _loc2_.§>P§ = param1.§,%§;
         _loc2_.§-!8§ = null;
         param1.§,%§ = _loc2_;
         if(_loc2_.§>P§)
         {
            _loc2_.§>P§.§-!8§ = _loc2_;
         }
         ++param1.§=!'§;
      }
      
      public function §`h§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,%§;
         while(_loc2_ && _loc2_.§[-§ != this)
         {
            _loc2_ = _loc2_.§>P§;
         }
         if(_loc2_.§ y§)
         {
            _loc2_.§ y§.§"!'§ = _loc2_.§"!'§;
         }
         if(_loc2_.§"!'§)
         {
            _loc2_.§"!'§.§ y§ = _loc2_.§ y§;
         }
         if(_loc2_.§>P§)
         {
            _loc2_.§>P§.§-!8§ = _loc2_.§-!8§;
         }
         if(_loc2_.§-!8§)
         {
            _loc2_.§-!8§.§>P§ = _loc2_.§>P§;
         }
         if(this.§@!T§ == _loc2_)
         {
            this.§@!T§ = _loc2_.§"!'§;
         }
         if(param1.§,%§ == _loc2_)
         {
            param1.§,%§ = _loc2_.§>P§;
         }
         --param1.§=!'§;
         --this.§2Q§;
      }
      
      public function §9!2§() : void
      {
         while(this.§@!T§)
         {
            this.§`h§(this.§@!T§.get);
         }
      }
      
      public function §1![§() : b2Controller
      {
         return this.§]!8§;
      }
      
      public function §&!D§() : b2World
      {
         return this.m_world;
      }
      
      public function §<!O§() : b2ControllerEdge
      {
         return this.§@!T§;
      }
   }
}
