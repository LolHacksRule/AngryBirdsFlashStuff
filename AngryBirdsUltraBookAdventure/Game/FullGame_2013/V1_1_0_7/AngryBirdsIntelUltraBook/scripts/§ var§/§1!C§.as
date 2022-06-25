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
         if(_loc1_)
         {
            §-!5§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §1!C§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§goto(addr38);
                  }
               }
               var _loc2_:Number = §63§().GetPosition().x;
               var _loc3_:Number = §63§().GetPosition().y;
               §§push(param1);
               §§push(§-!5§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§!u§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§1!U§ = true;
               if(_loc6_)
               {
                  _loc4_.§63§().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     §63§().ApplyImpulse(new b2Vec2(30 * §63§().GetMass(),-60 * §63§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(!(_loc6_ || this));
                  
               }
               return true;
            }
            §§goto(addr38);
         }
         addr38:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§2!K§)
            {
               if(_loc7_ && this)
               {
                  do
                  {
                     §+!j§.setDamagedFrame();
                  }
                  while(!(_loc8_ || param1));
                  
                  break;
               }
               addr77:
               if(_loc7_ && param3)
               {
                  continue;
               }
               §0M§ = §]!3§ - 1;
               §§goto(addr77);
            }
            return §0M§;
         }
         §§goto(addr77);
      }
   }
}
