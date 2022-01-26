package §_-fr§
{
   import §_-43§.b2World;
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   
   public class §_-Zi§ extends §_-ZS§
   {
      
      public static const §_-GU§:String = "MISC_FOOD_EGG";
       
      
      public function §_-Zi§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §implements§().GetPosition().x;
         var _loc3_:Number = §implements§().GetPosition().y;
         var _loc4_:§_-FX§;
         (_loc4_ = param1.addObject(§_-GU§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-yK§ = true;
         _loc4_.§implements§().SetLinearVelocity(new b2Vec2(0,100));
         §implements§().ApplyImpulse(new b2Vec2(30 * §implements§().GetMass(),-60 * §implements§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§_-5p§)
         {
            §_-KZ§ = §_-EU§ - 1;
            §_-9G§.setDamagedFrame();
         }
         return §_-KZ§;
      }
   }
}
