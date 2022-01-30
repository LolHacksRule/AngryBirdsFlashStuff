package §]y§
{
   import §9"5§.b2Body;
   import §9"5§.b2DebugDraw;
   import §9"5§.b2TimeStep;
   import §9"5§.b2World;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §]4§:b2Controller;
      
      b2internal var §'"5§:b2Controller;
      
      protected var § p§:b2ControllerEdge;
      
      protected var §,L§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §9!s§(param1:b2TimeStep) : void
      {
      }
      
      public function §<!K§(param1:b2DebugDraw) : void
      {
      }
      
      public function §5!>§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§#!G§ = this.§ p§;
         _loc2_.§-`§ = null;
         this.§ p§ = _loc2_;
         if(_loc2_.§#!G§)
         {
            _loc2_.§#!G§.§-`§ = _loc2_;
         }
         ++this.§,L§;
         _loc2_.§7b§ = param1.§6!1§;
         _loc2_.§9I§ = null;
         param1.§6!1§ = _loc2_;
         if(_loc2_.§7b§)
         {
            _loc2_.§7b§.§9I§ = _loc2_;
         }
         ++param1.§&[§;
      }
      
      public function §6+§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§6!1§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§7b§;
         }
         if(_loc2_.§-`§)
         {
            _loc2_.§-`§.§#!G§ = _loc2_.§#!G§;
         }
         if(_loc2_.§#!G§)
         {
            _loc2_.§#!G§.§-`§ = _loc2_.§-`§;
         }
         if(_loc2_.§7b§)
         {
            _loc2_.§7b§.§9I§ = _loc2_.§9I§;
         }
         if(_loc2_.§9I§)
         {
            _loc2_.§9I§.§7b§ = _loc2_.§7b§;
         }
         if(this.§ p§ == _loc2_)
         {
            this.§ p§ = _loc2_.§#!G§;
         }
         if(param1.§6!1§ == _loc2_)
         {
            param1.§6!1§ = _loc2_.§7b§;
         }
         --param1.§&[§;
         --this.§,L§;
      }
      
      public function §9!C§() : void
      {
         while(this.§ p§)
         {
            this.§6+§(this.§ p§.body);
         }
      }
      
      public function §+"3§() : b2Controller
      {
         return this.§]4§;
      }
      
      public function §?!y§() : b2World
      {
         return this.m_world;
      }
      
      public function §?Q§() : b2ControllerEdge
      {
         return this.§ p§;
      }
   }
}
