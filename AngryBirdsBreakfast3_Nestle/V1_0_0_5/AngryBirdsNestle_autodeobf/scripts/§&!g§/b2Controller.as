package §&!g§
{
   import §,v§.b2Body;
   import §,v§.b2DebugDraw;
   import §,v§.b2TimeStep;
   import §,v§.b2World;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7!+§:b2Controller;
      
      b2internal var §true§:b2Controller;
      
      protected var §@n§:b2ControllerEdge;
      
      protected var §>F§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §9!b§(param1:b2TimeStep) : void
      {
      }
      
      public function §8"#§(param1:b2DebugDraw) : void
      {
      }
      
      public function §true §(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§,![§ = this.§@n§;
         _loc2_.§8!x§ = null;
         this.§@n§ = _loc2_;
         if(_loc2_.§,![§)
         {
            _loc2_.§,![§.§8!x§ = _loc2_;
         }
         ++this.§>F§;
         _loc2_.§1"1§ = param1.§8!J§;
         _loc2_.§7!L§ = null;
         param1.§8!J§ = _loc2_;
         if(_loc2_.§1"1§)
         {
            _loc2_.§1"1§.§7!L§ = _loc2_;
         }
         ++param1.§]!f§;
      }
      
      public function §9![§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§8!J§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§1"1§;
         }
         if(_loc2_.§8!x§)
         {
            _loc2_.§8!x§.§,![§ = _loc2_.§,![§;
         }
         if(_loc2_.§,![§)
         {
            _loc2_.§,![§.§8!x§ = _loc2_.§8!x§;
         }
         if(_loc2_.§1"1§)
         {
            _loc2_.§1"1§.§7!L§ = _loc2_.§7!L§;
         }
         if(_loc2_.§7!L§)
         {
            _loc2_.§7!L§.§1"1§ = _loc2_.§1"1§;
         }
         if(this.§@n§ == _loc2_)
         {
            this.§@n§ = _loc2_.§,![§;
         }
         if(param1.§8!J§ == _loc2_)
         {
            param1.§8!J§ = _loc2_.§1"1§;
         }
         --param1.§]!f§;
         --this.§>F§;
      }
      
      public function §11§() : void
      {
         while(this.§@n§)
         {
            this.§9![§(this.§@n§.body);
         }
      }
      
      public function §,h§() : b2Controller
      {
         return this.§7!+§;
      }
      
      public function §^6§() : b2World
      {
         return this.m_world;
      }
      
      public function §1!J§() : b2ControllerEdge
      {
         return this.§@n§;
      }
   }
}
