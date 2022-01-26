package §3d§
{
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §9t§.b2World;
   import §^q§.b2Vec2;
   
   public class §>-§ extends §6!7§
   {
      
      public static const §>!H§:String = "MISC_FOOD_EGG";
       
      
      public function §>-§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§@?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §=!,§().GetPosition().x;
         var _loc3_:Number = §=!,§().GetPosition().y;
         var _loc4_:§20§;
         (_loc4_ = param1.addObject(§>!H§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§]!<§ = true;
         _loc4_.§=!,§().SetLinearVelocity(new b2Vec2(0,100));
         §=!,§().ApplyImpulse(new b2Vec2(30 * §=!,§().GetMass(),-60 * §=!,§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§4r§)
         {
            §2>§ = §,!,§ - 1;
            §5!@§.setDamagedFrame();
         }
         return §2>§;
      }
   }
}
