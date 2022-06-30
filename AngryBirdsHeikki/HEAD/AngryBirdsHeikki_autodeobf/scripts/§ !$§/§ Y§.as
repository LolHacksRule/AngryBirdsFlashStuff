package § !$§
{
   import §+d§.b2World;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   import §`!^§.b2Vec2;
   
   public class § Y§ extends §2!J§
   {
      
      public static const §%>§:String = "MISC_FOOD_EGG";
       
      
      public function § Y§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §]!2§().GetPosition().x;
         var _loc3_:Number = §]!2§().GetPosition().y;
         var _loc4_:§>C§;
         (_loc4_ = param1.§&H§(§%>§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§ o§ = true;
         _loc4_.§]!2§().SetLinearVelocity(new b2Vec2(0,100));
         §]!2§().ApplyImpulse(new b2Vec2(30 * §]!2§().GetMass(),-60 * §]!2§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§?!>§)
         {
            §6!^§ = §1D§ - 1;
            §[m§.setDamagedFrame();
         }
         return §6!^§;
      }
   }
}
