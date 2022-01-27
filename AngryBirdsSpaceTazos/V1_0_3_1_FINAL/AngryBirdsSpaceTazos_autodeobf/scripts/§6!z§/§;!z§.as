package §6!z§
{
   import §5"D§.§>q§;
   import §;`§.b2Fixture;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   
   public class §;!z§
   {
       
      
      private var mWorld:b2World;
      
      private var §3"'§:Array;
      
      public function §;!z§(param1:b2World)
      {
         this.§3"'§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function § "-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§3"'§ = [];
         this.mWorld.RayCast(this.§="F§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§3"'§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §="F§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§8"B§ = null;
         var _loc5_:§>q§;
         if(_loc5_ = param1.GetBody().GetUserData() as §>q§)
         {
            _loc6_ = new §8"B§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§3"'§.push(_loc6_);
         }
      }
      
      public function get §,§() : int
      {
         return this.§3"'§.length;
      }
      
      public function §+!'§(param1:int) : §8"B§
      {
         return this.§3"'§[param1];
      }
   }
}
