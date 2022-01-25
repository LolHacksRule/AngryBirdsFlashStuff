package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §6V§.b2Vec2;
   import §<!L§.b2World;
   
   public class §@5§ extends §6y§
   {
      
      public static const §#!Z§:String = "MISC_FOOD_EGG";
       
      
      public function §@5§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §#!!§().GetPosition().x;
         var _loc3_:Number = §#!!§().GetPosition().y;
         var _loc4_:§?![§;
         (_loc4_ = param1.§^!3§(§#!Z§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§1a§ = true;
         _loc4_.§#!!§().SetLinearVelocity(new b2Vec2(0,100));
         §#!!§().ApplyImpulse(new b2Vec2(30 * §#!!§().GetMass(),-60 * §#!!§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§4c§)
         {
            §+m§ = §>!`§ - 1;
            §^!9§.setDamagedFrame();
         }
         return §+m§;
      }
   }
}
