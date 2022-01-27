package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §,F§ extends §;!T§
   {
      
      public static const §^!D§:String = "MISC_FOOD_EGG";
       
      
      public function §,F§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §3"s§().GetPosition().x;
         var _loc5_:Number = §3"s§().GetPosition().y;
         var _loc6_:§0N§;
         (_loc6_ = §0N§(param1.addObject(§^!D§,_loc4_,_loc5_ + 0.01,0,§9"f§.§["_§,false,true,true,scale))).§2v§ = true;
         _loc6_.§3"s§().SetLinearVelocity(new b2Vec2(0,100));
         §3"s§().ApplyImpulse(new b2Vec2(30 * §3"s§().GetMass(),-60 * §3"s§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
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
