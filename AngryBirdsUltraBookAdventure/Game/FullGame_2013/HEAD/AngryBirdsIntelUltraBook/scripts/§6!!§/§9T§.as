package §6!!§
{
   import §#!,§.Sprite;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §9T§ extends §6!f§
   {
      
      public static const final:String = "MISC_FOOD_EGG";
       
      
      public function §9T§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §@!'§().GetPosition().x;
         var _loc3_:Number = §@!'§().GetPosition().y;
         var _loc4_:LevelObject = param1.addObject(final,_loc2_,_loc3_ + 0.01,0,false,true,true,scale);
         _loc4_.§`!f§ = true;
         _loc4_.§@!'§().SetLinearVelocity(new b2Vec2(0,100));
         §@!'§().ApplyImpulse(new b2Vec2(30 * §@!'§().GetMass(),-60 * §@!'§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§+!O§)
         {
            §3W§ = §>!"§ - 1;
            §`!P§.setDamagedFrame();
         }
         return §3W§;
      }
   }
}
