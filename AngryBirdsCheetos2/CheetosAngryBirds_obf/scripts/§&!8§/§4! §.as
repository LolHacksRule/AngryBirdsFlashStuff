package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import §^a§.Sprite;
   
   public class §4! § extends §]V§
   {
      
      public static const §6r§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4! §)
         {
            §6r§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §4! §(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc6_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc2_:Number = §`e§().GetPosition().x;
               var _loc3_:Number = §`e§().GetPosition().y;
               §§push(param1);
               §§push(§6r§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§[g§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§#!$§ = true;
               if(_loc5_ || _loc3_)
               {
                  _loc4_.§`e§().SetLinearVelocity(new b2Vec2(0,100));
               }
               do
               {
                  §`e§().ApplyImpulse(new b2Vec2(30 * §`e§().GetMass(),-60 * §`e§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
               }
               while(_loc6_ && this);
               
               return true;
            }
            §§goto(addr42);
         }
         addr42:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§,B§)
            {
               loop1:
               while(true)
               {
                  §+_§ = § !G§ - 1;
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §5d§.setDamagedFrame();
                        if(_loc8_ || param1)
                        {
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return §+_§;
         }
         §§goto(addr56);
      }
   }
}
