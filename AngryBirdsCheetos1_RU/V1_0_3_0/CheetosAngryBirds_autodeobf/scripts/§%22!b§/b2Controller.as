package §"!b§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2DebugDraw;
   import §4]§.b2TimeStep;
   import §4]§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var § !P§:b2Controller;
      
      b2internal var §-%§:b2Controller;
      
      protected var §0E§:b2ControllerEdge;
      
      protected var §7!_§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §3!7§(param1:b2TimeStep) : void
      {
      }
      
      public function §2t§(param1:b2DebugDraw) : void
      {
      }
      
      public function §[v§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§>k§ = this;
         _loc2_.§-e§ = param1;
         _loc2_.§@U§ = this.§0E§;
         _loc2_.§@l§ = null;
         this.§0E§ = _loc2_;
         if(_loc2_.§@U§)
         {
            _loc2_.§@U§.§@l§ = _loc2_;
         }
         ++this.§7!_§;
         _loc2_.§@e§ = param1.§'B§;
         _loc2_.§%8§ = null;
         param1.§'B§ = _loc2_;
         if(_loc2_.§@e§)
         {
            _loc2_.§@e§.§%8§ = _loc2_;
         }
         ++param1.§1!G§;
      }
      
      public function §"?§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§'B§;
         while(_loc2_ && _loc2_.§>k§ != this)
         {
            _loc2_ = _loc2_.§@e§;
         }
         if(_loc2_.§@l§)
         {
            _loc2_.§@l§.§@U§ = _loc2_.§@U§;
         }
         if(_loc2_.§@U§)
         {
            _loc2_.§@U§.§@l§ = _loc2_.§@l§;
         }
         if(_loc2_.§@e§)
         {
            _loc2_.§@e§.§%8§ = _loc2_.§%8§;
         }
         if(_loc2_.§%8§)
         {
            _loc2_.§%8§.§@e§ = _loc2_.§@e§;
         }
         if(this.§0E§ == _loc2_)
         {
            this.§0E§ = _loc2_.§@U§;
         }
         if(param1.§'B§ == _loc2_)
         {
            param1.§'B§ = _loc2_.§@e§;
         }
         --param1.§1!G§;
         --this.§7!_§;
      }
      
      public function §2D§() : void
      {
         while(this.§0E§)
         {
            this.§"?§(this.§0E§.§-e§);
         }
      }
      
      public function §&6§() : b2Controller
      {
         return this.§ !P§;
      }
      
      public function §%'§() : b2World
      {
         return this.m_world;
      }
      
      public function §8[§() : b2ControllerEdge
      {
         return this.§0E§;
      }
   }
}
