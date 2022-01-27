package §,"K§
{
   import §!r§.§?!x§;
   import §7"A§.b2Vec2;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   
   public class §;!z§
   {
       
      
      private var mWorld:b2World;
      
      private var §2"u§:Array;
      
      public function §;!z§(param1:b2World)
      {
         this.§2"u§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §'#,§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§2"u§ = [];
         this.mWorld.RayCast(this.§;!V§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§2"u§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §;!V§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§3l§ = null;
         var _loc5_:§?!x§;
         if(_loc5_ = param1.GetBody().GetUserData() as §?!x§)
         {
            _loc6_ = new §3l§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§2"u§.push(_loc6_);
         }
      }
      
      public function get §=!V§() : int
      {
         return this.§2"u§.length;
      }
      
      public function §;f§(param1:int) : §3l§
      {
         return this.§2"u§[param1];
      }
   }
}
