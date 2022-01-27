package §3F§
{
   import §3H§.Sprite;
   import §>2§.§4h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §80§ extends §=4§
   {
      
      public static const §86§:String = "MISC_FOOD_EGG";
       
      
      public function §80§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0z§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?!M§().GetPosition().x;
         var _loc3_:Number = §?!M§().GetPosition().y;
         var _loc4_:§2!3§;
         (_loc4_ = param1.addObject(§86§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§!4§ = true;
         _loc4_.§?!M§().SetLinearVelocity(new b2Vec2(0,100));
         §?!M§().ApplyImpulse(new b2Vec2(30 * §?!M§().GetMass(),-60 * §?!M§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§"i§)
         {
            §7^§ = §0-§ - 1;
            §^! §.setDamagedFrame();
         }
         return §7^§;
      }
   }
}
