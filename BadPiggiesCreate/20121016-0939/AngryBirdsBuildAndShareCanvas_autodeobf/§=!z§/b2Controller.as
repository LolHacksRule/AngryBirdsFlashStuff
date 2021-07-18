package §=!z§
{
   import §+S§.b2Body;
   import §+S§.b2DebugDraw;
   import §+S§.b2TimeStep;
   import §+S§.b2World;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>""§:b2Controller;
      
      b2internal var §7b§:b2Controller;
      
      protected var §03§:b2ControllerEdge;
      
      protected var §&z§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §+!M§(param1:b2TimeStep) : void
      {
      }
      
      public function §=d§(param1:b2DebugDraw) : void
      {
      }
      
      public function §"[§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§#H§ = this;
         _loc2_.§&!§ = param1;
         _loc2_.§>!^§ = this.§03§;
         _loc2_.§`"#§ = null;
         this.§03§ = _loc2_;
         if(_loc2_.§>!^§)
         {
            _loc2_.§>!^§.§`"#§ = _loc2_;
         }
         ++this.§&z§;
         _loc2_.§=t§ = param1.§!n§;
         _loc2_.§1x§ = null;
         param1.§!n§ = _loc2_;
         if(_loc2_.§=t§)
         {
            _loc2_.§=t§.§1x§ = _loc2_;
         }
         ++param1.§;"<§;
      }
      
      public function §-A§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§!n§;
         while(_loc2_ && _loc2_.§#H§ != this)
         {
            _loc2_ = _loc2_.§=t§;
         }
         if(_loc2_.§`"#§)
         {
            _loc2_.§`"#§.§>!^§ = _loc2_.§>!^§;
         }
         if(_loc2_.§>!^§)
         {
            _loc2_.§>!^§.§`"#§ = _loc2_.§`"#§;
         }
         if(_loc2_.§=t§)
         {
            _loc2_.§=t§.§1x§ = _loc2_.§1x§;
         }
         if(_loc2_.§1x§)
         {
            _loc2_.§1x§.§=t§ = _loc2_.§=t§;
         }
         if(this.§03§ == _loc2_)
         {
            this.§03§ = _loc2_.§>!^§;
         }
         if(param1.§!n§ == _loc2_)
         {
            param1.§!n§ = _loc2_.§=t§;
         }
         --param1.§;"<§;
         --this.§&z§;
      }
      
      public function §^S§() : void
      {
         while(this.§03§)
         {
            this.§-A§(this.§03§.§&!§);
         }
      }
      
      public function §'!q§() : b2Controller
      {
         return this.§>""§;
      }
      
      public function §>[§() : b2World
      {
         return this.m_world;
      }
      
      public function §6"$§() : b2ControllerEdge
      {
         return this.§03§;
      }
   }
}
