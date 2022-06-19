package §8!q§
{
   import § !k§.b2Body;
   import § !k§.b2DebugDraw;
   import § !k§.b2TimeStep;
   import § !k§.b2World;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7"@§:b2Controller;
      
      b2internal var §=>§:b2Controller;
      
      protected var §=0§:b2ControllerEdge;
      
      protected var §1m§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §,"9§(param1:b2TimeStep) : void
      {
      }
      
      public function §8!M§(param1:b2DebugDraw) : void
      {
      }
      
      public function §;";§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§&N§ = this;
         _loc2_.§[!i§ = param1;
         _loc2_.§`!z§ = this.§=0§;
         _loc2_.§5!R§ = null;
         this.§=0§ = _loc2_;
         if(_loc2_.§`!z§)
         {
            _loc2_.§`!z§.§5!R§ = _loc2_;
         }
         ++this.§1m§;
         _loc2_.§#"C§ = param1.§+!n§;
         _loc2_.§"!5§ = null;
         param1.§+!n§ = _loc2_;
         if(_loc2_.§#"C§)
         {
            _loc2_.§#"C§.§"!5§ = _loc2_;
         }
         ++param1.§9y§;
      }
      
      public function §@!u§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§+!n§;
         while(_loc2_ && _loc2_.§&N§ != this)
         {
            _loc2_ = _loc2_.§#"C§;
         }
         if(_loc2_.§5!R§)
         {
            _loc2_.§5!R§.§`!z§ = _loc2_.§`!z§;
         }
         if(_loc2_.§`!z§)
         {
            _loc2_.§`!z§.§5!R§ = _loc2_.§5!R§;
         }
         if(_loc2_.§#"C§)
         {
            _loc2_.§#"C§.§"!5§ = _loc2_.§"!5§;
         }
         if(_loc2_.§"!5§)
         {
            _loc2_.§"!5§.§#"C§ = _loc2_.§#"C§;
         }
         if(this.§=0§ == _loc2_)
         {
            this.§=0§ = _loc2_.§`!z§;
         }
         if(param1.§+!n§ == _loc2_)
         {
            param1.§+!n§ = _loc2_.§#"C§;
         }
         --param1.§9y§;
         --this.§1m§;
      }
      
      public function §?!+§() : void
      {
         while(this.§=0§)
         {
            this.§@!u§(this.§=0§.§[!i§);
         }
      }
      
      public function §&A§() : b2Controller
      {
         return this.§7"@§;
      }
      
      public function §!>§() : b2World
      {
         return this.m_world;
      }
      
      public function §8I§() : b2ControllerEdge
      {
         return this.§=0§;
      }
   }
}
