package §@!U§
{
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §9t§.b2Vec2;
   import §]">§.§<!=§;
   
   public class §8!`§
   {
       
      
      private var mWorld:b2World;
      
      private var §<j§:Array;
      
      public function §8!`§(param1:b2World)
      {
         this.§<j§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §3n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§<j§ = [];
         this.mWorld.RayCast(this.§3!o§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§<j§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §3!o§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§18§ = null;
         var _loc5_:§<!=§;
         if(_loc5_ = param1.GetBody().GetUserData() as §<!=§)
         {
            _loc6_ = new §18§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§<j§.push(_loc6_);
         }
      }
      
      public function get §0I§() : int
      {
         return this.§<j§.length;
      }
      
      public function §4!w§(param1:int) : §18§
      {
         return this.§<j§[param1];
      }
   }
}
