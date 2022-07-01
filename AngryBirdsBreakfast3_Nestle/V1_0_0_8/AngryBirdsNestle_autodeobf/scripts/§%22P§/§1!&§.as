package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   
   public class §1!&§ extends §?!§
   {
      
      public static const §?!K§:String = "MISC_FOOD_EGG";
       
      
      public function §1!&§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §7J§().GetPosition().x;
         var _loc5_:Number = §7J§().GetPosition().y;
         var _loc6_:§^!x§;
         (_loc6_ = §^!x§(param1.§5!t§(§?!K§,_loc4_,_loc5_ + 0.01,0,§&"0§.§&g§,false,true,true,scale))).§"A§ = true;
         _loc6_.§7J§().SetLinearVelocity(new b2Vec2(0,100));
         §7J§().ApplyImpulse(new b2Vec2(30 * §7J§().GetMass(),-60 * §7J§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
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
