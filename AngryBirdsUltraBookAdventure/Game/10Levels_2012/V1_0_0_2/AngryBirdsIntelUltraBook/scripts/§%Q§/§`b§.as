package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   
   public class §`b§ extends §3L§
   {
      
      public static const §;!X§:String = "MISC_FOOD_EGG";
       
      
      public function §`b§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §5b§().GetPosition().x;
         var _loc3_:Number = §5b§().GetPosition().y;
         var _loc4_:§`!<§;
         (_loc4_ = param1.addObject(§;!X§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§=!W§ = true;
         _loc4_.§5b§().SetLinearVelocity(new b2Vec2(0,100));
         §5b§().ApplyImpulse(new b2Vec2(30 * §5b§().GetMass(),-60 * §5b§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§?!?§)
         {
            §%!R§ = §-!!§ - 1;
            §?!M§.setDamagedFrame();
         }
         return §%!R§;
      }
   }
}
