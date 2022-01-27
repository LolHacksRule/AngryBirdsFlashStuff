package §>Y§
{
   import §4!-§.§%o§;
   import §86§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §"!-§ extends §5t§
   {
      
      public static const §%!§:String = "MISC_FOOD_EGG";
       
      
      public function §"!-§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§2>§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §[5§().GetPosition().x;
         var _loc3_:Number = §[5§().GetPosition().y;
         var _loc4_:§#o§;
         (_loc4_ = param1.addObject(§%!§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§0$§ = true;
         _loc4_.§[5§().SetLinearVelocity(new b2Vec2(0,100));
         §[5§().ApplyImpulse(new b2Vec2(30 * §[5§().GetMass(),-60 * §[5§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§4!K§)
         {
            §=4§ = §72§ - 1;
            §%!B§.setDamagedFrame();
         }
         return §=4§;
      }
   }
}
