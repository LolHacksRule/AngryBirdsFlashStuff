package §=!7§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   
   public class §9"8§ extends §>!D§
   {
       
      
      private var §[!>§:§=!r§;
      
      public function §9"8§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
            while(true)
            {
               targetSprite.buttonMode = true;
               loop1:
               while(_loc4_ || this)
               {
                  targetSprite.mouseChildren = false;
                  while(true)
                  {
                     targetSprite.tabEnabled = false;
                     loop3:
                     while(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           continue loop1;
                        }
                        §7"'§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        loop4:
                        while(true)
                        {
                           §7"'§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           while(!_loc5_)
                           {
                              §7"'§(§2!-§,param1.@MouseOver);
                              continue loop4;
                              if(!(_loc5_ && param1))
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != §&!j§)
            {
               targetSprite.useHandCursor = true;
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        targetSprite.buttonMode = false;
                        addr97:
                        while(true)
                        {
                           while(true)
                           {
                              super.setComponentState(param1);
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop0;
                              }
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr104:
                  }
                  while(true)
                  {
                     targetSprite.buttonMode = true;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               targetSprite.useHandCursor = false;
               §§goto(addr104);
            }
         }
         §§goto(addr82);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§&!%§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     if(§§pop() != §64§)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop() == §3!"§)
                           {
                              while(true)
                              {
                                 §§push(this.§[!>§);
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(null);
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§push(this.§[!>§);
                                                addr134:
                                                loop10:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§pop().stop();
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr144:
                                                            while(true)
                                                            {
                                                               this.§[!>§ = §7I§.§[E§.§ ";§(mClip,{
                                                                  "scaleX":1,
                                                                  "scaleY":1
                                                               },null,0.1);
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(this.§[!>§);
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§pop().play();
                                                                        while(_loc2_ || _loc2_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        continue;
                                                                        addr55:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  §§goto(addr148);
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            addr72:
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      addr142:
                                                   }
                                                   §§goto(addr199);
                                                }
                                             }
                                          }
                                          §§goto(addr72);
                                       }
                                       else
                                       {
                                          §§goto(addr196);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr134);
                              }
                           }
                           break;
                        }
                        continue;
                     }
                     if(_loc2_)
                     {
                        addr193:
                        §§push(this.§[!>§);
                        while(true)
                        {
                           §§push(null);
                           addr196:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 addr197:
                                 while(true)
                                 {
                                    §§push(this.§[!>§);
                                    addr199:
                                    while(true)
                                    {
                                       §§pop().stop();
                                       addr200:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr197:
                              }
                              addr150:
                              loop9:
                              while(true)
                              {
                                 this.§[!>§ = §7I§.§[E§.§ ";§(mClip,{
                                    "scaleX":1.1,
                                    "scaleY":1.1
                                 },null,0.1);
                                 addr164:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.§[!>§);
                                          while(true)
                                          {
                                             §§pop().play();
                                             addr149:
                                             while(true)
                                             {
                                                break loop0;
                                             }
                                          }
                                          addr148:
                                       }
                                       else
                                       {
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr200);
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        addr195:
                     }
                     §§goto(addr197);
                     §§goto(addr199);
                  }
                  while(true)
                  {
                     super.setComponentVisualState(param1);
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr55);
                  }
                  return;
                  addr23:
               }
               §§goto(addr197);
            }
            §§goto(addr23);
         }
         §§goto(addr193);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§[!>§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[!>§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr40:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     return;
                     addr47:
                  }
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
               §§goto(addr47);
            }
            §§goto(addr70);
         }
         §§goto(addr47);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[!>§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr70:
                     this.§[!>§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
               addr39:
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr70);
      }
   }
}
