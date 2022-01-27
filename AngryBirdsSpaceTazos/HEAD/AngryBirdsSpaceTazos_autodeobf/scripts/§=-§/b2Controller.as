package §=-§
{
   import §'!a§.b2internal;
   import §9!K§.b2Body;
   import §9!K§.b2DebugDraw;
   import §9!K§.b2TimeStep;
   import §9!K§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §&!6§:b2Controller;
      
      b2internal var §9!§:b2Controller;
      
      protected var §5!!§:b2ControllerEdge;
      
      protected var §3" §:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function § !F§(param1:b2DebugDraw) : void
      {
      }
      
      public function §^!-§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§0!Q§ = this;
         _loc2_.§=";§ = param1;
         _loc2_.§6!=§ = this.§5!!§;
         _loc2_.§%P§ = null;
         this.§5!!§ = _loc2_;
         if(_loc2_.§6!=§)
         {
            _loc2_.§6!=§.§%P§ = _loc2_;
         }
         ++this.§3" §;
         _loc2_.§]w§ = param1.§5T§;
         _loc2_.§^!&§ = null;
         param1.§5T§ = _loc2_;
         if(_loc2_.§]w§)
         {
            _loc2_.§]w§.§^!&§ = _loc2_;
         }
         ++param1.§4!a§;
      }
      
      public function §<p§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§5T§;
         while(_loc2_ && _loc2_.§0!Q§ != this)
         {
            _loc2_ = _loc2_.§]w§;
         }
         if(_loc2_.§%P§)
         {
            _loc2_.§%P§.§6!=§ = _loc2_.§6!=§;
         }
         if(_loc2_.§6!=§)
         {
            _loc2_.§6!=§.§%P§ = _loc2_.§%P§;
         }
         if(_loc2_.§]w§)
         {
            _loc2_.§]w§.§^!&§ = _loc2_.§^!&§;
         }
         if(_loc2_.§^!&§)
         {
            _loc2_.§^!&§.§]w§ = _loc2_.§]w§;
         }
         if(this.§5!!§ == _loc2_)
         {
            this.§5!!§ = _loc2_.§6!=§;
         }
         if(param1.§5T§ == _loc2_)
         {
            param1.§5T§ = _loc2_.§]w§;
         }
         --param1.§4!a§;
         --this.§3" §;
      }
      
      public function §6!Y§() : void
      {
         while(this.§5!!§)
         {
            this.§<p§(this.§5!!§.§=";§);
         }
      }
      
      public function §1§() : b2Controller
      {
         return this.§&!6§;
      }
      
      public function §'!w§() : b2World
      {
         return this.m_world;
      }
      
      public function §1!B§() : b2ControllerEdge
      {
         return this.§5!!§;
      }
   }
}
