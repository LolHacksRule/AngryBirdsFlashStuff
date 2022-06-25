package §"$§
{
   import §0!Q§.UIComponentRovio;
   import §5!3§.§2!R§;
   import §5!3§.ColorFadeLayerEvent;
   import §6a§.§+_§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   
   public class Popup extends §+_§
   {
       
      
      protected const §#k§:Number = 0.25;
      
      protected var §%!Q§:§2!R§;
      
      protected var §+I§:§`X§;
      
      protected var §-9§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§`X§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super(data,currentUIView.container);
                     while(true)
                     {
                        addr104:
                        while(_loc3_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || useFadeEffect)
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
                  super.open(useFadeEffect);
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §`S§.pause();
                        while(true)
                        {
                           loop5:
                           while(_loc2_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 mClip.addChildAt(this.§%!Q§,0);
                                 continue loop1;
                              }
                              continue loop3;
                              addr93:
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              addr100:
                              if(_loc2_ || useFadeEffect)
                              {
                                 if(_loc2_)
                                 {
                                    addr43:
                                    if(!(_loc3_ && useFadeEffect))
                                    {
                                       continue loop2;
                                    }
                                    addr128:
                                    while(true)
                                    {
                                       if(!useFadeEffect)
                                       {
                                          §§push(this.§%!Q§);
                                          if(!_loc3_)
                                          {
                                             §§push(0.7);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§pop().§-d§(§§pop());
                                                addr86:
                                                while(true)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr93);
                                                   §§goto(addr100);
                                                }
                                                continue loop5;
                                                addr86:
                                             }
                                             addr105:
                                             §§pop().§`!]§(§§pop(),this.§#k§);
                                             addr109:
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc2_)
                                                {
                                                   addr28:
                                                   return;
                                                   addr120:
                                                }
                                                continue loop0;
                                             }
                                             §§push(this.§%!Q§);
                                             addr125:
                                          }
                                          §§goto(addr105);
                                          §§push(0.7);
                                       }
                                       break;
                                       §§goto(addr43);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr86);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               addr204:
               loop1:
               while(true)
               {
                  addr179:
                  §§push(useFadeEffect);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop());
                           if(_loc2_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr201:
                                 loop11:
                                 while(true)
                                 {
                                    §§push(this.§%!Q§);
                                    addr149:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(_loc2_)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop11;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       addr165:
                                    }
                                    continue loop3;
                                 }
                              }
                              addr200:
                           }
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§%!Q§);
                                 addr106:
                                 while(true)
                                 {
                                    §§pop().§`!]§(0,this.§#k§);
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                              §§goto(addr165);
                           }
                           addr177:
                           loop16:
                           while(true)
                           {
                              this.close();
                              addr138:
                              loop14:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          break loop14;
                                       }
                                       continue loop16;
                                    }
                                    addr126:
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                                 continue loop16;
                              }
                              return;
                           }
                        }
                        §§goto(addr200);
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function §>H§(e:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || e)
         {
            while(true)
            {
            }
            addr81:
         }
         loop1:
         do
         {
            this.close();
            while(_loc3_)
            {
               if(_loc3_ || _loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr81);
         }
         while(!_loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr171:
         }
         while(true)
         {
            §§push(this.§-9§);
            loop2:
            while(true)
            {
               if(§§pop())
               {
                  addr164:
                  if(_loc2_)
                  {
                     return;
                  }
                  §§goto(addr171);
                  addr163:
               }
               else
               {
                  while(true)
                  {
                     §§push(this.§%!Q§);
                     continue loop2;
                  }
                  addr114:
               }
            }
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            §§push(this.§%!Q§);
            loop6:
            while(true)
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§>H§);
               loop7:
               while(_loc2_)
               {
                  while(true)
                  {
                     mClip.removeChild(this.§%!Q§);
                     loop9:
                     while(true)
                     {
                        addr84:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop7;
                           }
                           if(!_loc3_)
                           {
                              continue loop6;
                           }
                           if(!_loc3_)
                           {
                              §§goto(addr114);
                           }
                           §§goto(addr164);
                           addr47:
                           if(_loc2_ || _loc3_)
                           {
                              continue loop9;
                           }
                        }
                        §§goto(addr117);
                     }
                  }
               }
               §§goto(addr134);
            }
         }
      }
   }
}
