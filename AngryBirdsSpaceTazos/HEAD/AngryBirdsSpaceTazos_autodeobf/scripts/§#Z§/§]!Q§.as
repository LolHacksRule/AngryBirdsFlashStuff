package §#Z§
{
   import §6!n§.b2Vec2;
   import §9!K§.b2Fixture;
   import §9!K§.b2World;
   import §9"!§.§,%§;
   
   public class §]!Q§
   {
       
      
      private var mWorld:b2World;
      
      private var §1W§:Array;
      
      public function §]!Q§(param1:b2World)
      {
         this.§1W§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §8L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§1W§ = [];
         this.mWorld.RayCast(this.§!K§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§1W§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §!K§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§`!X§ = null;
         var _loc5_:§,%§;
         if(_loc5_ = param1.GetBody().GetUserData() as §,%§)
         {
            _loc6_ = new §`!X§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§1W§.push(_loc6_);
         }
      }
      
      public function get §32§() : int
      {
         return this.§1W§.length;
      }
      
      public function §;!h§(param1:int) : §`!X§
      {
         return this.§1W§[param1];
      }
   }
}
