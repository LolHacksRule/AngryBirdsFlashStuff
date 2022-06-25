package §1!E§
{
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §>7§.§4+§;
   import flash.display.MovieClip;
   
   public class §==§ extends §4+§
   {
       
      
      private var §,a§:§!q§;
      
      public function §==§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               if(mClip)
               {
                  if(_loc4_)
                  {
                     mClip.buttonMode = true;
                  }
                  loop1:
                  while(true)
                  {
                     mClip.mouseChildren = false;
                     while(true)
                     {
                        mClip.tabEnabled = false;
                        addr109:
                        while(true)
                        {
                        }
                        addr38:
                        if(_loc4_ || param2)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               loop3:
               while(true)
               {
                  §-?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  while(true)
                  {
                     §-?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                     loop5:
                     while(true)
                     {
                        §-?§(§"!n§,param1.@MouseOver);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop5;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            if(param1 != § !M§)
            {
               mClip.useHandCursor = true;
               loop0:
               while(true)
               {
                  mClip.buttonMode = true;
                  while(true)
                  {
                     mClip.mouseChildren = false;
                     loop2:
                     for(; !(_loc3_ && _loc3_); while(true)
                     {
                        super.setComponentState(param1);
                        if(_loc3_ && param1)
                        {
                           break;
                        }
                        continue loop0;
                        §§goto(addr106);
                     })
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        loop5:
                        while(true)
                        {
                           mClip.buttonMode = false;
                           addr99:
                           addr106:
                           while(_loc3_ && param1)
                           {
                              while(true)
                              {
                                 mClip.useHandCursor = false;
                                 continue loop5;
                              }
                              continue loop5;
                           }
                           addr106:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  if(_loc2_ || this)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr99);
                     }
                     return;
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr106);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§3x§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  while(§§pop() != §9!C§)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(§§pop() == §>&§)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§goto(addr23);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr23);
                  }
                  while(true)
                  {
                     §§goto(addr200);
                  }
               }
            }
            addr23:
            loop18:
            while(true)
            {
               super.setComponentVisualState(param1);
               if(_loc2_)
               {
                  addr29:
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  addr113:
                  loop11:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§,a§);
                        if(_loc2_ || this)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().play();
                           while(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue loop18;
                              }
                              addr205:
                              loop19:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    this.§,a§ = §-!,§.§7!j§.§,!`§(mClip,{
                                       "scaleX":1.1,
                                       "scaleY":1.1
                                    },null,0.1);
                                    addr185:
                                    while(true)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          break loop1;
                                       }
                                       §§push(this.§,a§);
                                       while(true)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§pop().play();
                                             continue loop16;
                                          }
                                          addr200:
                                          while(true)
                                          {
                                             §§push(null);
                                             addr201:
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   continue loop14;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§,a§);
                                                   addr204:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      continue loop19;
                                                   }
                                                }
                                             }
                                             break loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              addr55:
                              while(true)
                              {
                                 this.§,a§ = §-!,§.§7!j§.§,!`§(mClip,{
                                    "scaleX":1,
                                    "scaleY":1
                                 },null,0.1);
                                 continue loop11;
                              }
                           }
                           addr148:
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§pop().stop();
                              §§goto(addr148);
                           }
                           else
                           {
                              §§goto(addr152);
                           }
                        }
                        addr76:
                        addr145:
                     }
                     addr129:
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr145);
                              §§push(this.§,a§);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr185);
                        continue loop11;
                     }
                  }
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(null);
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() != §§pop())
                           {
                              §§goto(addr129);
                           }
                           §§goto(addr55);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr204);
                  }
               }
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr205);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§,a§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     addr75:
                     this.§,a§.stop();
                  }
                  while(true)
                  {
                  }
                  addr76:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§,a§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr79:
                     this.§,a§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
               addr38:
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr79);
      }
   }
}
