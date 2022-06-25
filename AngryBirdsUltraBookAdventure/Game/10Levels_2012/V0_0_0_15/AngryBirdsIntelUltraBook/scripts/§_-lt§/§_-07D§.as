package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-07D§ extends §_-Fh§
   {
      
      public static const §_-oJ§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-07D§))
         {
            §_-oJ§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §_-07D§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc5_ || this)
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         var _loc2_:Number = §_-SJ§().GetPosition().x;
         var _loc3_:Number = §_-SJ§().GetPosition().y;
         §§push(param1);
         §§push(§_-oJ§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§_-eZ§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§_-0N§ = true;
         if(_loc5_)
         {
            _loc4_.§_-SJ§().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               §_-SJ§().ApplyImpulse(new b2Vec2(30 * §_-SJ§().GetMass(),-60 * §_-SJ§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(_loc6_);
            
         }
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
            while(§_-rV§)
            {
               while(!(_loc8_ && param3))
               {
                  §_-Kh§ = §_-8l§ - 1;
                  do
                  {
                     §_-U-§.setDamagedFrame();
                  }
                  while(!_loc7_);
                  
                  if(_loc7_ || param1)
                  {
                     addr56:
                     break loop0;
                  }
               }
            }
            return §_-Kh§;
         }
         §§goto(addr56);
      }
   }
}
