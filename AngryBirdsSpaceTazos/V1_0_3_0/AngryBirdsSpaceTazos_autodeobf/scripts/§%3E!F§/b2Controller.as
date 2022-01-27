package §>!F§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2DebugDraw;
   import §;`§.b2TimeStep;
   import §;`§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §+!>§:b2Controller;
      
      b2internal var §#!o§:b2Controller;
      
      protected var §[!C§:b2ControllerEdge;
      
      protected var §9!n§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §@!&§(param1:b2DebugDraw) : void
      {
      }
      
      public function §%!F§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§79§ = this;
         _loc2_.§'S§ = param1;
         _loc2_.§5!s§ = this.§[!C§;
         _loc2_.§;!m§ = null;
         this.§[!C§ = _loc2_;
         if(_loc2_.§5!s§)
         {
            _loc2_.§5!s§.§;!m§ = _loc2_;
         }
         ++this.§9!n§;
         _loc2_.§&<§ = param1.§+]§;
         _loc2_.§=h§ = null;
         param1.§+]§ = _loc2_;
         if(_loc2_.§&<§)
         {
            _loc2_.§&<§.§=h§ = _loc2_;
         }
         ++param1.§ !Y§;
      }
      
      public function §]b§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§+]§;
         while(_loc2_ && _loc2_.§79§ != this)
         {
            _loc2_ = _loc2_.§&<§;
         }
         if(_loc2_.§;!m§)
         {
            _loc2_.§;!m§.§5!s§ = _loc2_.§5!s§;
         }
         if(_loc2_.§5!s§)
         {
            _loc2_.§5!s§.§;!m§ = _loc2_.§;!m§;
         }
         if(_loc2_.§&<§)
         {
            _loc2_.§&<§.§=h§ = _loc2_.§=h§;
         }
         if(_loc2_.§=h§)
         {
            _loc2_.§=h§.§&<§ = _loc2_.§&<§;
         }
         if(this.§[!C§ == _loc2_)
         {
            this.§[!C§ = _loc2_.§5!s§;
         }
         if(param1.§+]§ == _loc2_)
         {
            param1.§+]§ = _loc2_.§&<§;
         }
         --param1.§ !Y§;
         --this.§9!n§;
      }
      
      public function §""G§() : void
      {
         while(this.§[!C§)
         {
            this.§]b§(this.§[!C§.§'S§);
         }
      }
      
      public function §0!7§() : b2Controller
      {
         return this.§+!>§;
      }
      
      public function §7!a§() : b2World
      {
         return this.m_world;
      }
      
      public function §7!z§() : b2ControllerEdge
      {
         return this.§[!C§;
      }
   }
}
