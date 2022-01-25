package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   
   public class §4!L§ extends §=!V§
   {
      
      public static const §&l§:String = "MISC_FOOD_EGG";
       
      
      public function §4!L§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §-!N§().GetPosition().x;
         var _loc5_:Number = §-!N§().GetPosition().y;
         var _loc6_:§&!-§;
         (_loc6_ = §&!-§(param1.§'!%§(§&l§,_loc4_,_loc5_ + 0.01,0,§7l§.§-u§,false,true,true,scale))).§'S§ = true;
         _loc6_.§-!N§().SetLinearVelocity(new b2Vec2(0,100));
         §-!N§().ApplyImpulse(new b2Vec2(30 * §-!N§().GetMass(),-60 * §-!N§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
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
