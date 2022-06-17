package §1i§
{
   import §-!!§.§1#B§;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §`# §.b2Vec2;
   
   public class §<#I§
   {
       
      
      private var mWorld:b2World;
      
      private var §%"A§:Array;
      
      public function §<#I§(param1:b2World)
      {
         this.§%"A§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §%$E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§%"A§ = [];
         this.mWorld.RayCast(this.§"g§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§%"A§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §"g§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§`#z§ = null;
         var _loc5_:§1#B§;
         if(_loc5_ = param1.GetBody().GetUserData() as §1#B§)
         {
            _loc6_ = new §`#z§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§%"A§.push(_loc6_);
         }
      }
      
      public function get §9#<§() : int
      {
         return this.§%"A§.length;
      }
      
      public function §>!§(param1:int) : §`#z§
      {
         return this.§%"A§[param1];
      }
   }
}
