package §`!X§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §=i§.b2Vec2;
   import §^!7§.§^A§;
   
   public class §+!;§ extends §>K§
   {
      
      public static const §@K§:String = "MISC_FOOD_EGG";
       
      
      public function §+!;§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §1!E§().GetPosition().x;
         var _loc3_:Number = §1!E§().GetPosition().y;
         var _loc4_:§5&§;
         (_loc4_ = param1.§8!+§(§@K§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§`!!§ = true;
         _loc4_.§1!E§().SetLinearVelocity(new b2Vec2(0,100));
         §1!E§().ApplyImpulse(new b2Vec2(30 * §1!E§().GetMass(),-60 * §1!E§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§'!8§)
         {
            §^o§ = §'!M§ - 1;
            §?W§.setDamagedFrame();
         }
         return §^o§;
      }
   }
}
