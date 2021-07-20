package §!+§
{
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § !1§ extends §=H§
   {
      
      public static const §-n§:String = "MISC_FOOD_EGG";
       
      
      public function § !1§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`t§().GetPosition().x;
         var _loc3_:Number = §`t§().GetPosition().y;
         var _loc4_:§>G§;
         (_loc4_ = param1.addObject(§-n§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§@+§ = true;
         _loc4_.§`t§().SetLinearVelocity(new b2Vec2(0,100));
         §`t§().ApplyImpulse(new b2Vec2(30 * §`t§().GetMass(),-60 * §`t§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§^`§)
         {
            §`0§ = § !,§ - 1;
            §'j§.setDamagedFrame();
         }
         return §`0§;
      }
   }
}
