package §&c§
{
   import §#;§.§4!8§;
   import §;q§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §!!1§ extends §1!$§
   {
      
      public static const §9T§:String = "MISC_FOOD_EGG";
       
      
      public function §!!1§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§<'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §68§().GetPosition().x;
         var _loc3_:Number = §68§().GetPosition().y;
         var _loc4_:§9h§;
         (_loc4_ = param1.addObject(§9T§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§<!"§ = true;
         _loc4_.§68§().SetLinearVelocity(new b2Vec2(0,100));
         §68§().ApplyImpulse(new b2Vec2(30 * §68§().GetMass(),-60 * §68§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§1V§)
         {
            §<Y§ = §;u§ - 1;
            §<!'§.setDamagedFrame();
         }
         return §<Y§;
      }
   }
}
