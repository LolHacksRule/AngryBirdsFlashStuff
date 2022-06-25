package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   
   public class §`b§ extends §3L§
   {
      
      public static const §;!X§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;!X§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §`b§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc5_ || param1)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr38);
                  }
               }
               §§goto(addr38);
            }
            return §§pop();
         }
         addr38:
         var _loc2_:Number = §5b§().GetPosition().x;
         var _loc3_:Number = §5b§().GetPosition().y;
         §§push(param1);
         §§push(§;!X§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§`!<§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§=!W§ = true;
         if(!_loc6_)
         {
            _loc4_.§5b§().SetLinearVelocity(new b2Vec2(0,100));
         }
         do
         {
            §5b§().ApplyImpulse(new b2Vec2(30 * §5b§().GetMass(),-60 * §5b§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         }
         while(_loc6_);
         
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§?!?§)
            {
               while(true)
               {
                  §%!R§ = §-!!§ - 1;
                  do
                  {
                     §?!M§.setDamagedFrame();
                  }
                  while(_loc7_ && param2);
                  
                  if(_loc8_)
                  {
                     if(_loc8_ || param2)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return §%!R§;
         }
         §§goto(addr68);
      }
   }
}
