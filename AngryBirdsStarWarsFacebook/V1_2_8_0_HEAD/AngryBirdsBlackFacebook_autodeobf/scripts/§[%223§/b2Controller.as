package §["3§
{
   import §+#$§.b2Body;
   import §+#$§.b2DebugDraw;
   import §+#$§.b2TimeStep;
   import §+#$§.b2World;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §!"!§:b2Controller;
      
      b2internal var § #&§:b2Controller;
      
      protected var §,!A§:b2ControllerEdge;
      
      protected var §9#,§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §>"#§(param1:b2DebugDraw) : void
      {
      }
      
      public function §%j§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§>k§ = this;
         _loc2_.body = param1;
         _loc2_.§;4§ = this.§,!A§;
         _loc2_.§>!`§ = null;
         this.§,!A§ = _loc2_;
         if(_loc2_.§;4§)
         {
            _loc2_.§;4§.§>!`§ = _loc2_;
         }
         ++this.§9#,§;
         _loc2_.§7"!§ = param1.§?`§;
         _loc2_.§,i§ = null;
         param1.§?`§ = _loc2_;
         if(_loc2_.§7"!§)
         {
            _loc2_.§7"!§.§,i§ = _loc2_;
         }
         ++param1.§'"g§;
      }
      
      public function §<?§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§?`§;
         while(_loc2_ && _loc2_.§>k§ != this)
         {
            _loc2_ = _loc2_.§7"!§;
         }
         if(_loc2_.§>!`§)
         {
            _loc2_.§>!`§.§;4§ = _loc2_.§;4§;
         }
         if(_loc2_.§;4§)
         {
            _loc2_.§;4§.§>!`§ = _loc2_.§>!`§;
         }
         if(_loc2_.§7"!§)
         {
            _loc2_.§7"!§.§,i§ = _loc2_.§,i§;
         }
         if(_loc2_.§,i§)
         {
            _loc2_.§,i§.§7"!§ = _loc2_.§7"!§;
         }
         if(this.§,!A§ == _loc2_)
         {
            this.§,!A§ = _loc2_.§;4§;
         }
         if(param1.§?`§ == _loc2_)
         {
            param1.§?`§ = _loc2_.§7"!§;
         }
         --param1.§'"g§;
         --this.§9#,§;
      }
      
      public function §#u§() : void
      {
         while(this.§,!A§)
         {
            this.§<?§(this.§,!A§.body);
         }
      }
      
      public function §>!>§() : b2Controller
      {
         return this.§!"!§;
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      public function §^!&§() : b2ControllerEdge
      {
         return this.§,!A§;
      }
   }
}
