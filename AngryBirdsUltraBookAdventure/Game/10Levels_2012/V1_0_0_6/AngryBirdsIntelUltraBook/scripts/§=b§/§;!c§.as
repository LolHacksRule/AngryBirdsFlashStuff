package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   
   public class §;!c§ extends §0d§
   {
      
      public static const §-!^§:String = "MISC_FOOD_EGG";
       
      
      public function §;!c§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §3J§().GetPosition().x;
         var _loc3_:Number = §3J§().GetPosition().y;
         var _loc4_:§`!_§;
         (_loc4_ = param1.addObject(§-!^§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§4N§ = true;
         _loc4_.§3J§().SetLinearVelocity(new b2Vec2(0,100));
         §3J§().ApplyImpulse(new b2Vec2(30 * §3J§().GetMass(),-60 * §3J§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§9!J§)
         {
            §&!>§ = §]l§ - 1;
            §7![§.setDamagedFrame();
         }
         return §&!>§;
      }
   }
}
