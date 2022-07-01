package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   
   public class §=1§ extends §^"2§
   {
      
      public static const §+R§:String = "MISC_FOOD_EGG";
       
      
      public function §=1§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §!!I§().GetPosition().x;
         var _loc5_:Number = §!!I§().GetPosition().y;
         var _loc6_:§@_§;
         (_loc6_ = §@_§(param1.§&w§(§+R§,_loc4_,_loc5_ + 0.01,0,§<!l§.§0"+§,false,true,true,scale))).§@5§ = true;
         _loc6_.§!!I§().SetLinearVelocity(new b2Vec2(0,100));
         §!!I§().ApplyImpulse(new b2Vec2(30 * §!!I§().GetMass(),-60 * §!!I§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
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
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
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
