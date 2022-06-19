package §_-bl§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-cP§.b2Vec2;
   import §try§.b2World;
   
   public class §_-Qw§ extends §_-ag§
   {
      
      public static const §_-MG§:String = "MISC_FOOD_EGG";
       
      
      public function §_-Qw§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-BO§().GetPosition().x;
         var _loc3_:Number = §_-BO§().GetPosition().y;
         var _loc4_:§_-Ie§;
         (_loc4_ = param1.addObject(§_-MG§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-yf§ = true;
         _loc4_.§_-BO§().SetLinearVelocity(new b2Vec2(0,100));
         §_-BO§().ApplyImpulse(new b2Vec2(30 * §_-BO§().GetMass(),-60 * §_-BO§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§_-YL§)
         {
            §_-T5§ = §_-Rj§ - 1;
            §_-KI§.setDamagedFrame();
         }
         return §_-T5§;
      }
   }
}
