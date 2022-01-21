package §?!§
{
   import §&c§.Sprite;
   import §&x§.b2World;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   
   public class §4Y§ extends §]!%§
   {
      
      public static const §8!7§:String = "MISC_FOOD_EGG";
       
      
      public function §4Y§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>!4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §2!!§().GetPosition().x;
         var _loc3_:Number = §2!!§().GetPosition().y;
         var _loc4_:§%o§;
         (_loc4_ = param1.§else §(§8!7§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§^a§ = true;
         _loc4_.§2!!§().SetLinearVelocity(new b2Vec2(0,100));
         §2!!§().ApplyImpulse(new b2Vec2(30 * §2!!§().GetMass(),-60 * §2!!§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§'!$§)
         {
            §-&§ = §5!]§ - 1;
            §-s§.setDamagedFrame();
         }
         return §-&§;
      }
   }
}
