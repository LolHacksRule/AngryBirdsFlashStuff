package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §-!O§ extends §`!O§
   {
      
      public static const §@!d§:String = "MISC_FOOD_EGG";
       
      
      public function §-!O§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §0c§().GetPosition().x;
         var _loc3_:Number = §0c§().GetPosition().y;
         var _loc4_:§,_§;
         (_loc4_ = param1.§@!,§(§@!d§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§0!>§ = true;
         _loc4_.§0c§().SetLinearVelocity(new b2Vec2(0,100));
         §0c§().ApplyImpulse(new b2Vec2(30 * §0c§().GetMass(),-60 * §0c§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§!!M§)
         {
            §[h§ = §'!V§ - 1;
            §[r§.setDamagedFrame();
         }
         return §[h§;
      }
   }
}
