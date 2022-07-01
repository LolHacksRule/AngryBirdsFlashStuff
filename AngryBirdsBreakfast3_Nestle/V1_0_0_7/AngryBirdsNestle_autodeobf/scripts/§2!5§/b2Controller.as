package §2!5§
{
   import §!r§.b2internal;
   import §0!j§.b2Body;
   import §0!j§.b2DebugDraw;
   import §0!j§.b2TimeStep;
   import §0!j§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0!&§:b2Controller;
      
      b2internal var §9"4§:b2Controller;
      
      protected var §;a§:b2ControllerEdge;
      
      protected var §[f§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §8C§(param1:b2TimeStep) : void
      {
      }
      
      public function §=!F§(param1:b2DebugDraw) : void
      {
      }
      
      public function §9!w§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§^!?§ = this.§;a§;
         _loc2_.§<h§ = null;
         this.§;a§ = _loc2_;
         if(_loc2_.§^!?§)
         {
            _loc2_.§^!?§.§<h§ = _loc2_;
         }
         ++this.§[f§;
         _loc2_.§ !P§ = param1.§!!1§;
         _loc2_.§32§ = null;
         param1.§!!1§ = _loc2_;
         if(_loc2_.§ !P§)
         {
            _loc2_.§ !P§.§32§ = _loc2_;
         }
         ++param1.§6!0§;
      }
      
      public function §+r§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§!!1§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§ !P§;
         }
         if(_loc2_.§<h§)
         {
            _loc2_.§<h§.§^!?§ = _loc2_.§^!?§;
         }
         if(_loc2_.§^!?§)
         {
            _loc2_.§^!?§.§<h§ = _loc2_.§<h§;
         }
         if(_loc2_.§ !P§)
         {
            _loc2_.§ !P§.§32§ = _loc2_.§32§;
         }
         if(_loc2_.§32§)
         {
            _loc2_.§32§.§ !P§ = _loc2_.§ !P§;
         }
         if(this.§;a§ == _loc2_)
         {
            this.§;a§ = _loc2_.§^!?§;
         }
         if(param1.§!!1§ == _loc2_)
         {
            param1.§!!1§ = _loc2_.§ !P§;
         }
         --param1.§6!0§;
         --this.§[f§;
      }
      
      public function §4!z§() : void
      {
         while(this.§;a§)
         {
            this.§+r§(this.§;a§.body);
         }
      }
      
      public function §+!E§() : b2Controller
      {
         return this.§0!&§;
      }
      
      public function §;"#§() : b2World
      {
         return this.m_world;
      }
      
      public function §1!h§() : b2ControllerEdge
      {
         return this.§;a§;
      }
   }
}
