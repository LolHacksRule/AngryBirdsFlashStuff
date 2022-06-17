package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §>#U§ extends §[# §
   {
      
      public static const §;"l§:String = "MISC_FOOD_EGG";
       
      
      public function §>#U§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         _loc5_ = getBody().GetPosition().y;
         var _loc6_:§=Q§;
         (_loc6_ = §=Q§(param1.addObject(§;"l§,_loc4_,_loc5_ + 0.01,0,§%"^§.ID_NEXT_FREE,false,true,true,scale))).§@"<§ = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(specialPowerUsed)
         {
            health = §,D§ - 1;
         }
         return health;
      }
   }
}
