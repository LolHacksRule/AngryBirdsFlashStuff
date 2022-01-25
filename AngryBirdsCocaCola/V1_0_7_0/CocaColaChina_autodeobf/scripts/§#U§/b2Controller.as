package §#U§
{
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2DebugDraw;
   import §4U§.b2TimeStep;
   import §4U§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §^!B§:b2Controller;
      
      b2internal var §4d§:b2Controller;
      
      protected var §=!>§:b2ControllerEdge;
      
      protected var §9v§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §>!7§(param1:b2TimeStep) : void
      {
      }
      
      public function §+6§(param1:b2DebugDraw) : void
      {
      }
      
      public function §,[§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§>o§ = this;
         _loc2_.§=!N§ = param1;
         _loc2_.§!!"§ = this.§=!>§;
         _loc2_.§=e§ = null;
         this.§=!>§ = _loc2_;
         if(_loc2_.§!!"§)
         {
            _loc2_.§!!"§.§=e§ = _loc2_;
         }
         ++this.§9v§;
         _loc2_.§1!c§ = param1.§1N§;
         _loc2_.§!!L§ = null;
         param1.§1N§ = _loc2_;
         if(_loc2_.§1!c§)
         {
            _loc2_.§1!c§.§!!L§ = _loc2_;
         }
         ++param1.§>!a§;
      }
      
      public function §5!'§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1N§;
         while(_loc2_ && _loc2_.§>o§ != this)
         {
            _loc2_ = _loc2_.§1!c§;
         }
         if(_loc2_.§=e§)
         {
            _loc2_.§=e§.§!!"§ = _loc2_.§!!"§;
         }
         if(_loc2_.§!!"§)
         {
            _loc2_.§!!"§.§=e§ = _loc2_.§=e§;
         }
         if(_loc2_.§1!c§)
         {
            _loc2_.§1!c§.§!!L§ = _loc2_.§!!L§;
         }
         if(_loc2_.§!!L§)
         {
            _loc2_.§!!L§.§1!c§ = _loc2_.§1!c§;
         }
         if(this.§=!>§ == _loc2_)
         {
            this.§=!>§ = _loc2_.§!!"§;
         }
         if(param1.§1N§ == _loc2_)
         {
            param1.§1N§ = _loc2_.§1!c§;
         }
         --param1.§>!a§;
         --this.§9v§;
      }
      
      public function § !J§() : void
      {
         while(this.§=!>§)
         {
            this.§5!'§(this.§=!>§.§=!N§);
         }
      }
      
      public function §#!3§() : b2Controller
      {
         return this.§^!B§;
      }
      
      public function §,!$§() : b2World
      {
         return this.m_world;
      }
      
      public function §'j§() : b2ControllerEdge
      {
         return this.§=!>§;
      }
   }
}
