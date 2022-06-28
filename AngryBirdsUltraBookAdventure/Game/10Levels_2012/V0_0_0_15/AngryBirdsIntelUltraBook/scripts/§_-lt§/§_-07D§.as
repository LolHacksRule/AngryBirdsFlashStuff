package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-07D§ extends §_-Fh§
   {
      
      public static const §_-oJ§:String = "MISC_FOOD_EGG";
       
      
      public function §_-07D§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-SJ§().GetPosition().x;
         var _loc3_:Number = §_-SJ§().GetPosition().y;
         var _loc4_:§_-eZ§;
         (_loc4_ = param1.addObject(§_-oJ§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-0N§ = true;
         _loc4_.§_-SJ§().SetLinearVelocity(new b2Vec2(0,100));
         §_-SJ§().ApplyImpulse(new b2Vec2(30 * §_-SJ§().GetMass(),-60 * §_-SJ§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§_-rV§)
         {
            §_-Kh§ = §_-8l§ - 1;
            §_-U-§.setDamagedFrame();
         }
         return §_-Kh§;
      }
   }
}
