package §2"u§
{
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §04§.b2Vec2;
   import §;!=§.§'#N§;
   
   public class §3"X§
   {
       
      
      private var mWorld:b2World;
      
      private var §!w§:Array;
      
      public function §3"X§(param1:b2World)
      {
         this.§!w§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §null§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§!w§ = [];
         this.mWorld.RayCast(this.§`[§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§!w§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §`[§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§#!u§ = null;
         var _loc5_:§'#N§;
         if(_loc5_ = param1.GetBody().GetUserData() as §'#N§)
         {
            _loc6_ = new §#!u§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§!w§.push(_loc6_);
         }
      }
      
      public function get §4#9§() : int
      {
         return this.§!w§.length;
      }
      
      public function §6$E§(param1:int) : §#!u§
      {
         return this.§!w§[param1];
      }
   }
}
