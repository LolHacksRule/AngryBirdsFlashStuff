package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   
   public class §0`§ extends §6!-§
   {
      
      public static const §-@§:String = "MISC_FOOD_EGG";
       
      
      public function §0`§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §^",§().GetPosition().x;
         var _loc5_:Number = §^",§().GetPosition().y;
         var _loc6_:§^^§;
         (_loc6_ = §^^§(param1.§`!k§(§-@§,_loc4_,_loc5_ + 0.01,0,§!H§.§"!W§,false,true,true,scale))).§`Y§ = true;
         _loc6_.§^",§().SetLinearVelocity(new b2Vec2(0,100));
         §^",§().ApplyImpulse(new b2Vec2(30 * §^",§().GetMass(),-60 * §^",§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
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
