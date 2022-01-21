package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §@![§.b2Vec2;
   
   public class §%c§ extends §1L§
   {
      
      public static const §]>§:String = "MISC_FOOD_EGG";
       
      
      public function §%c§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §;G§().GetPosition().x;
         var _loc3_:Number = §;G§().GetPosition().y;
         var _loc4_:§,!&§;
         (_loc4_ = param1.§'e§(§]>§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§94§ = true;
         _loc4_.§;G§().SetLinearVelocity(new b2Vec2(0,100));
         §;G§().ApplyImpulse(new b2Vec2(30 * §;G§().GetMass(),-60 * §;G§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§=!h§)
         {
            §3o§ = §'6§ - 1;
            §<i§.setDamagedFrame();
         }
         return §3o§;
      }
   }
}
