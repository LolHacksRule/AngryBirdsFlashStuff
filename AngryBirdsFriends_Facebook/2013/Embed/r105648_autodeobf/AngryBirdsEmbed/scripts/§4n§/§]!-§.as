package §4n§
{
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §]!-§ extends §>!4§
   {
      
      public static const §6n§:String = "MISC_FOOD_EGG";
       
      
      public function §]!-§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^C§().GetPosition().x;
         var _loc3_:Number = §^C§().GetPosition().y;
         var _loc4_:§@!4§;
         (_loc4_ = param1.addObject(§6n§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§@X§ = true;
         _loc4_.§^C§().SetLinearVelocity(new b2Vec2(0,100));
         §^C§().ApplyImpulse(new b2Vec2(30 * §^C§().GetMass(),-60 * §^C§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§8m§)
         {
            §'s§ = §@g§ - 1;
            §`V§.setDamagedFrame();
         }
         return §'s§;
      }
   }
}
