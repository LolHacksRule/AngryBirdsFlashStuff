package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §_-Vn§.b2Vec2;
   import §case §.Sprite;
   
   public class §_-pf§ extends §_-ON§
   {
      
      public static const §_-Fg§:String = "MISC_FOOD_EGG";
       
      
      public function §_-pf§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Zv§().GetPosition().x;
         var _loc3_:Number = §_-Zv§().GetPosition().y;
         var _loc4_:§_-Cb§;
         (_loc4_ = param1.addObject(§_-Fg§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-lW§ = true;
         _loc4_.§_-Zv§().SetLinearVelocity(new b2Vec2(0,100));
         §_-Zv§().ApplyImpulse(new b2Vec2(30 * §_-Zv§().GetMass(),-60 * §_-Zv§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§null§)
         {
            §_-tR§ = §_-m1§ - 1;
            §_-Rh§.setDamagedFrame();
         }
         return §_-tR§;
      }
   }
}
