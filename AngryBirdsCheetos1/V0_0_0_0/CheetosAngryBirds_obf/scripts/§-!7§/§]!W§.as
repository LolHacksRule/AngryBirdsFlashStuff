package §-!7§
{
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §]!W§ extends §^!1§
   {
      
      public static const §'`§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'`§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §]!W§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc6_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         var _loc2_:Number = §`!#§().GetPosition().x;
         var _loc3_:Number = §`!#§().GetPosition().y;
         §§push(param1);
         §§push(§'`§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc6_ || param1)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§@m§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§0=§ = true;
         if(_loc6_ || _loc2_)
         {
            _loc4_.§`!#§().SetLinearVelocity(new b2Vec2(0,100));
         }
         do
         {
            §`!#§().ApplyImpulse(new b2Vec2(30 * §`!#§().GetMass(),-60 * §`!#§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         }
         while(_loc5_);
         
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§]Z§)
            {
               loop1:
               while(true)
               {
                  §4^§ = §,>§ - 1;
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §%n§.setDamagedFrame();
                        if(!_loc8_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return §4^§;
         }
         §§goto(addr50);
      }
   }
}
