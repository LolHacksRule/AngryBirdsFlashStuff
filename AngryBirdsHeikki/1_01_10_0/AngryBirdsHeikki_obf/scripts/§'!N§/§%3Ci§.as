package §'!N§
{
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§4!Y§;
   import flash.display.MovieClip;
   
   public class §<i§ extends §4!Y§
   {
       
      
      private var §4v§:§&[§;
      
      public function §<i§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               loop1:
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  loop2:
                  while(true)
                  {
                     targetSprite.tabEnabled = false;
                     loop3:
                     while(true)
                     {
                        §[!O§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        while(true)
                        {
                           §[!O§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           while(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    §[!O§(§3"§,param1.@MouseOver);
                                    loop6:
                                    while(_loc5_ || param3)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                          while(true)
                                          {
                                             §[!O§(§#!C§,param1.@MouseOut);
                                             if(!(_loc4_ && param2))
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop1;
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != §[&§)
            {
               targetSprite.useHandCursor = true;
               while(true)
               {
                  if(!_loc2_)
                  {
                     targetSprite.buttonMode = true;
                     continue;
                  }
               }
            }
            while(true)
            {
               targetSprite.useHandCursor = false;
               §§goto(addr104);
            }
         }
         §§goto(addr54);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(§;c§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §=w§)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(§§pop() == §-j§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§4v§);
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.§4v§);
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().stop();
                                             addr129:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr136:
                                                   while(true)
                                                   {
                                                      this.§4v§ = §"!X§.§ s§.§%!;§(mClip,{
                                                         "scaleX":1,
                                                         "scaleY":1
                                                      },null,0.1);
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(_loc3_ && param1)
                                                         {
                                                            break loop1;
                                                         }
                                                         §§push(this.§4v§);
                                                         if(_loc3_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().play();
                                                               while(true)
                                                               {
                                                                  §§goto(addr28);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                               }
                                                               addr199:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop().play();
                                                               addr141:
                                                               while(_loc2_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr28);
                                                                  }
                                                               }
                                                            }
                                                            addr140:
                                                         }
                                                         while(true)
                                                         {
                                                            addr149:
                                                            while(true)
                                                            {
                                                               this.§4v§ = §"!X§.§ s§.§%!;§(mClip,{
                                                                  "scaleX":1.1,
                                                                  "scaleY":1.1
                                                               },null,0.1);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   addr67:
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                          addr128:
                                       }
                                       addr197:
                                       while(true)
                                       {
                                          §§goto(addr199);
                                       }
                                    }
                                 }
                                 §§goto(addr67);
                              }
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§goto(addr197);
                                 }
                                 §§goto(addr149);
                              }
                              addr196:
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr28);
                  }
                  while(true)
                  {
                     §§push(this.§4v§);
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr196);
                        §§push(null);
                     }
                     §§goto(addr199);
                  }
               }
            }
            addr28:
            while(true)
            {
               super.setComponentVisualState(param1);
               if(_loc2_ || this)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     continue loop15;
                  }
                  continue loop11;
               }
               continue loop12;
            }
            return;
         }
         §§goto(addr148);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§4v§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr64:
                     this.§4v§.stop();
                     addr65:
                     while(true)
                     {
                     }
                     addr65:
                  }
                  §§goto(addr65);
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4v§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4v§);
                     addr64:
                     while(true)
                     {
                        §§pop().stop();
                        addr65:
                        while(true)
                        {
                        }
                     }
                     addr39:
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     return;
                     addr46:
                  }
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
               §§goto(addr46);
            }
            §§goto(addr64);
         }
         §§goto(addr46);
      }
   }
}
