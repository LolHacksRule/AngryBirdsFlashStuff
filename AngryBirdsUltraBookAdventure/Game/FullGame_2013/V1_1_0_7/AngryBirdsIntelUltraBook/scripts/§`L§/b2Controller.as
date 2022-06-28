package §`L§
{
   import §#I§.b2Body;
   import §#I§.b2DebugDraw;
   import §#I§.b2TimeStep;
   import §#I§.b2World;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §=!8§:b2Controller;
      
      b2internal var §+!3§:b2Controller;
      
      protected var § set§:b2ControllerEdge;
      
      protected var §=!t§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §8!&§(param1:b2TimeStep) : void
      {
      }
      
      public function §3P§(param1:b2DebugDraw) : void
      {
      }
      
      public function §`!n§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ Q§ = this;
         _loc2_.§>!2§ = param1;
         _loc2_.§!1§ = this.§ set§;
         _loc2_.§'>§ = null;
         this.§ set§ = _loc2_;
         if(_loc2_.§!1§)
         {
            _loc2_.§!1§.§'>§ = _loc2_;
         }
         ++this.§=!t§;
         _loc2_.§1p§ = param1.§'z§;
         _loc2_.§+!o§ = null;
         param1.§'z§ = _loc2_;
         if(_loc2_.§1p§)
         {
            _loc2_.§1p§.§+!o§ = _loc2_;
         }
         ++param1.§8H§;
      }
      
      public function §]>§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§'z§;
         while(_loc2_ && _loc2_.§ Q§ != this)
         {
            _loc2_ = _loc2_.§1p§;
         }
         if(_loc2_.§'>§)
         {
            _loc2_.§'>§.§!1§ = _loc2_.§!1§;
         }
         if(_loc2_.§!1§)
         {
            _loc2_.§!1§.§'>§ = _loc2_.§'>§;
         }
         if(_loc2_.§1p§)
         {
            _loc2_.§1p§.§+!o§ = _loc2_.§+!o§;
         }
         if(_loc2_.§+!o§)
         {
            _loc2_.§+!o§.§1p§ = _loc2_.§1p§;
         }
         if(this.§ set§ == _loc2_)
         {
            this.§ set§ = _loc2_.§!1§;
         }
         if(param1.§'z§ == _loc2_)
         {
            param1.§'z§ = _loc2_.§1p§;
         }
         --param1.§8H§;
         --this.§=!t§;
      }
      
      public function §6!6§() : void
      {
         while(this.§ set§)
         {
            this.§]>§(this.§ set§.§>!2§);
         }
      }
      
      public function §?!^§() : b2Controller
      {
         return this.§=!8§;
      }
      
      public function §var §() : b2World
      {
         return this.m_world;
      }
      
      public function §2x§() : b2ControllerEdge
      {
         return this.§ set§;
      }
   }
}
