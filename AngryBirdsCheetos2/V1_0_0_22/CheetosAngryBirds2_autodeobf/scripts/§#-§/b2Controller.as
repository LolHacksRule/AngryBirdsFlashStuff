package §#-§
{
   import § o§.b2Body;
   import § o§.b2DebugDraw;
   import § o§.b2TimeStep;
   import § o§.b2World;
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §-![§:b2Controller;
      
      b2internal var §`D§:b2Controller;
      
      protected var §%! §:b2ControllerEdge;
      
      protected var §`#§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §+"§(param1:b2TimeStep) : void
      {
      }
      
      public function §!!d§(param1:b2DebugDraw) : void
      {
      }
      
      public function §^!,§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§^&§ = this;
         _loc2_.§%!_§ = param1;
         _loc2_.§<0§ = this.§%! §;
         _loc2_.§%t§ = null;
         this.§%! § = _loc2_;
         if(_loc2_.§<0§)
         {
            _loc2_.§<0§.§%t§ = _loc2_;
         }
         ++this.§`#§;
         _loc2_.§4p§ = param1.§3j§;
         _loc2_.§`X§ = null;
         param1.§3j§ = _loc2_;
         if(_loc2_.§4p§)
         {
            _loc2_.§4p§.§`X§ = _loc2_;
         }
         ++param1.§7!"§;
      }
      
      public function §<%§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§3j§;
         while(_loc2_ && _loc2_.§^&§ != this)
         {
            _loc2_ = _loc2_.§4p§;
         }
         if(_loc2_.§%t§)
         {
            _loc2_.§%t§.§<0§ = _loc2_.§<0§;
         }
         if(_loc2_.§<0§)
         {
            _loc2_.§<0§.§%t§ = _loc2_.§%t§;
         }
         if(_loc2_.§4p§)
         {
            _loc2_.§4p§.§`X§ = _loc2_.§`X§;
         }
         if(_loc2_.§`X§)
         {
            _loc2_.§`X§.§4p§ = _loc2_.§4p§;
         }
         if(this.§%! § == _loc2_)
         {
            this.§%! § = _loc2_.§<0§;
         }
         if(param1.§3j§ == _loc2_)
         {
            param1.§3j§ = _loc2_.§4p§;
         }
         --param1.§7!"§;
         --this.§`#§;
      }
      
      public function §#R§() : void
      {
         while(this.§%! §)
         {
            this.§<%§(this.§%! §.§%!_§);
         }
      }
      
      public function §;!B§() : b2Controller
      {
         return this.§-![§;
      }
      
      public function §5h§() : b2World
      {
         return this.m_world;
      }
      
      public function §>B§() : b2ControllerEdge
      {
         return this.§%! §;
      }
   }
}
