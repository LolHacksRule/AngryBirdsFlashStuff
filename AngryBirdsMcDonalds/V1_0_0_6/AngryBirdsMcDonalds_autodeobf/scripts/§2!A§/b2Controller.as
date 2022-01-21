package §2!A§
{
   import §7!5§.b2Body;
   import §7!5§.b2DebugDraw;
   import §7!5§.b2TimeStep;
   import §7!5§.b2World;
   import §7!Y§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §%&§:b2Controller;
      
      b2internal var §;!Z§:b2Controller;
      
      protected var §^3§:b2ControllerEdge;
      
      protected var §,l§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §%!@§(param1:b2TimeStep) : void
      {
      }
      
      public function §1y§(param1:b2DebugDraw) : void
      {
      }
      
      public function §=@§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§8j§ = this;
         _loc2_.§#U§ = param1;
         _loc2_.§ y§ = this.§^3§;
         _loc2_.§1!C§ = null;
         this.§^3§ = _loc2_;
         if(_loc2_.§ y§)
         {
            _loc2_.§ y§.§1!C§ = _loc2_;
         }
         ++this.§,l§;
         _loc2_.§#!-§ = param1.§@!P§;
         _loc2_.§,! § = null;
         param1.§@!P§ = _loc2_;
         if(_loc2_.§#!-§)
         {
            _loc2_.§#!-§.§,! § = _loc2_;
         }
         ++param1.§3!l§;
      }
      
      public function §+!'§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§@!P§;
         while(_loc2_ && _loc2_.§8j§ != this)
         {
            _loc2_ = _loc2_.§#!-§;
         }
         if(_loc2_.§1!C§)
         {
            _loc2_.§1!C§.§ y§ = _loc2_.§ y§;
         }
         if(_loc2_.§ y§)
         {
            _loc2_.§ y§.§1!C§ = _loc2_.§1!C§;
         }
         if(_loc2_.§#!-§)
         {
            _loc2_.§#!-§.§,! § = _loc2_.§,! §;
         }
         if(_loc2_.§,! §)
         {
            _loc2_.§,! §.§#!-§ = _loc2_.§#!-§;
         }
         if(this.§^3§ == _loc2_)
         {
            this.§^3§ = _loc2_.§ y§;
         }
         if(param1.§@!P§ == _loc2_)
         {
            param1.§@!P§ = _loc2_.§#!-§;
         }
         --param1.§3!l§;
         --this.§,l§;
      }
      
      public function §;o§() : void
      {
         while(this.§^3§)
         {
            this.§+!'§(this.§^3§.§#U§);
         }
      }
      
      public function §5w§() : b2Controller
      {
         return this.§%&§;
      }
      
      public function §?!8§() : b2World
      {
         return this.m_world;
      }
      
      public function §=[§() : b2ControllerEdge
      {
         return this.§^3§;
      }
   }
}
