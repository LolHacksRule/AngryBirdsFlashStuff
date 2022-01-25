package §'!`§
{
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §^!%§.b2Vec2;
   
   public class §?;§ extends §3C§
   {
      
      public static const §'?§:String = "MISC_FOOD_EGG";
       
      
      public function §?;§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §&!p§().GetPosition().x;
         var _loc3_:Number = §&!p§().GetPosition().y;
         var _loc4_:§%!H§;
         (_loc4_ = param1.§]!>§(§'?§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§`!=§ = true;
         _loc4_.§&!p§().SetLinearVelocity(new b2Vec2(0,100));
         §&!p§().ApplyImpulse(new b2Vec2(30 * §&!p§().GetMass(),-60 * §&!p§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§%!Y§)
         {
            §0!8§ = §6w§ - 1;
            §@!5§.setDamagedFrame();
         }
         return §0!8§;
      }
   }
}
