package §'R§
{
   import §%"§.§ do§;
   import §<!N§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §`@§ extends §7!0§
   {
      
      public static const §-i§:String = "MISC_FOOD_EGG";
       
      
      public function §`@§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§!m§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<!I§().GetPosition().x;
         var _loc3_:Number = §<!I§().GetPosition().y;
         var _loc4_:§&r§;
         (_loc4_ = param1.addObject(§-i§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§0g§ = true;
         _loc4_.§<!I§().SetLinearVelocity(new b2Vec2(0,100));
         §<!I§().ApplyImpulse(new b2Vec2(30 * §<!I§().GetMass(),-60 * §<!I§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§!z§)
         {
            §3! § = §`!O§ - 1;
            §,q§.setDamagedFrame();
         }
         return §3! §;
      }
   }
}
