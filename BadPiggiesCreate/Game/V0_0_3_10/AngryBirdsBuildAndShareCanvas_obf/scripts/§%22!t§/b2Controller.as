package §"!t§
{
   import §!S§.b2internal;
   import §`]§.b2Body;
   import §`]§.b2DebugDraw;
   import §`]§.b2TimeStep;
   import §`]§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7<§:b2Controller;
      
      b2internal var §0"+§:b2Controller;
      
      protected var §44§:b2ControllerEdge;
      
      protected var §5K§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function §?!K§(param1:b2TimeStep) : void
      {
      }
      
      public function §6#§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0z§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§ !o§ = this;
         _loc2_.§ !h§ = param1;
         _loc2_.§@8§ = this.§44§;
         _loc2_.§>"0§ = null;
         this.§44§ = _loc2_;
         if(_loc2_.§@8§)
         {
            _loc2_.§@8§.§>"0§ = _loc2_;
         }
         ++this.§5K§;
         _loc2_.§68§ = param1.§1!3§;
         _loc2_.§!A§ = null;
         param1.§1!3§ = _loc2_;
         if(_loc2_.§68§)
         {
            _loc2_.§68§.§!A§ = _loc2_;
         }
         ++param1.§2&§;
      }
      
      public function §!!#§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§1!3§;
         while(_loc2_ && _loc2_.§ !o§ != this)
         {
            _loc2_ = _loc2_.§68§;
         }
         if(_loc2_.§>"0§)
         {
            _loc2_.§>"0§.§@8§ = _loc2_.§@8§;
         }
         if(_loc2_.§@8§)
         {
            _loc2_.§@8§.§>"0§ = _loc2_.§>"0§;
         }
         if(_loc2_.§68§)
         {
            _loc2_.§68§.§!A§ = _loc2_.§!A§;
         }
         if(_loc2_.§!A§)
         {
            _loc2_.§!A§.§68§ = _loc2_.§68§;
         }
         if(this.§44§ == _loc2_)
         {
            this.§44§ = _loc2_.§@8§;
         }
         if(param1.§1!3§ == _loc2_)
         {
            param1.§1!3§ = _loc2_.§68§;
         }
         --param1.§2&§;
         --this.§5K§;
      }
      
      public function §]I§() : void
      {
         while(this.§44§)
         {
            this.§!!#§(this.§44§.§ !h§);
         }
      }
      
      public function §&!=§() : b2Controller
      {
         return this.§7<§;
      }
      
      public function §-D§() : b2World
      {
         return this.m_world;
      }
      
      public function §5?§() : b2ControllerEdge
      {
         return this.§44§;
      }
   }
}
