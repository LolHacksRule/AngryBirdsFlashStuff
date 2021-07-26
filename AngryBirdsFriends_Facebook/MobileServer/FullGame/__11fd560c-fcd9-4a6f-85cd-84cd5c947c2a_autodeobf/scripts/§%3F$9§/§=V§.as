package §?$9§
{
   import § "%§.b2Vec2;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8§.§,§;
   
   public class §=V§
   {
       
      
      private var mWorld:b2World;
      
      private var §8"_§:Array;
      
      public function §=V§(param1:b2World)
      {
         this.§8"_§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §"!1§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§8"_§ = [];
         this.mWorld.RayCast(this.§'#"§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§8"_§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §'#"§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§^#h§ = null;
         var _loc5_:§,#5§;
         if(_loc5_ = param1.GetBody().GetUserData() as §,#5§)
         {
            _loc6_ = new §^#h§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§8"_§.push(_loc6_);
         }
      }
      
      public function get §+!6§() : int
      {
         return this.§8"_§.length;
      }
      
      public function §-$8§(param1:int) : §^#h§
      {
         return this.§8"_§[param1];
      }
   }
}
