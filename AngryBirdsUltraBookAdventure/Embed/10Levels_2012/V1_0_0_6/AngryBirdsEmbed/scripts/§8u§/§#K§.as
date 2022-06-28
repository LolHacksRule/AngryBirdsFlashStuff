package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#K§ extends §8j§
   {
      
      public static const §@!=§:String = "MISC_FOOD_EGG";
       
      
      public function §#K§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?n§().GetPosition().x;
         var _loc3_:Number = §?n§().GetPosition().y;
         var _loc4_:§0r§;
         (_loc4_ = param1.addObject(§@!=§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§9R§ = true;
         _loc4_.§?n§().SetLinearVelocity(new b2Vec2(0,100));
         §?n§().ApplyImpulse(new b2Vec2(30 * §?n§().GetMass(),-60 * §?n§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§=t§)
         {
            §@^§ = §%!J§ - 1;
            §7!;§.setDamagedFrame();
         }
         return §@^§;
      }
   }
}
