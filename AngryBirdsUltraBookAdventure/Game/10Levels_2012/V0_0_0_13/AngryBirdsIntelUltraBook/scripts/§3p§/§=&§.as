package §3p§
{
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §=&§ extends §4!G§
   {
      
      public static const §'!O§:String = "MISC_FOOD_EGG";
       
      
      public function §=&§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §9f§().GetPosition().x;
         var _loc3_:Number = §9f§().GetPosition().y;
         var _loc4_:LevelObject = param1.addObject(§'!O§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale);
         _loc4_.§@!Y§ = true;
         _loc4_.§9f§().SetLinearVelocity(new b2Vec2(0,100));
         §9f§().ApplyImpulse(new b2Vec2(30 * §9f§().GetMass(),-60 * §9f§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§2s§)
         {
            §0o§ = §]!3§ - 1;
            §7!O§.setDamagedFrame();
         }
         return §0o§;
      }
   }
}
