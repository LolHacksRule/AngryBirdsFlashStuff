package §5! §
{
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §6"R§.§!z§;
   import §^>§.b2Vec2;
   
   public class §#"[§
   {
       
      
      private var mWorld:b2World;
      
      private var §&"j§:Array;
      
      public function §#"[§(param1:b2World)
      {
         this.§&"j§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §-"6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&"j§ = [];
         this.mWorld.RayCast(this.§6!G§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§&"j§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §6!G§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§]$§ = null;
         var _loc5_:§!z§;
         if(_loc5_ = param1.GetBody().GetUserData() as §!z§)
         {
            _loc6_ = new §]$§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§&"j§.push(_loc6_);
         }
      }
      
      public function get §@"i§() : int
      {
         return this.§&"j§.length;
      }
      
      public function §"!h§(param1:int) : §]$§
      {
         return this.§&"j§[param1];
      }
   }
}
