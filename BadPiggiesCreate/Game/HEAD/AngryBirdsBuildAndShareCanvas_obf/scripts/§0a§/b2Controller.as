package §0a§
{
   import §"J§.b2Body;
   import §"J§.b2DebugDraw;
   import §"J§.b2TimeStep;
   import §"J§.b2World;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7!'§:b2Controller;
      
      b2internal var §+!w§:b2Controller;
      
      protected var §[_§:b2ControllerEdge;
      
      protected var §7!h§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §^!6§(param1:b2TimeStep) : void
      {
      }
      
      public function §'c§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@!O§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§=R§ = this;
         _loc2_.§%+§ = param1;
         _loc2_.§>!#§ = this.§[_§;
         _loc2_.§@!Z§ = null;
         this.§[_§ = _loc2_;
         if(_loc2_.§>!#§)
         {
            _loc2_.§>!#§.§@!Z§ = _loc2_;
         }
         ++this.§7!h§;
         _loc2_.§<1§ = param1.§`"=§;
         _loc2_.§7f§ = null;
         param1.§`"=§ = _loc2_;
         if(_loc2_.§<1§)
         {
            _loc2_.§<1§.§7f§ = _loc2_;
         }
         ++param1.§-0§;
      }
      
      public function §>"<§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§`"=§;
         while(_loc2_ && _loc2_.§=R§ != this)
         {
            _loc2_ = _loc2_.§<1§;
         }
         if(_loc2_.§@!Z§)
         {
            _loc2_.§@!Z§.§>!#§ = _loc2_.§>!#§;
         }
         if(_loc2_.§>!#§)
         {
            _loc2_.§>!#§.§@!Z§ = _loc2_.§@!Z§;
         }
         if(_loc2_.§<1§)
         {
            _loc2_.§<1§.§7f§ = _loc2_.§7f§;
         }
         if(_loc2_.§7f§)
         {
            _loc2_.§7f§.§<1§ = _loc2_.§<1§;
         }
         if(this.§[_§ == _loc2_)
         {
            this.§[_§ = _loc2_.§>!#§;
         }
         if(param1.§`"=§ == _loc2_)
         {
            param1.§`"=§ = _loc2_.§<1§;
         }
         --param1.§-0§;
         --this.§7!h§;
      }
      
      public function §"F§() : void
      {
         while(this.§[_§)
         {
            this.§>"<§(this.§[_§.§%+§);
         }
      }
      
      public function §7"3§() : b2Controller
      {
         return this.§7!'§;
      }
      
      public function §4K§() : b2World
      {
         return this.m_world;
      }
      
      public function §&"2§() : b2ControllerEdge
      {
         return this.§[_§;
      }
   }
}
