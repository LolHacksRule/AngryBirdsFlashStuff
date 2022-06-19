package §#v§
{
   import §!!R§.Sprite;
   import §=E§.b2Vec2;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class § !2§ extends §!!!§
   {
      
      public static const §]!W§:String = "MISC_FOOD_EGG";
       
      
      public function § !2§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §#a§().GetPosition().x;
         var _loc3_:Number = §#a§().GetPosition().y;
         var _loc4_:§#3§;
         (_loc4_ = param1.addObject(§]!W§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§>C§ = true;
         _loc4_.§#a§().SetLinearVelocity(new b2Vec2(0,100));
         §#a§().ApplyImpulse(new b2Vec2(30 * §#a§().GetMass(),-60 * §#a§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§@A§)
         {
            §;!A§ = §]p§ - 1;
            §5-§.setDamagedFrame();
         }
         return §;!A§;
      }
   }
}
