package §!+§
{
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § !1§ extends §=H§
   {
      
      public static const §-n§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && § !1§))
         {
            §-n§ = "MISC_FOOD_EGG";
         }
      }
      
      public function § !1§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr33);
                  }
               }
               var _loc2_:Number = §`t§().GetPosition().x;
               var _loc3_:Number = §`t§().GetPosition().y;
               §§push(param1);
               §§push(§-n§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§>G§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§@+§ = true;
               if(_loc6_ || this)
               {
                  _loc4_.§`t§().SetLinearVelocity(new b2Vec2(0,100));
                  if(_loc6_ || this)
                  {
                     addr111:
                     §`t§().ApplyImpulse(new b2Vec2(30 * §`t§().GetMass(),-60 * §`t§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  return true;
               }
               §§goto(addr111);
            }
            §§goto(addr33);
         }
         addr33:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(_loc7_)
            {
               §§goto(addr38);
            }
            §§goto(addr47);
         }
         addr38:
         if(§^`§)
         {
            if(_loc7_ || param3)
            {
               addr47:
               §`0§ = § !,§ - 1;
               if(!_loc7_)
               {
               }
               §§goto(addr55);
            }
            §'j§.setDamagedFrame();
         }
         addr55:
         return §`0§;
      }
   }
}
