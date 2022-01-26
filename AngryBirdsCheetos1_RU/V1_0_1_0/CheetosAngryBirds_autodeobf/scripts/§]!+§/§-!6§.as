package §]!+§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §[x§.b2World;
   
   public class §-!6§ extends §`H§
   {
      
      public static const §#!2§:String = "MISC_FOOD_EGG";
       
      
      public function §-!6§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?A§().GetPosition().x;
         var _loc3_:Number = §?A§().GetPosition().y;
         var _loc4_:§";§;
         (_loc4_ = param1.addObject(§#!2§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§3!4§ = true;
         _loc4_.§?A§().SetLinearVelocity(new b2Vec2(0,100));
         §?A§().ApplyImpulse(new b2Vec2(30 * §?A§().GetMass(),-60 * §?A§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§#!8§)
         {
            §0!C§ = §6!;§ - 1;
            §^!3§.setDamagedFrame();
         }
         return §0!C§;
      }
   }
}
