package §#!P§
{
   import §!!B§.b2World;
   import §3E§.§6w§;
   import §7u§.Sprite;
   import §;U§.b2Vec2;
   
   public class §&!4§ extends §`v§
   {
      
      public static const §3m§:String = "MISC_FOOD_EGG";
       
      
      public function §&!4§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §84§().GetPosition().x;
         var _loc3_:Number = §84§().GetPosition().y;
         var _loc4_:§2!W§;
         (_loc4_ = param1.addObject(§3m§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§3v§ = true;
         _loc4_.§84§().SetLinearVelocity(new b2Vec2(0,100));
         §84§().ApplyImpulse(new b2Vec2(30 * §84§().GetMass(),-60 * §84§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§!N§)
         {
            §1!L§ = §!w§ - 1;
            §<k§.setDamagedFrame();
         }
         return §1!L§;
      }
   }
}
