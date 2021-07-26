package §?!8§
{
   import §90§.Sprite;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §2@§ extends §-!1§
   {
      
      public static const §4! §:String = "MISC_FOOD_EGG";
       
      
      public function §2@§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<!9§().GetPosition().x;
         var _loc3_:Number = §<!9§().GetPosition().y;
         var _loc4_:§]f§;
         (_loc4_ = param1.addObject(§4! §,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§2z§ = true;
         _loc4_.§<!9§().SetLinearVelocity(new b2Vec2(0,100));
         §<!9§().ApplyImpulse(new b2Vec2(30 * §<!9§().GetMass(),-60 * §<!9§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§8!2§)
         {
            §`]§ = §+D§ - 1;
            §2W§.setDamagedFrame();
         }
         return §`]§;
      }
   }
}
