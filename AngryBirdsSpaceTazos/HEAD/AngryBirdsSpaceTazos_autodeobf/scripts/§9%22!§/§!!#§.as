package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §!!#§ extends §!!H§
   {
      
      public static const §3!m§:String = "MISC_FOOD_EGG";
       
      
      public function §!!#§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §`I§().GetPosition().x;
         var _loc5_:Number = §`I§().GetPosition().y;
         var _loc6_:§^"3§;
         (_loc6_ = §^"3§(param1.addObject(§3!m§,_loc4_,_loc5_ + 0.01,0,§"" §.§%A§,false,true,true,scale))).§^!b§ = true;
         _loc6_.§`I§().SetLinearVelocity(new b2Vec2(0,100));
         §`I§().ApplyImpulse(new b2Vec2(30 * §`I§().GetMass(),-60 * §`I§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
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
