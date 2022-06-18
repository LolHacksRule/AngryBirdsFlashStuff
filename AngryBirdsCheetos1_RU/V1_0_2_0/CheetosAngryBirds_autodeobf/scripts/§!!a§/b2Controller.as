package §!!a§
{
   import §4!&§.b2Body;
   import §4!&§.b2DebugDraw;
   import §4!&§.b2TimeStep;
   import §4!&§.b2World;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §1!A§:b2Controller;
      
      b2internal var §2!J§:b2Controller;
      
      protected var §]$§:b2ControllerEdge;
      
      protected var §`!K§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §&!T§(param1:b2TimeStep) : void
      {
      }
      
      public function §3a§(param1:b2DebugDraw) : void
      {
      }
      
      public function §2i§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§5!B§ = this;
         _loc2_.§&W§ = param1;
         _loc2_.§=y§ = this.§]$§;
         _loc2_.§0+§ = null;
         this.§]$§ = _loc2_;
         if(_loc2_.§=y§)
         {
            _loc2_.§=y§.§0+§ = _loc2_;
         }
         ++this.§`!K§;
         _loc2_.§#!Y§ = param1.§5!S§;
         _loc2_.§<!Z§ = null;
         param1.§5!S§ = _loc2_;
         if(_loc2_.§#!Y§)
         {
            _loc2_.§#!Y§.§<!Z§ = _loc2_;
         }
         ++param1.§8%§;
      }
      
      public function §3!<§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§5!S§;
         while(_loc2_ && _loc2_.§5!B§ != this)
         {
            _loc2_ = _loc2_.§#!Y§;
         }
         if(_loc2_.§0+§)
         {
            _loc2_.§0+§.§=y§ = _loc2_.§=y§;
         }
         if(_loc2_.§=y§)
         {
            _loc2_.§=y§.§0+§ = _loc2_.§0+§;
         }
         if(_loc2_.§#!Y§)
         {
            _loc2_.§#!Y§.§<!Z§ = _loc2_.§<!Z§;
         }
         if(_loc2_.§<!Z§)
         {
            _loc2_.§<!Z§.§#!Y§ = _loc2_.§#!Y§;
         }
         if(this.§]$§ == _loc2_)
         {
            this.§]$§ = _loc2_.§=y§;
         }
         if(param1.§5!S§ == _loc2_)
         {
            param1.§5!S§ = _loc2_.§#!Y§;
         }
         --param1.§8%§;
         --this.§`!K§;
      }
      
      public function §1]§() : void
      {
         while(this.§]$§)
         {
            this.§3!<§(this.§]$§.§&W§);
         }
      }
      
      public function §'&§() : b2Controller
      {
         return this.§1!A§;
      }
      
      public function §6Z§() : b2World
      {
         return this.m_world;
      }
      
      public function §4N§() : b2ControllerEdge
      {
         return this.§]$§;
      }
   }
}
