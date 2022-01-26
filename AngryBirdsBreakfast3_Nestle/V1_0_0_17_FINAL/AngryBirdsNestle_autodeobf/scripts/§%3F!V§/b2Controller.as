package §?!V§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2DebugDraw;
   import §0"!§.b2TimeStep;
   import §0"!§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §6!c§:b2Controller;
      
      b2internal var §,!>§:b2Controller;
      
      protected var §4m§:b2ControllerEdge;
      
      protected var §1a§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §5!I§(param1:b2TimeStep) : void
      {
      }
      
      public function §&!I§(param1:b2DebugDraw) : void
      {
      }
      
      public function §#!K§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§%!>§ = this.§4m§;
         _loc2_.§<!z§ = null;
         this.§4m§ = _loc2_;
         if(_loc2_.§%!>§)
         {
            _loc2_.§%!>§.§<!z§ = _loc2_;
         }
         ++this.§1a§;
         _loc2_.§"!f§ = param1.§8!@§;
         _loc2_.§;!@§ = null;
         param1.§8!@§ = _loc2_;
         if(_loc2_.§"!f§)
         {
            _loc2_.§"!f§.§;!@§ = _loc2_;
         }
         ++param1.§#k§;
      }
      
      public function §2!R§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§8!@§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§"!f§;
         }
         if(_loc2_.§<!z§)
         {
            _loc2_.§<!z§.§%!>§ = _loc2_.§%!>§;
         }
         if(_loc2_.§%!>§)
         {
            _loc2_.§%!>§.§<!z§ = _loc2_.§<!z§;
         }
         if(_loc2_.§"!f§)
         {
            _loc2_.§"!f§.§;!@§ = _loc2_.§;!@§;
         }
         if(_loc2_.§;!@§)
         {
            _loc2_.§;!@§.§"!f§ = _loc2_.§"!f§;
         }
         if(this.§4m§ == _loc2_)
         {
            this.§4m§ = _loc2_.§%!>§;
         }
         if(param1.§8!@§ == _loc2_)
         {
            param1.§8!@§ = _loc2_.§"!f§;
         }
         --param1.§#k§;
         --this.§1a§;
      }
      
      public function §7Y§() : void
      {
         while(this.§4m§)
         {
            this.§2!R§(this.§4m§.body);
         }
      }
      
      public function §2!9§() : b2Controller
      {
         return this.§6!c§;
      }
      
      public function §#G§() : b2World
      {
         return this.m_world;
      }
      
      public function §#"1§() : b2ControllerEdge
      {
         return this.§4m§;
      }
   }
}
