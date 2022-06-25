package §>!"§
{
   import §"!2§.§,!J§;
   import §-!>§.§4!T§;
   import §>!<§.UIComponentRovio;
   import §@!H§.§-!H§;
   import §^h§.§5!9§;
   import §^h§.ColorFadeLayerEvent;
   
   public class Popup extends §,!J§
   {
       
      
      protected const §;k§:Number = 0.25;
      
      protected var §@!A§:§5!9§;
      
      protected var §%!U§:§-!H§;
      
      protected var §8§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§-!H§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || data)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super(data,currentUIView.container);
                     while(true)
                     {
                        while(!_loc4_)
                        {
                           this.§@!A§ = new §5!9§(0,0,0,0);
                           loop5:
                           while(true)
                           {
                              while(!_loc4_)
                              {
                                 currentUIView.container.addComponent(this);
                                 continue loop0;
                                 if(_loc3_ || data)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              return;
                              addr77:
                           }
                        }
                        continue loop1;
                        addr99:
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§%!U§ = currentUIView;
                           loop9:
                           while(!(_loc4_ && data))
                           {
                              while(true)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr46);
                              }
                              §§goto(addr77);
                           }
                           while(_loc3_ || _loc3_)
                           {
                              §§goto(addr99);
                              §§goto(addr82);
                           }
                           addr82:
                           continue loop0;
                           addr92:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               super.open(useFadeEffect);
               continue loop0;
               addr132:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               mClip.addChildAt(this.§@!A§,0);
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(!useFadeEffect)
                     {
                        §§push(this.§@!A§);
                        if(!(_loc3_ && useFadeEffect))
                        {
                           §§push(0.7);
                           if(!(_loc3_ && this))
                           {
                              §§pop().§"!>§(§§pop());
                              do
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       §§goto(addr106);
                                    }
                                    break;
                                 }
                                 addr90:
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              while(_loc3_ && useFadeEffect);
                              
                              return;
                           }
                           addr86:
                           §§pop().§89§(§§pop(),this.§;k§);
                           §§goto(addr90);
                        }
                        break;
                     }
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           addr106:
                           if(_loc2_)
                           {
                              §§push(this.§@!A§);
                              break;
                           }
                           while(true)
                           {
                              §4!T§.pause();
                              loop4:
                              while(true)
                              {
                                 addr125:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr132);
                                 }
                                 continue loop1;
                              }
                           }
                           addr158:
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr86);
               }
            }
         }
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(useFadeEffect);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§@!A§);
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    addr56:
                                    if(!(_loc2_ || useFadeEffect))
                                    {
                                       continue;
                                    }
                                    §§pop().addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§,y§);
                                    loop12:
                                    while(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr113:
                                                while(true)
                                                {
                                                   §§push(this.§@!A§);
                                                   addr99:
                                                   while(true)
                                                   {
                                                      §§pop().§89§(0,this.§;k§);
                                                      addr104:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr113);
                                                }
                                                addr43:
                                                if(_loc2_)
                                                {
                                                   return;
                                                }
                                                continue loop1;
                                                addr96:
                                             }
                                             else
                                             {
                                                addr165:
                                             }
                                             addr166:
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             this.close();
                                             addr128:
                                          }
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             §§goto(addr128);
                                          }
                                          return;
                                          addr123:
                                       }
                                       §§goto(addr43);
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§@!A§);
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr56);
                                             }
                                             §§goto(addr99);
                                          }
                                          break;
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr166);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§goto(addr96);
                           }
                           §§goto(addr165);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      protected function §,y§(e:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(!_loc3_)
         {
            do
            {
               do
               {
                  this.close();
                  while(!_loc2_)
                  {
                  }
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(_loc3_ && e);
            
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§8§);
                  loop2:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§@!A§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 addr137:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§@!A§);
                                       while(true)
                                       {
                                          §§pop().removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§,y§);
                                          addr127:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                mClip.removeChild(this.§@!A§);
                                                loop10:
                                                while(true)
                                                {
                                                   addr94:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§push(this.§@!A§);
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc2_ && _loc3_)
                                          {
                                             continue loop4;
                                          }
                                          §§pop().clean();
                                          loop12:
                                          while(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(!(_loc2_ && container))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop12;
                                             }
                                             return;
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    else if(!(_loc3_ || _loc3_))
                                    {
                                       break loop2;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr173:
                              var container:UIComponentRovio = this.§%!U§.getItemByName("Container_Popup");
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(container != null)
                                 {
                                    container.setVisibility(false);
                                    addr337:
                                    addr332:
                                    addr338:
                                 }
                                 addr340:
                                 if(this.§%!U§.container)
                                 {
                                    addr320:
                                    if(!_loc2_)
                                    {
                                       addr323:
                                       §§push(this.§%!U§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§§pop().container);
                                          if(!(_loc2_ && this))
                                          {
                                             §§pop().§0!d§(this);
                                             addr296:
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr267:
                                                if(_loc3_ || this)
                                                {
                                                   addr260:
                                                   this.§8§ = true;
                                                   addr264:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || container)
                                                      {
                                                         §4!T§.resume();
                                                         addr221:
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        mClip.dispatchEvent(new §>f§(§>f§.ON_CLOSE_COMPLETE,this));
                                                                        addr211:
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 return;
                                                                                 addr199:
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         addr247:
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr338);
                                          }
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr199);
                           }
                        }
                        continue loop2;
                     }
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr167);
               }
            }
         }
         while(true)
         {
            §§goto(addr129);
         }
      }
   }
}
