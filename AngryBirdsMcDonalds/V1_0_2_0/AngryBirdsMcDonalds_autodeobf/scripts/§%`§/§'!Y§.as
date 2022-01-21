package §%`§
{
   import §"U§.b2Vec2;
   import §'a§.§0!f§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class §'!Y§ extends override
   {
      
      public static const §-2§:String = "MISC_FOOD_EGG";
       
      
      public function §'!Y§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §%9§().GetPosition().x;
         var _loc3_:Number = §%9§().GetPosition().y;
         var _loc4_:§"s§;
         (_loc4_ = param1.§1!!§(§-2§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§'l§ = true;
         _loc4_.§%9§().SetLinearVelocity(new b2Vec2(0,100));
         §%9§().ApplyImpulse(new b2Vec2(30 * §%9§().GetMass(),-60 * §%9§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§0C§)
         {
            §%!a§ = §"!j§ - 1;
            §2R§.setDamagedFrame();
         }
         return §%!a§;
      }
   }
}
