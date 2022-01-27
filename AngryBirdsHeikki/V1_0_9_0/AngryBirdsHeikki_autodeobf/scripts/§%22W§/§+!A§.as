package §"W§
{
   import § !_§.b2Vec2;
   import § d§.§'!"§;
   import §#!f§.Sprite;
   import §^!Z§.b2World;
   
   public class §+!A§ extends §7!6§
   {
      
      public static const §8r§:String = "MISC_FOOD_EGG";
       
      
      public function §+!A§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §"!H§().GetPosition().x;
         var _loc3_:Number = §"!H§().GetPosition().y;
         var _loc4_:§;N§;
         (_loc4_ = param1.§3!1§(§8r§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§2!6§ = true;
         _loc4_.§"!H§().SetLinearVelocity(new b2Vec2(0,100));
         §"!H§().ApplyImpulse(new b2Vec2(30 * §"!H§().GetMass(),-60 * §"!H§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§]!V§)
         {
            §>[§ = §&J§ - 1;
            §%f§.setDamagedFrame();
         }
         return §>[§;
      }
   }
}
