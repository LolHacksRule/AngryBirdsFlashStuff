package §#B§
{
   import § y§.b2World;
   import §2!G§.§2!V§;
   import §;h§.b2Vec2;
   import §<!$§.Sprite;
   
   public class §>5§ extends §!!_§
   {
      
      public static const §51§:String = "MISC_FOOD_EGG";
       
      
      public function §>5§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§ ! §) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §4g§().GetPosition().x;
         var _loc3_:Number = §4g§().GetPosition().y;
         var _loc4_:§ ]§;
         (_loc4_ = param1.§5!$§(§51§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§7M§ = true;
         _loc4_.§4g§().SetLinearVelocity(new b2Vec2(0,100));
         §4g§().ApplyImpulse(new b2Vec2(30 * §4g§().GetMass(),-60 * §4g§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§;M§)
         {
            §=1§ = §?G§ - 1;
            §#8§.setDamagedFrame();
         }
         return §=1§;
      }
   }
}
