package §'!@§
{
   import §1%§.b2Body;
   import §1%§.b2DebugDraw;
   import §1%§.b2TimeStep;
   import §1%§.b2World;
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §!J§:b2Controller;
      
      b2internal var §4!0§:b2Controller;
      
      protected var §2_§:b2ControllerEdge;
      
      protected var §8y§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4k§(param1:b2TimeStep) : void
      {
      }
      
      public function §`!1§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@4§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.§`!"§ = param1;
         _loc2_.§;A§ = this.§2_§;
         _loc2_.§ case§ = null;
         this.§2_§ = _loc2_;
         if(_loc2_.§;A§)
         {
            _loc2_.§;A§.§ case§ = _loc2_;
         }
         ++this.§8y§;
         _loc2_.§"F§ = param1.§>@§;
         _loc2_.§@!M§ = null;
         param1.§>@§ = _loc2_;
         if(_loc2_.§"F§)
         {
            _loc2_.§"F§.§@!M§ = _loc2_;
         }
         ++param1.§1e§;
      }
      
      public function §@!E§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§>@§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§"F§;
         }
         if(_loc2_.§ case§)
         {
            _loc2_.§ case§.§;A§ = _loc2_.§;A§;
         }
         if(_loc2_.§;A§)
         {
            _loc2_.§;A§.§ case§ = _loc2_.§ case§;
         }
         if(_loc2_.§"F§)
         {
            _loc2_.§"F§.§@!M§ = _loc2_.§@!M§;
         }
         if(_loc2_.§@!M§)
         {
            _loc2_.§@!M§.§"F§ = _loc2_.§"F§;
         }
         if(this.§2_§ == _loc2_)
         {
            this.§2_§ = _loc2_.§;A§;
         }
         if(param1.§>@§ == _loc2_)
         {
            param1.§>@§ = _loc2_.§"F§;
         }
         --param1.§1e§;
         --this.§8y§;
      }
      
      public function §^!<§() : void
      {
         while(this.§2_§)
         {
            this.§@!E§(this.§2_§.§`!"§);
         }
      }
      
      public function §5<§() : b2Controller
      {
         return this.§!J§;
      }
      
      public function §#!"§() : b2World
      {
         return this.m_world;
      }
      
      public function §'E§() : b2ControllerEdge
      {
         return this.§2_§;
      }
   }
}
