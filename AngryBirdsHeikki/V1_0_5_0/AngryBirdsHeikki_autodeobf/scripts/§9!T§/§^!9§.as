package §9!T§
{
   import §+D§.§5!P§;
   import §,!3§.b2Vec2;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §^!9§ extends §5g§
   {
      
      public static const §!B§:String = "MISC_FOOD_EGG";
       
      
      public function §^!9§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<k§().GetPosition().x;
         var _loc3_:Number = §<k§().GetPosition().y;
         var _loc4_:§;!"§;
         (_loc4_ = param1.§+!3§(§!B§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§-!?§ = true;
         _loc4_.§<k§().SetLinearVelocity(new b2Vec2(0,100));
         §<k§().ApplyImpulse(new b2Vec2(30 * §<k§().GetMass(),-60 * §<k§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§,u§)
         {
            §1K§ = §0!a§ - 1;
            §1I§.setDamagedFrame();
         }
         return §1K§;
      }
   }
}
