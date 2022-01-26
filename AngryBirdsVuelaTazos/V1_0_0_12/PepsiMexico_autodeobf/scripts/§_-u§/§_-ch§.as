package §_-u§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-ch§ extends §_-5j§
   {
      
      public static const §_-pU§:String = "MISC_FOOD_EGG";
       
      
      public function §_-ch§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-t9§().GetPosition().x;
         var _loc3_:Number = §_-t9§().GetPosition().y;
         var _loc4_:§_-5Q§;
         (_loc4_ = param1.§_-Iq§(§_-pU§,_loc2_,_loc3_ + 0.01,0,false,true)).§_-t9§().SetLinearVelocity(new b2Vec2(0,100));
         §_-t9§().ApplyImpulse(new b2Vec2(30 * §_-t9§().GetMass(),-60 * §_-t9§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-Zx§)
         {
            §_-c8§ = §_-gA§ - 1;
            §use§.setDamagedFrame();
         }
         return §_-c8§;
      }
   }
}
