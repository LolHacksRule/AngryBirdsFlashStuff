package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-Ri§ extends §_-zf§
   {
      
      public static const §_-do§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-do§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §_-Ri§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc6_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§goto(addr30);
                  }
               }
               var _loc2_:Number = §_-zq§().GetPosition().x;
               var _loc3_:Number = §_-zq§().GetPosition().y;
               §§push(param1);
               §§push(§_-do§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§_-Dz§;
               (_loc4_ = §§pop().§switch§(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§_-zq§().SetLinearVelocity(new b2Vec2(0,100));
               if(_loc6_)
               {
                  §_-zq§().ApplyImpulse(new b2Vec2(30 * §_-zq§().GetMass(),-60 * §_-zq§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
               }
               return true;
            }
            §§goto(addr30);
         }
         addr30:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super.applyDamage(param1,param2,param3,param4);
            if(_loc5_)
            {
               §§goto(addr35);
            }
            §§goto(addr62);
         }
         addr35:
         if(§_-mb§)
         {
            if(_loc5_ || this)
            {
               §_-Qm§ = §_-FF§ - 1;
               if(!(_loc6_ && param3))
               {
                  addr62:
                  §_-e7§.setDamagedFrame();
               }
            }
            §§goto(addr62);
         }
         return §_-Qm§;
      }
   }
}
