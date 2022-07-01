package §`n§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2DebugDraw;
   import §=!c§.b2TimeStep;
   import §=!c§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §4!c§:b2Controller;
      
      b2internal var §^!`§:b2Controller;
      
      protected var §@4§:b2ControllerEdge;
      
      protected var §'![§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §&"%§(param1:b2TimeStep) : void
      {
      }
      
      public function §]H§(param1:b2DebugDraw) : void
      {
      }
      
      public function §78§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§=!@§ = this.§@4§;
         _loc2_.§`G§ = null;
         this.§@4§ = _loc2_;
         if(_loc2_.§=!@§)
         {
            _loc2_.§=!@§.§`G§ = _loc2_;
         }
         ++this.§'![§;
         _loc2_.§#3§ = param1.§1!Z§;
         _loc2_.§4!A§ = null;
         param1.§1!Z§ = _loc2_;
         if(_loc2_.§#3§)
         {
            _loc2_.§#3§.§4!A§ = _loc2_;
         }
         ++param1.§!!N§;
      }
      
      public function § if§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1!Z§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§#3§;
         }
         if(_loc2_.§`G§)
         {
            _loc2_.§`G§.§=!@§ = _loc2_.§=!@§;
         }
         if(_loc2_.§=!@§)
         {
            _loc2_.§=!@§.§`G§ = _loc2_.§`G§;
         }
         if(_loc2_.§#3§)
         {
            _loc2_.§#3§.§4!A§ = _loc2_.§4!A§;
         }
         if(_loc2_.§4!A§)
         {
            _loc2_.§4!A§.§#3§ = _loc2_.§#3§;
         }
         if(this.§@4§ == _loc2_)
         {
            this.§@4§ = _loc2_.§=!@§;
         }
         if(param1.§1!Z§ == _loc2_)
         {
            param1.§1!Z§ = _loc2_.§#3§;
         }
         --param1.§!!N§;
         --this.§'![§;
      }
      
      public function §<"§() : void
      {
         while(this.§@4§)
         {
            this.§ if§(this.§@4§.body);
         }
      }
      
      public function §<b§() : b2Controller
      {
         return this.§4!c§;
      }
      
      public function §=W§() : b2World
      {
         return this.m_world;
      }
      
      public function §<n§() : b2ControllerEdge
      {
         return this.§@4§;
      }
   }
}
