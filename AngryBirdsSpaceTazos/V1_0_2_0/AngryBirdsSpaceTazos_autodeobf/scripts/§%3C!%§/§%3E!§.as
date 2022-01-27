package §<!%§
{
   import §#!X§.b2Fixture;
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §[,§.§1d§;
   
   public class §>!§
   {
       
      
      private var mWorld:b2World;
      
      private var §]!2§:Array;
      
      public function §>!§(param1:b2World)
      {
         this.§]!2§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §?!5§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]!2§ = [];
         this.mWorld.RayCast(this.§3"-§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§]!2§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §3"-§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§]s§ = null;
         var _loc5_:§1d§;
         if(_loc5_ = param1.GetBody().GetUserData() as §1d§)
         {
            _loc6_ = new §]s§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§]!2§.push(_loc6_);
         }
      }
      
      public function get §'u§() : int
      {
         return this.§]!2§.length;
      }
      
      public function §`"$§(param1:int) : §]s§
      {
         return this.§]!2§[param1];
      }
   }
}
