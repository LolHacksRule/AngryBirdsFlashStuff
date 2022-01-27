package §;[§
{
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   
   public class § !Z§
   {
       
      
      private var §`"G§:Vector.<§8"L§>;
      
      public function § !Z§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var _loc5_:b2Vec2 = new b2Vec2(param1,param2);
         var _loc6_:b2Vec2 = new b2Vec2(param3,param4);
         this.§`"G§ = new Vector.<§8"L§>();
         var _loc7_:b2World;
         (_loc7_ = §;!e§.§<x§.levelObjects.§]""§.mLevelEngine.mWorld).RayCast(this.§6!G§,_loc5_,_loc6_);
      }
      
      public function §+d§() : void
      {
         this.§`"G§.sort(this.§&"]§);
      }
      
      public function get §59§() : Vector.<§8"L§>
      {
         return this.§`"G§;
      }
      
      public function set §59§(param1:Vector.<§8"L§>) : void
      {
         this.§`"G§ = param1;
      }
      
      public function §]"]§() : Boolean
      {
         if(this.§`"G§ && this.§`"G§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      private function §6!G§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§8"L§ = null;
         var _loc5_:b2Body = param1.GetBody();
         if(!param1.§##-§())
         {
            _loc6_ = new §8"L§(_loc5_,param2,param3,param4);
            this.§`"G§.push(_loc6_);
         }
      }
      
      private function §&"]§(param1:§8"L§, param2:§8"L§) : int
      {
         if(param1.fraction < param2.fraction)
         {
            return -1;
         }
         if(param1.fraction > param2.fraction)
         {
            return 1;
         }
         return 0;
      }
   }
}
