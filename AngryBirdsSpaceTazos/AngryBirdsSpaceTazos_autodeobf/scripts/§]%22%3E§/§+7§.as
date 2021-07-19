package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §+7§ extends § 6§
   {
      
      public static const §<>§:String = "MISC_FOOD_EGG";
       
      
      public function §+7§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         var _loc6_:§1!0§;
         (_loc6_ = §1!0§(param1.addObject(§<>§,_loc4_,_loc5_ + 0.01,0,§-%§.§;!J§,false,true,true,scale))).§>_§ = true;
         _loc6_.§^!z§().SetLinearVelocity(new b2Vec2(0,100));
         §^!z§().ApplyImpulse(new b2Vec2(30 * §^!z§().GetMass(),-60 * §^!z§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
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
