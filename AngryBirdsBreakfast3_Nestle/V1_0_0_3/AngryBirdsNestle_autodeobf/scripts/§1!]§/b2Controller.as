package §1!]§
{
   import § !%§.b2internal;
   import §;'§.b2Body;
   import §;'§.b2DebugDraw;
   import §;'§.b2TimeStep;
   import §;'§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §1F§:b2Controller;
      
      b2internal var §!!h§:b2Controller;
      
      protected var §1!z§:b2ControllerEdge;
      
      protected var §`Q§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §0!,§(param1:b2TimeStep) : void
      {
      }
      
      public function §-!E§(param1:b2DebugDraw) : void
      {
      }
      
      public function §3x§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§ § = this.§1!z§;
         _loc2_.§^"-§ = null;
         this.§1!z§ = _loc2_;
         if(_loc2_.§ §)
         {
            _loc2_.§ §.§^"-§ = _loc2_;
         }
         ++this.§`Q§;
         _loc2_.§7Q§ = param1.§5!V§;
         _loc2_.§;!0§ = null;
         param1.§5!V§ = _loc2_;
         if(_loc2_.§7Q§)
         {
            _loc2_.§7Q§.§;!0§ = _loc2_;
         }
         ++param1.§>z§;
      }
      
      public function §9!4§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§5!V§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§7Q§;
         }
         if(_loc2_.§^"-§)
         {
            _loc2_.§^"-§.§ § = _loc2_.§ §;
         }
         if(_loc2_.§ §)
         {
            _loc2_.§ §.§^"-§ = _loc2_.§^"-§;
         }
         if(_loc2_.§7Q§)
         {
            _loc2_.§7Q§.§;!0§ = _loc2_.§;!0§;
         }
         if(_loc2_.§;!0§)
         {
            _loc2_.§;!0§.§7Q§ = _loc2_.§7Q§;
         }
         if(this.§1!z§ == _loc2_)
         {
            this.§1!z§ = _loc2_.§ §;
         }
         if(param1.§5!V§ == _loc2_)
         {
            param1.§5!V§ = _loc2_.§7Q§;
         }
         --param1.§>z§;
         --this.§`Q§;
      }
      
      public function §&"2§() : void
      {
         while(this.§1!z§)
         {
            this.§9!4§(this.§1!z§.body);
         }
      }
      
      public function §6P§() : b2Controller
      {
         return this.§1F§;
      }
      
      public function §,"+§() : b2World
      {
         return this.m_world;
      }
      
      public function §1f§() : b2ControllerEdge
      {
         return this.§1!z§;
      }
   }
}
