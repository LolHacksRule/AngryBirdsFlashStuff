package § ""§
{
   import §+L§.b2Vec2;
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §7z§.b2World;
   
   public class §3!5§ extends §0"2§
   {
      
      public static const §@!u§:String = "MISC_FOOD_EGG";
       
      
      public function §3!5§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6!u§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:§%,§;
         (_loc4_ = param1.addObject(§@!u§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§;s§ = true;
         _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§>!d§)
         {
            §=!,§ = §,!f§ - 1;
            §>!M§.setDamagedFrame();
         }
         return §=!,§;
      }
   }
}
