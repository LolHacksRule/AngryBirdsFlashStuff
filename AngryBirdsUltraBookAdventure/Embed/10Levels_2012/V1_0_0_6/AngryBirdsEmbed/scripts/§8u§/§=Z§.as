package §8u§
{
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=Z§ extends §0r§
   {
       
      
      public function §=Z§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            if(§7!;§.mTryToBlink > 0)
            {
               if(!_loc4_)
               {
                  addr26:
                  if(§7!;§.mTryToBlink >= §44§.§8g§)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(true);
                        if(_loc3_ || _loc2_)
                        {
                           _loc2_ = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              §7!;§.mTryToBlink = §44§.§8g§ - 1;
                              addr69:
                              §7!;§.mTryToBlink -= param1;
                              if(!_loc4_)
                              {
                                 if(§7!;§.mTryToBlink <= 0)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr93:
                                       §§push(true);
                                       if(!(_loc4_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             addr118:
                                             §§push(_loc2_);
                                             addr104:
                                          }
                                          else
                                          {
                                             addr108:
                                             §7!;§.mTryToBlink = 0;
                                             addr111:
                                             §7!;§.mIsBlinking = false;
                                             addr114:
                                             §§push(true);
                                             if(!_loc4_)
                                             {
                                                addr117:
                                                _loc2_ = §§pop();
                                                §§goto(addr118);
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr69);
               }
               §§goto(addr111);
            }
            else if(§7!;§.mIsBlinking)
            {
               §§goto(addr108);
            }
            §§goto(addr118);
         }
         §§goto(addr26);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_ || _loc2_)
         {
            if(§7!;§.mTryToScream > 0)
            {
               if(_loc4_)
               {
                  if(§7!;§.mTryToScream >= §44§.§;<§)
                  {
                     if(_loc4_)
                     {
                        §§push(true);
                        if(!(_loc3_ && param1))
                        {
                           _loc2_ = §§pop();
                           this.playScreamingSoundEffect();
                           §7!;§.mTryToScream = §44§.§;<§ - 1;
                           if(!_loc3_)
                           {
                              §§goto(addr67);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr112);
                  }
               }
               addr67:
               §7!;§.mTryToScream -= param1;
               if(!_loc3_)
               {
                  if(§7!;§.mTryToScream <= 0)
                  {
                     §§push(true);
                     if(_loc4_ || param1)
                     {
                        addr97:
                        _loc2_ = §§pop();
                     }
                     §§goto(addr120);
                  }
                  addr119:
                  §§push(_loc2_);
               }
               else
               {
                  addr112:
                  §7!;§.mIsScreaming = false;
                  §§push(true);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr119);
                  }
               }
               addr120:
               return §§pop();
            }
            if(§7!;§.mIsScreaming)
            {
               if(_loc4_ || this)
               {
                  §7!;§.mTryToScream = 0;
               }
               §§goto(addr112);
            }
            §§goto(addr119);
         }
         §§goto(addr112);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!"§(§implements§.§'!;§);
         }
      }
   }
}
