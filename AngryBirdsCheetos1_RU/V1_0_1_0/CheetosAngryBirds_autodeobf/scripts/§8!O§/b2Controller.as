package §8!O§
{
   import §[x§.b2Body;
   import §[x§.b2DebugDraw;
   import §[x§.b2TimeStep;
   import §[x§.b2World;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §83§:b2Controller;
      
      b2internal var §]h§:b2Controller;
      
      protected var §"v§:b2ControllerEdge;
      
      protected var §]t§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §9w§(param1:b2TimeStep) : void
      {
      }
      
      public function §6$§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!$§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§,z§ = this;
         _loc2_.§^!_§ = param1;
         _loc2_.§`!F§ = this.§"v§;
         _loc2_.§#!L§ = null;
         this.§"v§ = _loc2_;
         if(_loc2_.§`!F§)
         {
            _loc2_.§`!F§.§#!L§ = _loc2_;
         }
         ++this.§]t§;
         _loc2_.§ each§ = param1.§]+§;
         _loc2_.§0!#§ = null;
         param1.§]+§ = _loc2_;
         if(_loc2_.§ each§)
         {
            _loc2_.§ each§.§0!#§ = _loc2_;
         }
         ++param1.§18§;
      }
      
      public function §case§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§]+§;
         while(_loc2_ && _loc2_.§,z§ != this)
         {
            _loc2_ = _loc2_.§ each§;
         }
         if(_loc2_.§#!L§)
         {
            _loc2_.§#!L§.§`!F§ = _loc2_.§`!F§;
         }
         if(_loc2_.§`!F§)
         {
            _loc2_.§`!F§.§#!L§ = _loc2_.§#!L§;
         }
         if(_loc2_.§ each§)
         {
            _loc2_.§ each§.§0!#§ = _loc2_.§0!#§;
         }
         if(_loc2_.§0!#§)
         {
            _loc2_.§0!#§.§ each§ = _loc2_.§ each§;
         }
         if(this.§"v§ == _loc2_)
         {
            this.§"v§ = _loc2_.§`!F§;
         }
         if(param1.§]+§ == _loc2_)
         {
            param1.§]+§ = _loc2_.§ each§;
         }
         --param1.§18§;
         --this.§]t§;
      }
      
      public function §8!a§() : void
      {
         while(this.§"v§)
         {
            this.§case§(this.§"v§.§^!_§);
         }
      }
      
      public function §&-§() : b2Controller
      {
         return this.§83§;
      }
      
      public function §8!'§() : b2World
      {
         return this.m_world;
      }
      
      public function §8!N§() : b2ControllerEdge
      {
         return this.§"v§;
      }
   }
}
