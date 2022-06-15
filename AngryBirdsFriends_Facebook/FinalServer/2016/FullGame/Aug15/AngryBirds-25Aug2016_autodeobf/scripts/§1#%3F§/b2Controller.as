package §1#?§
{
   import §0H§.b2internal;
   import §=#n§.b2Body;
   import §=#n§.b2DebugDraw;
   import §=#n§.b2TimeStep;
   import §=#n§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §@##§:b2Controller;
      
      b2internal var §+"j§:b2Controller;
      
      protected var §,"#§:b2ControllerEdge;
      
      protected var §0$"§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §%c§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@n§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§#0§ = this;
         _loc2_.body = param1;
         _loc2_.§,#6§ = this.§,"#§;
         _loc2_.§"t§ = null;
         this.§,"#§ = _loc2_;
         if(_loc2_.§,#6§)
         {
            _loc2_.§,#6§.§"t§ = _loc2_;
         }
         ++this.§0$"§;
         _loc2_.§!!O§ = param1.§@#l§;
         _loc2_.§0# § = null;
         param1.§@#l§ = _loc2_;
         if(_loc2_.§!!O§)
         {
            _loc2_.§!!O§.§0# § = _loc2_;
         }
         ++param1.§@"=§;
      }
      
      public function §8?§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§@#l§;
         while(_loc2_ && _loc2_.§#0§ != this)
         {
            _loc2_ = _loc2_.§!!O§;
         }
         if(_loc2_.§"t§)
         {
            _loc2_.§"t§.§,#6§ = _loc2_.§,#6§;
         }
         if(_loc2_.§,#6§)
         {
            _loc2_.§,#6§.§"t§ = _loc2_.§"t§;
         }
         if(_loc2_.§!!O§)
         {
            _loc2_.§!!O§.§0# § = _loc2_.§0# §;
         }
         if(_loc2_.§0# §)
         {
            _loc2_.§0# §.§!!O§ = _loc2_.§!!O§;
         }
         if(this.§,"#§ == _loc2_)
         {
            this.§,"#§ = _loc2_.§,#6§;
         }
         if(param1.§@#l§ == _loc2_)
         {
            param1.§@#l§ = _loc2_.§!!O§;
         }
         --param1.§@"=§;
         --this.§0$"§;
      }
      
      public function §%#t§() : void
      {
         while(this.§,"#§)
         {
            this.§8?§(this.§,"#§.body);
         }
      }
      
      public function § !V§() : b2Controller
      {
         return this.§@##§;
      }
      
      public function §[$9§() : b2World
      {
         return this.m_world;
      }
      
      public function §else §() : b2ControllerEdge
      {
         return this.§,"#§;
      }
   }
}
