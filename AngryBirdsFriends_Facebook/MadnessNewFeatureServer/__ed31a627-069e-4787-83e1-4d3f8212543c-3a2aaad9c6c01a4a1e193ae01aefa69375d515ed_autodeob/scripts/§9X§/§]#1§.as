package §9X§
{
   import §6!3§.§!y§;
   import §?!C§.b2Vec2;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   
   public class §]#1§
   {
       
      
      private var mWorld:b2World;
      
      private var §1$5§:Array;
      
      public function §]#1§(param1:b2World)
      {
         this.§1$5§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §;"F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§1$5§ = [];
         this.mWorld.RayCast(this.§[#U§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§1$5§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §[#U§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§0!I§ = null;
         var _loc5_:§!y§;
         if(_loc5_ = param1.GetBody().GetUserData() as §!y§)
         {
            _loc6_ = new §0!I§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§1$5§.push(_loc6_);
         }
      }
      
      public function get §9"?§() : int
      {
         return this.§1$5§.length;
      }
      
      public function §5!K§(param1:int) : §0!I§
      {
         return this.§1$5§[param1];
      }
   }
}
