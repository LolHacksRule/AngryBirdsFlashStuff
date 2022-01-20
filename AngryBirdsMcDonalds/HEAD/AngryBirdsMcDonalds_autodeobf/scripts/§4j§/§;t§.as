package §4j§
{
   import § !J§.§%M§;
   import §+S§.b2Vec2;
   import §8T§.b2World;
   import §`!n§.Sprite;
   
   public class §;t§ extends §@!K§
   {
      
      public static const §@!T§:String = "MISC_FOOD_EGG";
       
      
      public function §;t§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §3H§().GetPosition().x;
         var _loc3_:Number = §3H§().GetPosition().y;
         var _loc4_:§9M§;
         (_loc4_ = param1.§+"§(§@!T§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§^s§ = true;
         _loc4_.§3H§().SetLinearVelocity(new b2Vec2(0,100));
         §3H§().ApplyImpulse(new b2Vec2(30 * §3H§().GetMass(),-60 * §3H§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§8![§)
         {
            §4!6§ = §%!^§ - 1;
            §%!$§.setDamagedFrame();
         }
         return §4!6§;
      }
   }
}
