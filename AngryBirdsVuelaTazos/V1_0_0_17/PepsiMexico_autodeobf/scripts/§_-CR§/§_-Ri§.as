package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-Ri§ extends §_-zf§
   {
      
      public static const §_-do§:String = "MISC_FOOD_EGG";
       
      
      public function §_-Ri§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-zq§().GetPosition().x;
         var _loc3_:Number = §_-zq§().GetPosition().y;
         var _loc4_:§_-Dz§;
         (_loc4_ = param1.§switch§(§_-do§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§_-zq§().SetLinearVelocity(new b2Vec2(0,100));
         §_-zq§().ApplyImpulse(new b2Vec2(30 * §_-zq§().GetMass(),-60 * §_-zq§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(§_-mb§)
         {
            §_-Qm§ = §_-FF§ - 1;
            §_-e7§.setDamagedFrame();
         }
         return §_-Qm§;
      }
   }
}
