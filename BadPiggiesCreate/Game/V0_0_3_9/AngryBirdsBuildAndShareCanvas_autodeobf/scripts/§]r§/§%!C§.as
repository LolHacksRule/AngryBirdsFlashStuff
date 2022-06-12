package §]r§
{
   import §-!G§.b2Vec2;
   import §7q§.Sprite;
   import §=9§.b2World;
   import §=b§.§-!K§;
   
   public class §%!C§ extends §<!$§
   {
      
      public static const §5"'§:String = "MISC_FOOD_EGG";
       
      
      public function §%!C§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:§9!R§;
         (_loc4_ = param1.addObject(§5"'§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§';§ = true;
         _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§!!K§)
         {
            §7!D§ = §@!#§ - 1;
            §2!7§.setDamagedFrame();
         }
         return §7!D§;
      }
   }
}
