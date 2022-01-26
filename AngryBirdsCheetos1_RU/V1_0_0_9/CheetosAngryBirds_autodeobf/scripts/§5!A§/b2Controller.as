package §5!A§
{
   import §!!B§.b2Body;
   import §!!B§.b2DebugDraw;
   import §!!B§.b2TimeStep;
   import §!!B§.b2World;
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §6!#§:b2Controller;
      
      b2internal var §6+§:b2Controller;
      
      protected var §#!W§:b2ControllerEdge;
      
      protected var §@!5§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §]^§(param1:b2TimeStep) : void
      {
      }
      
      public function §-f§(param1:b2DebugDraw) : void
      {
      }
      
      public function §%K§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§@!H§ = this;
         _loc2_.§^!>§ = param1;
         _loc2_.§break§ = this.§#!W§;
         _loc2_.§%[§ = null;
         this.§#!W§ = _loc2_;
         if(_loc2_.§break§)
         {
            _loc2_.§break§.§%[§ = _loc2_;
         }
         ++this.§@!5§;
         _loc2_.§;A§ = param1.§;!-§;
         _loc2_.§[W§ = null;
         param1.§;!-§ = _loc2_;
         if(_loc2_.§;A§)
         {
            _loc2_.§;A§.§[W§ = _loc2_;
         }
         ++param1.§+K§;
      }
      
      public function §0!W§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§;!-§;
         while(_loc2_ && _loc2_.§@!H§ != this)
         {
            _loc2_ = _loc2_.§;A§;
         }
         if(_loc2_.§%[§)
         {
            _loc2_.§%[§.§break§ = _loc2_.§break§;
         }
         if(_loc2_.§break§)
         {
            _loc2_.§break§.§%[§ = _loc2_.§%[§;
         }
         if(_loc2_.§;A§)
         {
            _loc2_.§;A§.§[W§ = _loc2_.§[W§;
         }
         if(_loc2_.§[W§)
         {
            _loc2_.§[W§.§;A§ = _loc2_.§;A§;
         }
         if(this.§#!W§ == _loc2_)
         {
            this.§#!W§ = _loc2_.§break§;
         }
         if(param1.§;!-§ == _loc2_)
         {
            param1.§;!-§ = _loc2_.§;A§;
         }
         --param1.§+K§;
         --this.§@!5§;
      }
      
      public function §"R§() : void
      {
         while(this.§#!W§)
         {
            this.§0!W§(this.§#!W§.§^!>§);
         }
      }
      
      public function §3q§() : b2Controller
      {
         return this.§6!#§;
      }
      
      public function §8!`§() : b2World
      {
         return this.m_world;
      }
      
      public function §@+§() : b2ControllerEdge
      {
         return this.§#!W§;
      }
   }
}
