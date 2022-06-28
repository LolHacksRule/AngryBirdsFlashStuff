package §"!G§
{
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2DebugDraw;
   import §]=§.b2TimeStep;
   import §]=§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,1§:b2Controller;
      
      b2internal var §7!Q§:b2Controller;
      
      protected var §3!e§:b2ControllerEdge;
      
      protected var §>!8§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §^l§(param1:b2TimeStep) : void
      {
      }
      
      public function §>[§(param1:b2DebugDraw) : void
      {
      }
      
      public function §>!L§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.§,S§ = param1;
         _loc2_.§@B§ = this.§3!e§;
         _loc2_.§3o§ = null;
         this.§3!e§ = _loc2_;
         if(_loc2_.§@B§)
         {
            _loc2_.§@B§.§3o§ = _loc2_;
         }
         ++this.§>!8§;
         _loc2_.§false§ = param1.§%!V§;
         _loc2_.§,!2§ = null;
         param1.§%!V§ = _loc2_;
         if(_loc2_.§false§)
         {
            _loc2_.§false§.§,!2§ = _loc2_;
         }
         ++param1.§2Z§;
      }
      
      public function §;! §(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§%!V§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§false§;
         }
         if(_loc2_.§3o§)
         {
            _loc2_.§3o§.§@B§ = _loc2_.§@B§;
         }
         if(_loc2_.§@B§)
         {
            _loc2_.§@B§.§3o§ = _loc2_.§3o§;
         }
         if(_loc2_.§false§)
         {
            _loc2_.§false§.§,!2§ = _loc2_.§,!2§;
         }
         if(_loc2_.§,!2§)
         {
            _loc2_.§,!2§.§false§ = _loc2_.§false§;
         }
         if(this.§3!e§ == _loc2_)
         {
            this.§3!e§ = _loc2_.§@B§;
         }
         if(param1.§%!V§ == _loc2_)
         {
            param1.§%!V§ = _loc2_.§false§;
         }
         --param1.§2Z§;
         --this.§>!8§;
      }
      
      public function §=!b§() : void
      {
         while(this.§3!e§)
         {
            this.§;! §(this.§3!e§.§,S§);
         }
      }
      
      public function §70§() : b2Controller
      {
         return this.§,1§;
      }
      
      public function §[Y§() : b2World
      {
         return this.m_world;
      }
      
      public function §%!k§() : b2ControllerEdge
      {
         return this.§3!e§;
      }
   }
}
