package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5!M§ extends §1!"§
   {
      
      public static const §?!,§:String = "MISC_FOOD_EGG";
       
      
      public function §5!M§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`%§().GetPosition().x;
         var _loc3_:Number = §`%§().GetPosition().y;
         var _loc4_:§3!,§;
         (_loc4_ = param1.addObject(§?!,§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§5§ = true;
         _loc4_.§`%§().SetLinearVelocity(new b2Vec2(0,100));
         §`%§().ApplyImpulse(new b2Vec2(30 * §`%§().GetMass(),-60 * §`%§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§ I§)
         {
            §8!2§ = §53§ - 1;
            §3! §.setDamagedFrame();
         }
         return §8!2§;
      }
   }
}
