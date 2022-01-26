package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-i§ extends §_-FR§
   {
      
      public static const §_-UD§:String = "MISC_FOOD_EGG";
       
      
      public function §_-i§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-dZ§().GetPosition().x;
         var _loc3_:Number = §_-dZ§().GetPosition().y;
         var _loc4_:§_-JP§;
         (_loc4_ = param1.§_-08§(§_-UD§,_loc2_,_loc3_ + 0.01,0,false,true)).§_-dZ§().SetLinearVelocity(new b2Vec2(0,100));
         §_-dZ§().ApplyImpulse(new b2Vec2(30 * §_-dZ§().GetMass(),-60 * §_-dZ§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-SX§)
         {
            §null § = §_-8S§ - 1;
            §_-LF§.setDamagedFrame();
         }
         return §null §;
      }
   }
}
