package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   
   public class §>!7§ extends §[r§
   {
      
      public static const §4"§:String = "MISC_FOOD_EGG";
       
      
      public function §>!7§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §8!N§().GetPosition().x;
         var _loc3_:Number = §8!N§().GetPosition().y;
         var _loc4_:LevelObject = param1.addObject(§4"§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale);
         _loc4_.§2v§ = true;
         _loc4_.§8!N§().SetLinearVelocity(new b2Vec2(0,100));
         §8!N§().ApplyImpulse(new b2Vec2(30 * §8!N§().GetMass(),-60 * §8!N§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§6!9§)
         {
            §19§ = §^V§ - 1;
            § get§.setDamagedFrame();
         }
         return §19§;
      }
   }
}
