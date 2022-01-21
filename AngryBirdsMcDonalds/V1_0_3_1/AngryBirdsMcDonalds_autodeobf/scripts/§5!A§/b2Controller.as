package §5!A§
{
   import §&x§.b2Body;
   import §&x§.b2DebugDraw;
   import §&x§.b2TimeStep;
   import §&x§.b2World;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §18§:b2Controller;
      
      b2internal var §=!W§:b2Controller;
      
      protected var §0!,§:b2ControllerEdge;
      
      protected var §7!N§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4s§(param1:b2TimeStep) : void
      {
      }
      
      public function §?!;§(param1:b2DebugDraw) : void
      {
      }
      
      public function §[w§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§[I§ = this;
         _loc2_.§0L§ = param1;
         _loc2_.§,a§ = this.§0!,§;
         _loc2_.§'!P§ = null;
         this.§0!,§ = _loc2_;
         if(_loc2_.§,a§)
         {
            _loc2_.§,a§.§'!P§ = _loc2_;
         }
         ++this.§7!N§;
         _loc2_.§>!B§ = param1.§`J§;
         _loc2_.§#!>§ = null;
         param1.§`J§ = _loc2_;
         if(_loc2_.§>!B§)
         {
            _loc2_.§>!B§.§#!>§ = _loc2_;
         }
         ++param1.§^y§;
      }
      
      public function §!!a§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§`J§;
         while(_loc2_ && _loc2_.§[I§ != this)
         {
            _loc2_ = _loc2_.§>!B§;
         }
         if(_loc2_.§'!P§)
         {
            _loc2_.§'!P§.§,a§ = _loc2_.§,a§;
         }
         if(_loc2_.§,a§)
         {
            _loc2_.§,a§.§'!P§ = _loc2_.§'!P§;
         }
         if(_loc2_.§>!B§)
         {
            _loc2_.§>!B§.§#!>§ = _loc2_.§#!>§;
         }
         if(_loc2_.§#!>§)
         {
            _loc2_.§#!>§.§>!B§ = _loc2_.§>!B§;
         }
         if(this.§0!,§ == _loc2_)
         {
            this.§0!,§ = _loc2_.§,a§;
         }
         if(param1.§`J§ == _loc2_)
         {
            param1.§`J§ = _loc2_.§>!B§;
         }
         --param1.§^y§;
         --this.§7!N§;
      }
      
      public function §^6§() : void
      {
         while(this.§0!,§)
         {
            this.§!!a§(this.§0!,§.§0L§);
         }
      }
      
      public function §@!^§() : b2Controller
      {
         return this.§18§;
      }
      
      public function §0!G§() : b2World
      {
         return this.m_world;
      }
      
      public function §#s§() : b2ControllerEdge
      {
         return this.§0!,§;
      }
   }
}
