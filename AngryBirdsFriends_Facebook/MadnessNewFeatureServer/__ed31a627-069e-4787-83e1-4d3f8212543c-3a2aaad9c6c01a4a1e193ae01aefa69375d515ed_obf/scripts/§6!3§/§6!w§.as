package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §6!w§ extends §,s§
   {
      
      public static const §="4§:String = "MISC_FOOD_EGG";
       
      
      public function §6!w§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         _loc5_ = getBody().GetPosition().y;
         var _loc6_:§;!U§;
         (_loc6_ = §;!U§(param1.addObject(§="4§,_loc4_,_loc5_ + 0.01,0,§'!§.ID_NEXT_FREE,false,true,true,scale))).§!"N§ = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(specialPowerUsed)
         {
            health = §6"k§ - 1;
         }
         return health;
      }
   }
}
