package §2!@§
{
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2DebugDraw;
   import §?!F§.b2TimeStep;
   import §?!F§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §+[§:b2Controller;
      
      b2internal var §8§:b2Controller;
      
      protected var §3!1§:b2ControllerEdge;
      
      protected var §]+§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §4y§(param1:b2TimeStep) : void
      {
      }
      
      public function §#i§(param1:b2DebugDraw) : void
      {
      }
      
      public function §6!X§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§[>§ = this;
         _loc2_.§%b§ = param1;
         _loc2_.§%!X§ = this.§3!1§;
         _loc2_.§>!a§ = null;
         this.§3!1§ = _loc2_;
         if(_loc2_.§%!X§)
         {
            _loc2_.§%!X§.§>!a§ = _loc2_;
         }
         ++this.§]+§;
         _loc2_.§??§ = param1.§2!4§;
         _loc2_.§`,§ = null;
         param1.§2!4§ = _loc2_;
         if(_loc2_.§??§)
         {
            _loc2_.§??§.§`,§ = _loc2_;
         }
         ++param1.§>b§;
      }
      
      public function §[!c§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§2!4§;
         while(_loc2_ && _loc2_.§[>§ != this)
         {
            _loc2_ = _loc2_.§??§;
         }
         if(_loc2_.§>!a§)
         {
            _loc2_.§>!a§.§%!X§ = _loc2_.§%!X§;
         }
         if(_loc2_.§%!X§)
         {
            _loc2_.§%!X§.§>!a§ = _loc2_.§>!a§;
         }
         if(_loc2_.§??§)
         {
            _loc2_.§??§.§`,§ = _loc2_.§`,§;
         }
         if(_loc2_.§`,§)
         {
            _loc2_.§`,§.§??§ = _loc2_.§??§;
         }
         if(this.§3!1§ == _loc2_)
         {
            this.§3!1§ = _loc2_.§%!X§;
         }
         if(param1.§2!4§ == _loc2_)
         {
            param1.§2!4§ = _loc2_.§??§;
         }
         --param1.§>b§;
         --this.§]+§;
      }
      
      public function §&O§() : void
      {
         while(this.§3!1§)
         {
            this.§[!c§(this.§3!1§.§%b§);
         }
      }
      
      public function §'Q§() : b2Controller
      {
         return this.§+[§;
      }
      
      public function §&K§() : b2World
      {
         return this.m_world;
      }
      
      public function §]v§() : b2ControllerEdge
      {
         return this.§3!1§;
      }
   }
}
