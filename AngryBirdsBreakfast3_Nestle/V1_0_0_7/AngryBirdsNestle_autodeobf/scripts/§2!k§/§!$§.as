package §2!k§
{
   import § !=§.Sprite;
   import §-!2§.b2Vec2;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class §!$§ extends §6",§
   {
      
      public static const §1%§:String = "MISC_FOOD_EGG";
       
      
      public function §!$§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = § 2§().GetPosition().x;
         var _loc5_:Number = § 2§().GetPosition().y;
         var _loc6_:§;;§;
         (_loc6_ = §;;§(param1.§1!w§(§1%§,_loc4_,_loc5_ + 0.01,0,§^O§.§@"+§,false,true,true,scale))).§;!M§ = true;
         _loc6_.§ 2§().SetLinearVelocity(new b2Vec2(0,100));
         § 2§().ApplyImpulse(new b2Vec2(30 * § 2§().GetMass(),-60 * § 2§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         if(specialPowerUsed)
         {
            return false;
         }
         return super.canActivateSpecialPower;
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(specialPowerUsed)
         {
            health = healthMax - 1;
         }
         return health;
      }
   }
}
