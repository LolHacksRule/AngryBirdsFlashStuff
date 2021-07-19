package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   
   public class §=1§ extends §^"2§
   {
      
      public static const §+R§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §=1§))
         {
            §+R§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §=1§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc7_ && param3))
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && param3))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr41);
                  }
               }
               §§goto(addr41);
            }
            return §§pop();
         }
         addr41:
         var _loc4_:Number = §!!I§().GetPosition().x;
         var _loc5_:Number = §!!I§().GetPosition().y;
         §§push(§§findproperty(§@_§));
         §§push(param1);
         §§push(§+R§);
         §§push(_loc4_);
         §§push(_loc5_);
         if(_loc8_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc6_:§@_§;
         (_loc6_ = §§pop().§@_§(§§pop().§&w§(§§pop(),§§pop(),§§pop(),0,§<!l§.§0"+§,false,true,true,scale))).§@5§ = true;
         if(_loc8_)
         {
            _loc6_.§!!I§().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               §!!I§().ApplyImpulse(new b2Vec2(30 * §!!I§().GetMass(),-60 * §!!I§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
            }
            while(_loc7_ && this);
            
         }
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(specialPowerUsed)
            {
               if(_loc1_ || _loc1_)
               {
                  addr47:
                  §§push(false);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return super.canActivateSpecialPower;
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr47);
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super.applyDamage(param1,param2,param3,param4);
            loop0:
            for(; specialPowerUsed; while(true)
            {
               if(!_loc5_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc6_)
               {
                  continue;
               }
            }
            return health;
         }
         while(true)
         {
            health = healthMax - 1;
            §§goto(addr49);
         }
      }
   }
}
