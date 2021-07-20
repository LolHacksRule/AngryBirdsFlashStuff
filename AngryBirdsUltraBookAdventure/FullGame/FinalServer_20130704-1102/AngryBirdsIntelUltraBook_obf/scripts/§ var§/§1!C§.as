package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §1!C§ extends §3!5§
   {
      
      public static const §-!5§:String = "MISC_FOOD_EGG";
       
      
      public function §1!C§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §63§().GetPosition().x;
         var _loc3_:Number = §63§().GetPosition().y;
         var _loc4_:§!u§;
         (_loc4_ = param1.addObject(§-!5§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§1!U§ = true;
         _loc4_.§63§().SetLinearVelocity(new b2Vec2(0,100));
         §63§().ApplyImpulse(new b2Vec2(30 * §63§().GetMass(),-60 * §63§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§2!K§)
         {
            §0M§ = §]!3§ - 1;
            §+!j§.setDamagedFrame();
         }
         return §0M§;
      }
   }
}
