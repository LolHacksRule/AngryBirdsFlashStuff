package §_-mj§
{
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-yw§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-7a§ extends §_-8x§
   {
      
      public static const §_-48§:String = "MISC_FOOD_EGG";
       
      
      public function §_-7a§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-oR§().GetPosition().x;
         var _loc3_:Number = §_-oR§().GetPosition().y;
         var _loc4_:§_-GI§;
         (_loc4_ = param1.§_-NT§(§_-48§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-oR§().SetLinearVelocity(new b2Vec2(0,100));
         §_-oR§().ApplyImpulse(new b2Vec2(30 * §_-oR§().GetMass(),-60 * §_-oR§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-zd§)
         {
            §_-QY§ = §_-t6§ - 1;
            §_-M4§.setDamagedFrame();
         }
         return §_-QY§;
      }
   }
}
