package §5!G§
{
   import §!R§.b2Vec2;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §@!b§.§@!k§;
   
   public class §>5§ extends §'!1§
   {
      
      public static const §[!V§:String = "MISC_FOOD_EGG";
       
      
      public function §>5§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8+§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §>j§().GetPosition().x;
         var _loc3_:Number = §>j§().GetPosition().y;
         var _loc4_:§6!Y§;
         (_loc4_ = param1.§[E§(§[!V§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§8!S§ = true;
         _loc4_.§>j§().SetLinearVelocity(new b2Vec2(0,100));
         §>j§().ApplyImpulse(new b2Vec2(30 * §>j§().GetMass(),-60 * §>j§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§=!F§)
         {
            §%!C§ = §#!2§ - 1;
            §8!J§.setDamagedFrame();
         }
         return §%!C§;
      }
   }
}
