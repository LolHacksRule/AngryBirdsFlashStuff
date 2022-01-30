package §'!z§
{
   import §&!M§.b2Body;
   import §&!M§.b2DebugDraw;
   import §&!M§.b2TimeStep;
   import §&!M§.b2World;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §'!@§:b2Controller;
      
      b2internal var §]!9§:b2Controller;
      
      protected var §`6§:b2ControllerEdge;
      
      protected var §,b§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §;y§(param1:b2TimeStep) : void
      {
      }
      
      public function §8c§(param1:b2DebugDraw) : void
      {
      }
      
      public function §[!p§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§6h§ = this;
         _loc2_.§=`§ = param1;
         _loc2_.§-!G§ = this.§`6§;
         _loc2_.§^o§ = null;
         this.§`6§ = _loc2_;
         if(_loc2_.§-!G§)
         {
            _loc2_.§-!G§.§^o§ = _loc2_;
         }
         ++this.§,b§;
         _loc2_.§'6§ = param1.§2!t§;
         _loc2_.§7!O§ = null;
         param1.§2!t§ = _loc2_;
         if(_loc2_.§'6§)
         {
            _loc2_.§'6§.§7!O§ = _loc2_;
         }
         ++param1.§8+§;
      }
      
      public function § !B§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§2!t§;
         while(_loc2_ && _loc2_.§6h§ != this)
         {
            _loc2_ = _loc2_.§'6§;
         }
         if(_loc2_.§^o§)
         {
            _loc2_.§^o§.§-!G§ = _loc2_.§-!G§;
         }
         if(_loc2_.§-!G§)
         {
            _loc2_.§-!G§.§^o§ = _loc2_.§^o§;
         }
         if(_loc2_.§'6§)
         {
            _loc2_.§'6§.§7!O§ = _loc2_.§7!O§;
         }
         if(_loc2_.§7!O§)
         {
            _loc2_.§7!O§.§'6§ = _loc2_.§'6§;
         }
         if(this.§`6§ == _loc2_)
         {
            this.§`6§ = _loc2_.§-!G§;
         }
         if(param1.§2!t§ == _loc2_)
         {
            param1.§2!t§ = _loc2_.§'6§;
         }
         --param1.§8+§;
         --this.§,b§;
      }
      
      public function §?!w§() : void
      {
         while(this.§`6§)
         {
            this.§ !B§(this.§`6§.§=`§);
         }
      }
      
      public function §`!u§() : b2Controller
      {
         return this.§'!@§;
      }
      
      public function §&Q§() : b2World
      {
         return this.m_world;
      }
      
      public function §+!f§() : b2ControllerEdge
      {
         return this.§`6§;
      }
   }
}
