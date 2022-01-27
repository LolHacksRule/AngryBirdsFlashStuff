package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   
   public class §^!C§ extends §%!0§
   {
      
      public static const §@M§:String = "MISC_FOOD_EGG";
       
      
      public function §^!C§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §?"Z§().GetPosition().x;
         var _loc5_:Number = §?"Z§().GetPosition().y;
         var _loc6_:§4!w§;
         (_loc6_ = §4!w§(param1.addObject(§@M§,_loc4_,_loc5_ + 0.01,0,§super§.§4"D§,false,true,true,scale))).§ @§ = true;
         _loc6_.§?"Z§().SetLinearVelocity(new b2Vec2(0,100));
         §?"Z§().ApplyImpulse(new b2Vec2(30 * §?"Z§().GetMass(),-60 * §?"Z§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
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
