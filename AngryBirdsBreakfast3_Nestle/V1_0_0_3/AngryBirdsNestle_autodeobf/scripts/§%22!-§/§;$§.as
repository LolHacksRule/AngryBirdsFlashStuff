package §"!-§
{
   import §!!<§.§>"4§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   
   public class §;$§ extends § !§
   {
      
      public static const §0!D§:String = "MISC_FOOD_EGG";
       
      
      public function §;$§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §9l§().GetPosition().x;
         var _loc5_:Number = §9l§().GetPosition().y;
         var _loc6_:§[-§;
         (_loc6_ = §[-§(param1.§&0§(§0!D§,_loc4_,_loc5_ + 0.01,0,§1i§.§^!;§,false,true,true,scale))).§-C§ = true;
         _loc6_.§9l§().SetLinearVelocity(new b2Vec2(0,100));
         §9l§().ApplyImpulse(new b2Vec2(30 * §9l§().GetMass(),-60 * §9l§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
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
