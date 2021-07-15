package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   
   public class §@!O§ extends §?!z§
   {
      
      public static const §#5§:String = "MISC_FOOD_EGG";
       
      
      public function §@!O§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §^`§().GetPosition().x;
         var _loc5_:Number = §^`§().GetPosition().y;
         var _loc6_:§"_§;
         (_loc6_ = §"_§(param1.§,]§(§#5§,_loc4_,_loc5_ + 0.01,0,§&"§.§5!1§,false,true,true,scale))).§%!Q§ = true;
         _loc6_.§^`§().SetLinearVelocity(new b2Vec2(0,100));
         §^`§().ApplyImpulse(new b2Vec2(30 * §^`§().GetMass(),-60 * §^`§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
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
