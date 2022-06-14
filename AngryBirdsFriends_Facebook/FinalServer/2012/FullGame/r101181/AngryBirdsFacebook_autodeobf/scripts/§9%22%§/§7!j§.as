package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §7!j§ extends § H§
   {
      
      public static const §`!<§:String = "MISC_FOOD_EGG";
       
      
      public function §7!j§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §=!y§().GetPosition().x;
         var _loc3_:Number = §=!y§().GetPosition().y;
         var _loc4_:§&!r§;
         (_loc4_ = param1.addObject(§`!<§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§]i§ = true;
         _loc4_.§=!y§().SetLinearVelocity(new b2Vec2(0,100));
         §=!y§().ApplyImpulse(new b2Vec2(30 * §=!y§().GetMass(),-60 * §=!y§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§-!a§)
         {
            §[" § = §@!h§ - 1;
            §"!&§.setDamagedFrame();
         }
         return §[" §;
      }
   }
}
