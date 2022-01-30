package §%!&§
{
   import §%h§.§5X§;
   import §9v§.b2Vec2;
   import §?!E§.b2World;
   import §]!2§.Sprite;
   
   public class §?!g§ extends §6""§
   {
      
      public static const §>!O§:String = "MISC_FOOD_EGG";
       
      
      public function §?!g§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'"-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:§;!x§;
         (_loc4_ = param1.addObject(§>!O§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§9!'§ = true;
         _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§&!I§)
         {
            §^!n§ = §?!`§ - 1;
            §+G§.setDamagedFrame();
         }
         return §^!n§;
      }
   }
}
