package §+!F§
{
   import § !t§.b2Body;
   import § !t§.b2DebugDraw;
   import § !t§.b2TimeStep;
   import § !t§.b2World;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var § <§:b2Controller;
      
      b2internal var §?!D§:b2Controller;
      
      protected var §-!2§:b2ControllerEdge;
      
      protected var §[b§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §&E§(param1:b2TimeStep) : void
      {
      }
      
      public function §"!,§(param1:b2DebugDraw) : void
      {
      }
      
      public function §2r§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§?!G§ = this;
         _loc2_.§`!s§ = param1;
         _loc2_.§for § = this.§-!2§;
         _loc2_.§%!n§ = null;
         this.§-!2§ = _loc2_;
         if(_loc2_.§for §)
         {
            _loc2_.§for §.§%!n§ = _loc2_;
         }
         ++this.§[b§;
         _loc2_.§7!c§ = param1.§`7§;
         _loc2_.§7!g§ = null;
         param1.§`7§ = _loc2_;
         if(_loc2_.§7!c§)
         {
            _loc2_.§7!c§.§7!g§ = _loc2_;
         }
         ++param1.§[w§;
      }
      
      public function §<![§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§`7§;
         while(_loc2_ && _loc2_.§?!G§ != this)
         {
            _loc2_ = _loc2_.§7!c§;
         }
         if(_loc2_.§%!n§)
         {
            _loc2_.§%!n§.§for § = _loc2_.§for §;
         }
         if(_loc2_.§for §)
         {
            _loc2_.§for §.§%!n§ = _loc2_.§%!n§;
         }
         if(_loc2_.§7!c§)
         {
            _loc2_.§7!c§.§7!g§ = _loc2_.§7!g§;
         }
         if(_loc2_.§7!g§)
         {
            _loc2_.§7!g§.§7!c§ = _loc2_.§7!c§;
         }
         if(this.§-!2§ == _loc2_)
         {
            this.§-!2§ = _loc2_.§for §;
         }
         if(param1.§`7§ == _loc2_)
         {
            param1.§`7§ = _loc2_.§7!c§;
         }
         --param1.§[w§;
         --this.§[b§;
      }
      
      public function §6N§() : void
      {
         while(this.§-!2§)
         {
            this.§<![§(this.§-!2§.§`!s§);
         }
      }
      
      public function §4!j§() : b2Controller
      {
         return this.§ <§;
      }
      
      public function §[j§() : b2World
      {
         return this.m_world;
      }
      
      public function §?!L§() : b2ControllerEdge
      {
         return this.§-!2§;
      }
   }
}
