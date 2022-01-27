package §;"E§
{
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   
   public class §2"5§
   {
       
      
      private var §^"M§:Vector.<§^;§>;
      
      public function §2"5§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var _loc5_:b2Vec2 = new b2Vec2(param1,param2);
         var _loc6_:b2Vec2 = new b2Vec2(param3,param4);
         this.§^"M§ = new Vector.<§^;§>();
         var _loc7_:b2World;
         (_loc7_ = §<!J§.§=!%§.levelObjects.§+!E§.mLevelEngine.mWorld).RayCast(this.§;!V§,_loc5_,_loc6_);
      }
      
      public function §!!P§() : void
      {
         this.§^"M§.sort(this.§>"o§);
      }
      
      public function get §9"E§() : Vector.<§^;§>
      {
         return this.§^"M§;
      }
      
      public function set §9"E§(param1:Vector.<§^;§>) : void
      {
         this.§^"M§ = param1;
      }
      
      public function §]!V§() : Boolean
      {
         if(this.§^"M§ && this.§^"M§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      private function §;!V§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§^;§ = null;
         var _loc5_:b2Body = param1.GetBody();
         if(!param1.§]!a§())
         {
            _loc6_ = new §^;§(_loc5_,param2,param3,param4);
            this.§^"M§.push(_loc6_);
         }
      }
      
      private function §>"o§(param1:§^;§, param2:§^;§) : int
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
