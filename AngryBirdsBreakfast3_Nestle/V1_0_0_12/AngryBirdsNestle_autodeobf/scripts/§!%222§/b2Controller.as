package §!"2§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2DebugDraw;
   import §9!Z§.b2TimeStep;
   import §9!Z§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>7§:b2Controller;
      
      b2internal var §<!u§:b2Controller;
      
      protected var §8"%§:b2ControllerEdge;
      
      protected var §,!T§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §"+§(param1:b2TimeStep) : void
      {
      }
      
      public function §2!O§(param1:b2DebugDraw) : void
      {
      }
      
      public function §""-§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.§#j§ = this.§8"%§;
         _loc2_.§]Y§ = null;
         this.§8"%§ = _loc2_;
         if(_loc2_.§#j§)
         {
            _loc2_.§#j§.§]Y§ = _loc2_;
         }
         ++this.§,!T§;
         _loc2_.§>=§ = param1.§,x§;
         _loc2_.§&!5§ = null;
         param1.§,x§ = _loc2_;
         if(_loc2_.§>=§)
         {
            _loc2_.§>=§.§&!5§ = _loc2_;
         }
         ++param1.§,k§;
      }
      
      public function §[F§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§,x§;
         while(_loc2_ && _loc2_.controller != this)
         {
            _loc2_ = _loc2_.§>=§;
         }
         if(_loc2_.§]Y§)
         {
            _loc2_.§]Y§.§#j§ = _loc2_.§#j§;
         }
         if(_loc2_.§#j§)
         {
            _loc2_.§#j§.§]Y§ = _loc2_.§]Y§;
         }
         if(_loc2_.§>=§)
         {
            _loc2_.§>=§.§&!5§ = _loc2_.§&!5§;
         }
         if(_loc2_.§&!5§)
         {
            _loc2_.§&!5§.§>=§ = _loc2_.§>=§;
         }
         if(this.§8"%§ == _loc2_)
         {
            this.§8"%§ = _loc2_.§#j§;
         }
         if(param1.§,x§ == _loc2_)
         {
            param1.§,x§ = _loc2_.§>=§;
         }
         --param1.§,k§;
         --this.§,!T§;
      }
      
      public function §[!^§() : void
      {
         while(this.§8"%§)
         {
            this.§[F§(this.§8"%§.body);
         }
      }
      
      public function §&!B§() : b2Controller
      {
         return this.§>7§;
      }
      
      public function §?!a§() : b2World
      {
         return this.m_world;
      }
      
      public function §#!4§() : b2ControllerEdge
      {
         return this.§8"%§;
      }
   }
}
