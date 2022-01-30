package §4!#§
{
   import §&!M§.b2World;
   import §3!t§.b2Vec2;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class §&![§ extends §@!m§
   {
      
      public static const §""2§:String = "MISC_FOOD_EGG";
       
      
      public function §&![§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§[R§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:§60§;
         (_loc4_ = param1.addObject(§""2§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§@V§ = true;
         _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§3!b§)
         {
            §2E§ = §<e§ - 1;
            §8!5§.setDamagedFrame();
         }
         return §2E§;
      }
   }
}
