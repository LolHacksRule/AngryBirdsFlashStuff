package §4"Y§
{
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §^0§.§4!t§;
   
   public class §]!m§
   {
       
      
      private var mWorld:b2World;
      
      private var §#!d§:Array;
      
      public function §]!m§(param1:b2World)
      {
         this.§#!d§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §0=§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§#!d§ = [];
         this.mWorld.RayCast(this.§-"9§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§#!d§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §-"9§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§6$A§ = null;
         var _loc5_:§4!t§;
         if(_loc5_ = param1.GetBody().GetUserData() as §4!t§)
         {
            _loc6_ = new §6$A§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§#!d§.push(_loc6_);
         }
      }
      
      public function get §+5§() : int
      {
         return this.§#!d§.length;
      }
      
      public function §'$8§(param1:int) : §6$A§
      {
         return this.§#!d§[param1];
      }
   }
}
