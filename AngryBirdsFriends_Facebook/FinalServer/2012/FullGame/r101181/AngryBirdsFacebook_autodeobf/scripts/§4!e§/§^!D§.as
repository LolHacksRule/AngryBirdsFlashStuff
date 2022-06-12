package §4!e§
{
   import §2!i§.§=!&§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import flash.display.MovieClip;
   
   public class §^!D§ extends §=!&§
   {
       
      
      private var §,<§:§"m§;
      
      public function §^!D§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  while(!_loc4_)
                  {
                     targetSprite.tabEnabled = false;
                     while(!_loc4_)
                     {
                        §@!L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        loop4:
                        while(true)
                        {
                           §@!L§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           while(true)
                           {
                              §@!L§(§'!f§,param1.@MouseOver);
                              continue loop0;
                              addr42:
                              if(!(_loc4_ && param3))
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != §-N§)
            {
               targetSprite.useHandCursor = true;
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        targetSprite.buttonMode = true;
                        do
                        {
                           if(!_loc3_)
                           {
                              targetSprite.mouseChildren = false;
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        while(!(_loc2_ || this));
                        
                        return;
                     }
                     addr100:
                     while(true)
                     {
                        targetSprite.useHandCursor = false;
                        addr103:
                        while(true)
                        {
                           targetSprite.buttonMode = false;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr23);
                     }
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr100);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§,7§)
            {
               while(true)
               {
                  §§push(param1);
                  while(§§pop() != §+4§)
                  {
                     §§push(param1);
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     if(§§pop() == §="?§)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§,<§);
                           if(_loc2_ || this)
                           {
                              if(_loc2_ || param1)
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             addr140:
                                             §§push(this.§,<§);
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().stop();
                                                      while(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§,<§);
                                                            addr161:
                                                            while(true)
                                                            {
                                                               §§pop().play();
                                                               while(true)
                                                               {
                                                                  §§goto(addr23);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr147:
                                                      while(true)
                                                      {
                                                         this.§,<§ = §>!+§.§;"§.§^!K§(mClip,{
                                                            "scaleX":1,
                                                            "scaleY":1
                                                         },null,0.1);
                                                         continue loop2;
                                                         §§goto(addr147);
                                                      }
                                                      addr64:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         addr186:
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§,<§);
                                                                  addr189:
                                                                  while(true)
                                                                  {
                                                                     §§pop().stop();
                                                                     §§goto(addr190);
                                                                  }
                                                               }
                                                               addr187:
                                                            }
                                                         }
                                                      }
                                                      addr185:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§,<§ = §>!+§.§;"§.§^!K§(mClip,{
                                                         "scaleX":1.1,
                                                         "scaleY":1.1
                                                      },null,0.1);
                                                      §§goto(addr177);
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             addr140:
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr64);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr140);
                        }
                     }
                     §§goto(addr23);
                  }
                  while(true)
                  {
                     §§goto(addr185);
                  }
               }
            }
            addr23:
            §§goto(addr33);
         }
         addr33:
         while(true)
         {
            super.setComponentVisualState(param1);
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop12;
               }
               continue loop3;
            }
            addr40:
            while(!_loc3_)
            {
               if(!(_loc2_ || param1))
               {
                  continue loop13;
               }
               if(!(_loc3_ && _loc3_))
               {
                  continue loop0;
               }
               addr190:
               while(true)
               {
               }
            }
            continue loop2;
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§,<§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr74:
                     this.§,<§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
               addr48:
               §§goto(addr59);
            }
            §§goto(addr74);
         }
         addr59:
         while(true)
         {
            super.viewWidth = param1;
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§,<§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr73:
                  while(true)
                  {
                     §§push(this.§,<§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        addr76:
                        while(true)
                        {
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  if(!(_loc2_ && param1))
                  {
                     break;
                  }
                  §§goto(addr73);
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
   }
}
