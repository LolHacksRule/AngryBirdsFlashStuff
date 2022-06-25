package §##§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"!@§.ColorFadeLayerEvent;
   import §4!9§.§6"§;
   import §>!-§.UIComponentRovio;
   import §]!6§.§1B§;
   
   public class Popup extends §1B§
   {
       
      
      protected const §]_§:Number = 0.25;
      
      protected var § !A§:§!!8§;
      
      protected var §@!j§:§6"§;
      
      protected var §@S§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§6"§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr159:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr97);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
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
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.open(useFadeEffect);
                  while(_loc2_)
                  {
                     loop3:
                     for(; _loc2_ || _loc2_; loop5:
                     while(true)
                     {
                        if(_loc2_ || useFadeEffect)
                        {
                           mClip.addChildAt(this.§ !A§,0);
                           loop6:
                           do
                           {
                              loop7:
                              while(!useFadeEffect)
                              {
                                 §§push(this.§ !A§);
                                 if(!_loc2_)
                                 {
                                    break loop5;
                                 }
                                 §§push(0.7);
                                 if(!_loc3_)
                                 {
                                    §§pop().§2X§(§§pop());
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop7;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr90);
                              }
                              addr105:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           while(!_loc2_);
                           
                           addr33:
                           return;
                        }
                        continue loop3;
                     },§§goto(addr89))
                     {
                        §]!B§.pause();
                        while(true)
                        {
                           continue loop3;
                           addr113:
                           if(_loc3_ && useFadeEffect)
                           {
                              continue;
                           }
                           §§push(this.§ !A§);
                           while(true)
                           {
                              §§push(0.7);
                              addr90:
                              while(true)
                              {
                                 §§pop().§6k§(§§pop(),this.§]_§);
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr105);
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || useFadeEffect)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(useFadeEffect);
                  if(!(_loc3_ && this))
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr145:
                        if(_loc3_ && useFadeEffect)
                        {
                           continue;
                        }
                        addr153:
                        §§push(Boolean(§§pop()));
                        if(_loc2_)
                        {
                           loop4:
                           for(; !§§pop(); §§goto(addr155))
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§ !A§);
                                 loop6:
                                 while(_loc2_ || this)
                                 {
                                    §§pop().§6k§(0,this.§]_§);
                                    while(_loc2_)
                                    {
                                       loop8:
                                       while(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§ !A§);
                                                if(!_loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                §§pop().addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
                                                for(; _loc2_ || _loc3_; if(_loc2_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         break loop4;
                                                      }
                                                      addr121:
                                                      while(!_loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      return;
                                                   }
                                                   continue loop8;
                                                })
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§push(this.§ !A§);
                                                      break loop6;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.close();
                                                   continue loop0;
                                                }
                                             }
                                             return;
                                             addr96:
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr153);
                                    §§goto(addr191);
                                 }
                                 addr180:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr191);
                                    }
                                 }
                              }
                           }
                           addr155:
                           while(true)
                           {
                              §§goto(addr168);
                           }
                        }
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr96);
      }
      
      protected function §^;§(e:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || this)
         {
            do
            {
               do
               {
                  this.close();
                  while(_loc3_ && e)
                  {
                  }
               }
               while(_loc3_ && e);
               
            }
            while(_loc3_ && e);
            
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
               while(_loc2_)
               {
                  §§push(this.§@S§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§ !A§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§ !A§);
                                       while(!(_loc3_ && this))
                                       {
                                          §§pop().removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                          addr95:
                                          §§push(this.§ !A§);
                                          if(!(_loc2_ || this))
                                          {
                                             continue;
                                          }
                                          §§pop().clean();
                                          loop13:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§ !A§ = null;
                                                         continue loop14;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(_loc2_)
                                                      {
                                                         §§goto(addr95);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr93);
                                                      }
                                                      addr93:
                                                      addr103:
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             addr164:
                                             continue loop3;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              §§goto(addr172);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr115);
      }
   }
}
