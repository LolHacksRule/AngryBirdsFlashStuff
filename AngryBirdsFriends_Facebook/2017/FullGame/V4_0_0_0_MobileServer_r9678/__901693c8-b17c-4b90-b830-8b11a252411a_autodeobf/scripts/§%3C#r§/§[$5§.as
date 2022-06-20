package §<#r§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §>!5§.§#-§;
   
   public class §[$5§
   {
       
      
      private var mWorld:b2World;
      
      private var §!2§:Array;
      
      public function §[$5§(param1:b2World)
      {
         this.§!2§ = [];
         super();
         this.mWorld = param1;
      }
      
      public function §3"0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§!2§ = [];
         this.mWorld.RayCast(this.§%"&§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
         this.§!2§.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function §%"&§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§4$5§ = null;
         var _loc5_:§#-§;
         if(_loc5_ = param1.GetBody().GetUserData() as §#-§)
         {
            _loc6_ = new §4$5§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            this.§!2§.push(_loc6_);
         }
      }
      
      public function get §[8§() : int
      {
         return this.§!2§.length;
      }
      
      public function §8#L§(param1:int) : §4$5§
      {
         return this.§!2§[param1];
      }
   }
}
