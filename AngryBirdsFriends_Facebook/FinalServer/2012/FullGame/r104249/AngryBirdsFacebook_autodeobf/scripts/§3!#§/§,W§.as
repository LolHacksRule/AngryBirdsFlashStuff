package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §7F§.b2Vec2;
   import §]!v§.Sprite;
   
   public class §,W§ extends §!!k§
   {
      
      public static const §9!;§:String = "MISC_FOOD_EGG";
       
      
      public function §,W§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`!y§().GetPosition().x;
         var _loc3_:Number = §`!y§().GetPosition().y;
         var _loc4_:§5"A§;
         (_loc4_ = param1.addObject(§9!;§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§^!h§ = true;
         _loc4_.§`!y§().SetLinearVelocity(new b2Vec2(0,100));
         §`!y§().ApplyImpulse(new b2Vec2(30 * §`!y§().GetMass(),-60 * §`!y§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§'!G§)
         {
            §!!U§ = §3!A§ - 1;
            §<!K§.setDamagedFrame();
         }
         return §!!U§;
      }
   }
}
