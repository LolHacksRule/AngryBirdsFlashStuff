package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§="p§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §%3§ extends §]D§
   {
      
      public static const §1a§:String = "icicles";
      
      public static const §=!M§:String = "PIG_TIE_FIGHTER";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1a§ = §="p§.§1a§;
         }
         do
         {
            §=!M§ = "PIG_TIE_FIGHTER";
         }
         while(_loc2_);
         
      }
      
      public function §%3§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7[§ = new §=#<§(§'!P§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.render(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(§]"@§));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr69:
                     while(true)
                     {
                        §§push(Boolean(§]"@§.isFrozen));
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr68:
               }
               while(§§pop())
               {
                  if(!_loc4_)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     this.§;##§();
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr68);
         }
      }
      
      override protected function setFrozen(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§'!P§.definition != §=!M§)
            {
               if(_loc3_)
               {
                  addr45:
                  super.setFrozen(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      private function §;##§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§>"G§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         var _loc1_:Sprite = (§2N§ as §`#§).§-#L§();
         if(!(_loc7_ && this))
         {
            §§push(Boolean(_loc1_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr47:
                     §§pop();
                     addr60:
                     if(_loc6_ || _loc2_)
                     {
                        §§push(_loc1_.numChildren == 1);
                     }
                     _loc2_ = animation.getSubAnimation(§1a§);
                     if(!(_loc7_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           if(!_loc7_)
                           {
                              addr86:
                              §§push(2);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop() + Math.random() * 4));
                                 if(!_loc7_)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr107);
                                 }
                              }
                              _loc4_ = §§pop();
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr86);
                  }
               }
               if(§§pop())
               {
                  §§goto(addr60);
               }
               addr107:
               if(!(_loc7_ && this))
               {
                  §§push(0);
               }
               while(_loc4_ < _loc3_)
               {
                  if(_loc5_ = this.§!R§(_loc2_))
                  {
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     _loc1_.addChild(_loc5_);
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  _loc4_++;
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      private function §!R§(param1:§>"G§) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         §§push(param1.frameCount);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         _loc3_ = param1.getFrame(Math.random() * _loc2_,null);
         if(_loc4_)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  sprite.addChild(_loc3_);
                  while(true)
                  {
                     if(Math.random() >= 0.5)
                     {
                        §§push(_loc3_);
                        §§push(5 + Math.random() * 10);
                        if(!(_loc5_ && this))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              loop3:
                              while(true)
                              {
                                 _loc3_.x = -10 + Math.random() * 20;
                                 while(_loc4_)
                                 {
                                    _loc3_.scaleX = 2 + Math.random();
                                    loop5:
                                    while(_loc4_ || _loc2_)
                                    {
                                       continue loop2;
                                       while(true)
                                       {
                                          _loc3_.scaleY = 2 + Math.random();
                                          if(!(_loc5_ && param1))
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                       return _loc3_;
                                    }
                                 }
                                 addr148:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc3_.y = 5 + Math.random() * 10;
                              }
                              addr168:
                           }
                           §§goto(addr148);
                        }
                     }
                     while(true)
                     {
                        _loc3_.rotation = Math.PI;
                        §§goto(addr168);
                     }
                  }
               }
            }
            §§goto(addr68);
         }
         §§goto(addr104);
      }
   }
}
