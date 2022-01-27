package §6-§
{
   import §'!&§.b2Body;
   import §'!&§.b2DebugDraw;
   import §'!&§.b2TimeStep;
   import §'!&§.b2World;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §+!o§:b2Controller;
      
      b2internal var §20§:b2Controller;
      
      protected var §&E§:b2ControllerEdge;
      
      protected var §"s§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §-!8§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!"C§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§&!$§ = this;
         _loc2_.§["D§ = param1;
         _loc2_.§<!2§ = this.§&E§;
         _loc2_.§>"§ = null;
         this.§&E§ = _loc2_;
         if(_loc2_.§<!2§)
         {
            _loc2_.§<!2§.§>"§ = _loc2_;
         }
         ++this.§"s§;
         _loc2_.§,f§ = param1.§ <§;
         _loc2_.§&o§ = null;
         param1.§ <§ = _loc2_;
         if(_loc2_.§,f§)
         {
            _loc2_.§,f§.§&o§ = _loc2_;
         }
         ++param1.§@!R§;
      }
      
      public function §6"1§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§ <§;
         while(_loc2_ && _loc2_.§&!$§ != this)
         {
            _loc2_ = _loc2_.§,f§;
         }
         if(_loc2_.§>"§)
         {
            _loc2_.§>"§.§<!2§ = _loc2_.§<!2§;
         }
         if(_loc2_.§<!2§)
         {
            _loc2_.§<!2§.§>"§ = _loc2_.§>"§;
         }
         if(_loc2_.§,f§)
         {
            _loc2_.§,f§.§&o§ = _loc2_.§&o§;
         }
         if(_loc2_.§&o§)
         {
            _loc2_.§&o§.§,f§ = _loc2_.§,f§;
         }
         if(this.§&E§ == _loc2_)
         {
            this.§&E§ = _loc2_.§<!2§;
         }
         if(param1.§ <§ == _loc2_)
         {
            param1.§ <§ = _loc2_.§,f§;
         }
         --param1.§@!R§;
         --this.§"s§;
      }
      
      public function §["5§() : void
      {
         while(this.§&E§)
         {
            this.§6"1§(this.§&E§.§["D§);
         }
      }
      
      public function §`!y§() : b2Controller
      {
         return this.§+!o§;
      }
      
      public function §3"+§() : b2World
      {
         return this.m_world;
      }
      
      public function §;N§() : b2ControllerEdge
      {
         return this.§&E§;
      }
   }
}
