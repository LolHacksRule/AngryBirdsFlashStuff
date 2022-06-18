package §;z§
{
   import §&!+§.b2Vec2;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §4!&§.b2World;
   
   public class §>S§ extends §=P§
   {
      
      public static const §9!6§:String = "MISC_FOOD_EGG";
       
      
      public function §>S§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^!V§().GetPosition().x;
         var _loc3_:Number = §^!V§().GetPosition().y;
         var _loc4_:§!+§;
         (_loc4_ = param1.addObject(§9!6§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§@u§ = true;
         _loc4_.§^!V§().SetLinearVelocity(new b2Vec2(0,100));
         §^!V§().ApplyImpulse(new b2Vec2(30 * §^!V§().GetMass(),-60 * §^!V§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§%Z§)
         {
            §^,§ = §[!,§ - 1;
            §=t§.setDamagedFrame();
         }
         return §^,§;
      }
   }
}
