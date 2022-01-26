package §_-ST§
{
   import §_-WW§.b2World;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-Bn§ extends §_-GF§
   {
      
      public static const §_-pY§:String = "MISC_FOOD_EGG";
       
      
      public function §_-Bn§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Nu§().GetPosition().x;
         var _loc3_:Number = §_-Nu§().GetPosition().y;
         var _loc4_:§_-fK§;
         (_loc4_ = param1.§_-S5§(§_-pY§,_loc2_,_loc3_ + 0.01,0,false,true)).§_-Nu§().SetLinearVelocity(new b2Vec2(0,100));
         §_-Nu§().ApplyImpulse(new b2Vec2(30 * §_-Nu§().GetMass(),-60 * §_-Nu§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-8R§)
         {
            §_-Sy§ = §_-JQ§ - 1;
            §_-ds§.setDamagedFrame();
         }
         return §_-Sy§;
      }
   }
}
