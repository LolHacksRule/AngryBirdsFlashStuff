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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§<j§ = [];
         }
         do
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(_loc3_ && _loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public function §3n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§<j§ = [];
         }
         do
         {
            this.mWorld.RayCast(this.§3!o§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
            do
            {
               this.§<j§.sortOn("rayFraction",Array.NUMERIC);
            }
            while(_loc6_ && param1);
            
         }
         while(!_loc5_);
         
      }
      
      protected function §3!o§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§18§ = null;
         var _loc5_:§<!=§;
         if(_loc5_ = param1.GetBody().GetUserData() as §<!=§)
         {
            _loc6_ = new §18§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            if(!_loc7_)
            {
               this.§<j§.push(_loc6_);
            }
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
