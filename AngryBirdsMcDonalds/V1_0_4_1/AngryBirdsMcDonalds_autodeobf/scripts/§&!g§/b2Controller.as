package §&!g§
{
   import §-0§.b2Body;
   import §-0§.b2DebugDraw;
   import §-0§.b2TimeStep;
   import §-0§.b2World;
   import §@g§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §2G§:b2Controller;
      
      b2internal var §9!R§:b2Controller;
      
      protected var §&!E§:b2ControllerEdge;
      
      protected var §>a§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §&E§(param1:b2TimeStep) : void
      {
      }
      
      public function §;!n§(param1:b2DebugDraw) : void
      {
      }
      
      public function §[X§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§5F§ = this;
         _loc2_.§"V§ = param1;
         _loc2_.§#-§ = this.§&!E§;
         _loc2_.§76§ = null;
         this.§&!E§ = _loc2_;
         if(_loc2_.§#-§)
         {
            _loc2_.§#-§.§76§ = _loc2_;
         }
         ++this.§>a§;
         _loc2_.§+!b§ = param1.§-e§;
         _loc2_.§#!G§ = null;
         param1.§-e§ = _loc2_;
         if(_loc2_.§+!b§)
         {
            _loc2_.§+!b§.§#!G§ = _loc2_;
         }
         ++param1.§]V§;
      }
      
      public function §#!E§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§-e§;
         while(_loc2_ && _loc2_.§5F§ != this)
         {
            _loc2_ = _loc2_.§+!b§;
         }
         if(_loc2_.§76§)
         {
            _loc2_.§76§.§#-§ = _loc2_.§#-§;
         }
         if(_loc2_.§#-§)
         {
            _loc2_.§#-§.§76§ = _loc2_.§76§;
         }
         if(_loc2_.§+!b§)
         {
            _loc2_.§+!b§.§#!G§ = _loc2_.§#!G§;
         }
         if(_loc2_.§#!G§)
         {
            _loc2_.§#!G§.§+!b§ = _loc2_.§+!b§;
         }
         if(this.§&!E§ == _loc2_)
         {
            this.§&!E§ = _loc2_.§#-§;
         }
         if(param1.§-e§ == _loc2_)
         {
            param1.§-e§ = _loc2_.§+!b§;
         }
         --param1.§]V§;
         --this.§>a§;
      }
      
      public function §<]§() : void
      {
         while(this.§&!E§)
         {
            this.§#!E§(this.§&!E§.§"V§);
         }
      }
      
      public function §2z§() : b2Controller
      {
         return this.§2G§;
      }
      
      public function §+!e§() : b2World
      {
         return this.m_world;
      }
      
      public function §0T§() : b2ControllerEdge
      {
         return this.§&!E§;
      }
   }
}
