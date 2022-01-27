package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §["<§ extends §1"G§
   {
      
      public static const §=!A§:String = "MISC_FOOD_EGG";
       
      
      public function §["<§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §9B§().GetPosition().x;
         var _loc5_:Number = §9B§().GetPosition().y;
         var _loc6_:§6!!§;
         (_loc6_ = §6!!§(param1.addObject(§=!A§,_loc4_,_loc5_ + 0.01,0,§3!3§.§'!y§,false,true,true,scale))).§@";§ = true;
         _loc6_.§9B§().SetLinearVelocity(new b2Vec2(0,100));
         §9B§().ApplyImpulse(new b2Vec2(30 * §9B§().GetMass(),-60 * §9B§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
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
