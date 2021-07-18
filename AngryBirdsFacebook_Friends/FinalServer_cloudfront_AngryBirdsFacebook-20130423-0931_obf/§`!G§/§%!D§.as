package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   
   public class §%!D§ extends §2"L§
   {
      
      public static const §'V§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'V§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §%!D§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc6_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc6_)
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
         §§push(§'V§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc5_ || param1)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§[!8§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§]"K§ = true;
         if(_loc5_)
         {
            _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(_loc6_);
            
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§#P§)
            {
               do
               {
                  § d§ = §^!2§ - 1;
                  do
                  {
                     §2!8§.setDamagedFrame();
                  }
                  while(!_loc7_);
                  
               }
               while(!(_loc7_ || param1));
               
               if(_loc7_)
               {
                  addr58:
                  break;
               }
            }
            return § d§;
         }
         §§goto(addr58);
      }
   }
}
