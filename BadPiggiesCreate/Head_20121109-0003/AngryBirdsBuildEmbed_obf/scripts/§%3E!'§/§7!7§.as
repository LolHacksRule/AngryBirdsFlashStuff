package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   
   public class §7!7§ extends §7!U§
   {
      
      public static const §6!T§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6!T§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §7!7§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr33);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         addr33:
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         §§push(param1);
         §§push(§6!T§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§<!3§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§3!6§ = true;
         if(!_loc6_)
         {
            _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
            if(_loc5_)
            {
               getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(_loc8_)
            {
               if(§6!i§)
               {
                  if(_loc8_ || this)
                  {
                     addr63:
                     §!!>§ = §1!s§ - 1;
                     if(_loc7_ && param3)
                     {
                     }
                     §§goto(addr76);
                  }
                  §0!E§.setDamagedFrame();
               }
               addr76:
               return §!!>§;
            }
         }
         §§goto(addr63);
      }
   }
}
