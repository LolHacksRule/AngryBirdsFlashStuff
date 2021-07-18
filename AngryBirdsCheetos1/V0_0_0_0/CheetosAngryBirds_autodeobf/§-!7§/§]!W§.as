package §-!7§
{
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §]!W§ extends §^!1§
   {
      
      public static const §'`§:String = "MISC_FOOD_EGG";
       
      
      public function §]!W§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`!#§().GetPosition().x;
         var _loc3_:Number = §`!#§().GetPosition().y;
         var _loc4_:§@m§;
         (_loc4_ = param1.addObject(§'`§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§0=§ = true;
         _loc4_.§`!#§().SetLinearVelocity(new b2Vec2(0,100));
         §`!#§().ApplyImpulse(new b2Vec2(30 * §`!#§().GetMass(),-60 * §`!#§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§]Z§)
         {
            §4^§ = §,>§ - 1;
            §%n§.setDamagedFrame();
         }
         return §4^§;
      }
   }
}
