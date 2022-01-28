package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-SE§.Sprite;
   import §_-bA§.b2Vec2;
   import §_-vk§.b2World;
   
   public class §_-02§ extends §_-f5§
   {
      
      public static const §_-dg§:String = "MISC_FOOD_EGG";
       
      
      public function §_-02§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-UF§().GetPosition().x;
         var _loc3_:Number = §_-UF§().GetPosition().y;
         var _loc4_:§_-lx§;
         (_loc4_ = param1.§_-ZA§(§_-dg§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-vD§ = true;
         _loc4_.§_-UF§().SetLinearVelocity(new b2Vec2(0,100));
         §_-UF§().ApplyImpulse(new b2Vec2(30 * §_-UF§().GetMass(),-60 * §_-UF§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-dv§)
         {
            §_-hs§ = §_-eV§ - 1;
            §_-bV§.setDamagedFrame();
         }
         return §_-hs§;
      }
   }
}
