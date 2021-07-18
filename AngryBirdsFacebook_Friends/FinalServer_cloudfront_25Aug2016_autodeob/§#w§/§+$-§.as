package §#w§
{
   import §0m§.b2Vec2;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §[#a§.§<"H§;
   
   public class §+$-§
   {
       
      
      private var mWorld:b2World;
      
      private var §[#f§:Array;
      
      public function §+$-§(param1:b2World)
      {
         this.§[#f§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §0#U§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§[#f§ = [];
         this.mWorld.RayCast(this.§1!y§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§[#f§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §1!y§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§="M§ = null;
         var _loc5_:§<"H§;
         if(_loc5_ = param1.GetBody().GetUserData() as §<"H§)
         {
            _loc6_ = new §="M§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§[#f§.push(_loc6_);
         }
      }
      
      public function get §7#M§() : int
      {
         return this.§[#f§.length;
      }
      
      public function §["D§(param1:int) : §="M§
      {
         return this.§[#f§[param1];
      }
   }
}
