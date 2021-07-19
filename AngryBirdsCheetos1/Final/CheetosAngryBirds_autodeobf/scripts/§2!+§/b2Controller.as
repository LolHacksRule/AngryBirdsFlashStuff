package §2!+§
{
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2DebugDraw;
   import §`j§.b2TimeStep;
   import §`j§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §#!&§:b2Controller;
      
      b2internal var §8`§:b2Controller;
      
      protected var §<!5§:b2ControllerEdge;
      
      protected var §,z§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §6k§(param1:b2TimeStep) : void
      {
      }
      
      public function §>!5§(param1:b2DebugDraw) : void
      {
      }
      
      public function §>6§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§75§ = this;
         _loc2_.§?V§ = param1;
         _loc2_.§2t§ = this.§<!5§;
         _loc2_.§!!B§ = null;
         this.§<!5§ = _loc2_;
         if(_loc2_.§2t§)
         {
            _loc2_.§2t§.§!!B§ = _loc2_;
         }
         ++this.§,z§;
         _loc2_.§3!5§ = param1.§6V§;
         _loc2_.§@!X§ = null;
         param1.§6V§ = _loc2_;
         if(_loc2_.§3!5§)
         {
            _loc2_.§3!5§.§@!X§ = _loc2_;
         }
         ++param1.§+!V§;
      }
      
      public function §>D§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§6V§;
         while(_loc2_ && _loc2_.§75§ != this)
         {
            _loc2_ = _loc2_.§3!5§;
         }
         if(_loc2_.§!!B§)
         {
            _loc2_.§!!B§.§2t§ = _loc2_.§2t§;
         }
         if(_loc2_.§2t§)
         {
            _loc2_.§2t§.§!!B§ = _loc2_.§!!B§;
         }
         if(_loc2_.§3!5§)
         {
            _loc2_.§3!5§.§@!X§ = _loc2_.§@!X§;
         }
         if(_loc2_.§@!X§)
         {
            _loc2_.§@!X§.§3!5§ = _loc2_.§3!5§;
         }
         if(this.§<!5§ == _loc2_)
         {
            this.§<!5§ = _loc2_.§2t§;
         }
         if(param1.§6V§ == _loc2_)
         {
            param1.§6V§ = _loc2_.§3!5§;
         }
         --param1.§+!V§;
         --this.§,z§;
      }
      
      public function § C§() : void
      {
         while(this.§<!5§)
         {
            this.§>D§(this.§<!5§.§?V§);
         }
      }
      
      public function §[;§() : b2Controller
      {
         return this.§#!&§;
      }
      
      public function §`!5§() : b2World
      {
         return this.m_world;
      }
      
      public function §[!Z§() : b2ControllerEdge
      {
         return this.§<!5§;
      }
   }
}
