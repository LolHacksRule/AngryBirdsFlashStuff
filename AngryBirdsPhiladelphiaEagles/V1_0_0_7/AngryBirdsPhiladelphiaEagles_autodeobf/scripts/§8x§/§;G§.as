package §8x§
{
   import §,!F§.§#§;
   import §4G§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;G§ extends § %§
   {
      
      public static const §!%§:String = "MISC_FOOD_EGG";
       
      
      public function §;G§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §]!7§().GetPosition().x;
         var _loc3_:Number = §]!7§().GetPosition().y;
         var _loc4_:§8C§;
         (_loc4_ = param1.addObject(§!%§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§,'§ = true;
         _loc4_.§]!7§().SetLinearVelocity(new b2Vec2(0,100));
         §]!7§().ApplyImpulse(new b2Vec2(30 * §]!7§().GetMass(),-60 * §]!7§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§%!3§)
         {
            §<5§ = §`t§ - 1;
            §5!O§.setDamagedFrame();
         }
         return §<5§;
      }
   }
}
