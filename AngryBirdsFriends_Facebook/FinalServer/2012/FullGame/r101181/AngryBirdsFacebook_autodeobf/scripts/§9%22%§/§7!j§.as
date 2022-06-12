package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §7!j§ extends § H§
   {
      
      public static const §`!<§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!<§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §7!j§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
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
                  if(!(_loc6_ && this))
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
         var _loc2_:Number = §=!y§().GetPosition().x;
         var _loc3_:Number = §=!y§().GetPosition().y;
         §§push(param1);
         §§push(§`!<§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§&!r§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§]i§ = true;
         if(_loc5_ || param1)
         {
            _loc4_.§=!y§().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               §=!y§().ApplyImpulse(new b2Vec2(30 * §=!y§().GetMass(),-60 * §=!y§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(_loc6_ && this);
            
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            for(; §-!a§; while(_loc8_ || param2)
            {
            })
            {
               while(true)
               {
                  §[" § = §@!h§ - 1;
                  continue loop0;
                  addr40:
                  if(_loc8_ || this)
                  {
                     break loop0;
                  }
               }
            }
            return §[" §;
         }
         while(true)
         {
            §"!&§.setDamagedFrame();
            if(!_loc7_)
            {
               §§goto(addr40);
            }
            §§goto(addr65);
         }
      }
   }
}
