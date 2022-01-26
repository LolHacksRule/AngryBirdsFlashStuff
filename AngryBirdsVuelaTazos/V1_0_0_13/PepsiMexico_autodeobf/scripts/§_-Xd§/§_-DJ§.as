package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   import §var§.b2Vec2;
   
   public class §_-DJ§ extends §_-Xr§
   {
      
      public static const §_-Ig§:String = "MISC_FOOD_EGG";
       
      
      public function §_-DJ§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-vv§().GetPosition().x;
         var _loc3_:Number = §_-vv§().GetPosition().y;
         var _loc4_:§_-sW§;
         (_loc4_ = param1.§_-5h§(§_-Ig§,_loc2_,_loc3_ + 0.01,0,false,true)).§_-vv§().SetLinearVelocity(new b2Vec2(0,100));
         §_-vv§().ApplyImpulse(new b2Vec2(30 * §_-vv§().GetMass(),-60 * §_-vv§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-aR§)
         {
            §_-gg§ = §_-jW§ - 1;
            §_-UF§.setDamagedFrame();
         }
         return §_-gg§;
      }
   }
}
