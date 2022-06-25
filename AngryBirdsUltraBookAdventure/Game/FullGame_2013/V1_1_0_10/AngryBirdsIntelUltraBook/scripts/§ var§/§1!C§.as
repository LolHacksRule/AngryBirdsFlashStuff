package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §1!C§ extends §3!5§
   {
      
      public static const §-!5§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §1!C§))
         {
            §-!5§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §1!C§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
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
                  if(_loc5_ || _loc3_)
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
         var _loc2_:Number = §63§().GetPosition().x;
         var _loc3_:Number = §63§().GetPosition().y;
         §§push(param1);
         §§push(§-!5§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§!u§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§1!U§ = true;
         if(!(_loc6_ && param1))
         {
            _loc4_.§63§().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               §63§().ApplyImpulse(new b2Vec2(30 * §63§().GetMass(),-60 * §63§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(!(_loc5_ || param1));
            
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§2!K§)
            {
               loop1:
               while(true)
               {
                  §0M§ = §]!3§ - 1;
                  addr72:
                  while(true)
                  {
                     §+!j§.setDamagedFrame();
                     if(_loc8_ || param1)
                     {
                        if(_loc8_)
                        {
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return §0M§;
         }
         §§goto(addr72);
      }
   }
}
