package §2!2§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2DebugDraw;
   import §=!U§.b2TimeStep;
   import §=!U§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §9`§:b2Controller;
      
      b2internal var §-s§:b2Controller;
      
      protected var §&!2§:b2ControllerEdge;
      
      protected var §3r§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §0!%§(param1:b2TimeStep) : void
      {
      }
      
      public function §5;§(param1:b2DebugDraw) : void
      {
      }
      
      public function § k§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§5]§ = this;
         _loc2_.§>U§ = param1;
         _loc2_.§`!Z§ = this.§&!2§;
         _loc2_.§2k§ = null;
         this.§&!2§ = _loc2_;
         if(_loc2_.§`!Z§)
         {
            _loc2_.§`!Z§.§2k§ = _loc2_;
         }
         ++this.§3r§;
         _loc2_.§8e§ = param1.§,h§;
         _loc2_.§#]§ = null;
         param1.§,h§ = _loc2_;
         if(_loc2_.§8e§)
         {
            _loc2_.§8e§.§#]§ = _loc2_;
         }
         ++param1.§%#§;
      }
      
      public function §2a§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,h§;
         while(_loc2_ && _loc2_.§5]§ != this)
         {
            _loc2_ = _loc2_.§8e§;
         }
         if(_loc2_.§2k§)
         {
            _loc2_.§2k§.§`!Z§ = _loc2_.§`!Z§;
         }
         if(_loc2_.§`!Z§)
         {
            _loc2_.§`!Z§.§2k§ = _loc2_.§2k§;
         }
         if(_loc2_.§8e§)
         {
            _loc2_.§8e§.§#]§ = _loc2_.§#]§;
         }
         if(_loc2_.§#]§)
         {
            _loc2_.§#]§.§8e§ = _loc2_.§8e§;
         }
         if(this.§&!2§ == _loc2_)
         {
            this.§&!2§ = _loc2_.§`!Z§;
         }
         if(param1.§,h§ == _loc2_)
         {
            param1.§,h§ = _loc2_.§8e§;
         }
         --param1.§%#§;
         --this.§3r§;
      }
      
      public function §<k§() : void
      {
         while(this.§&!2§)
         {
            this.§2a§(this.§&!2§.§>U§);
         }
      }
      
      public function §^r§() : b2Controller
      {
         return this.§9`§;
      }
      
      public function §=9§() : b2World
      {
         return this.m_world;
      }
      
      public function §&<§() : b2ControllerEdge
      {
         return this.§&!2§;
      }
   }
}
