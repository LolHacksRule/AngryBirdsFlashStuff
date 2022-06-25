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
         if(_loc4_ || this)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     super(data,currentUIView.container);
                     addr73:
                     if(!(_loc4_ || data))
                     {
                        continue;
                     }
                     addr80:
                     if(_loc4_ || currentUIView)
                     {
                        if(!_loc3_)
                        {
                           addr49:
                           if(!(_loc3_ && data))
                           {
                              return;
                           }
                           loop7:
                           while(true)
                           {
                              addr83:
                              while(_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    break loop7;
                                 }
                                 this.§@!j§ = currentUIView;
                                 while(!_loc3_)
                                 {
                                    §§goto(addr73);
                                    §§goto(addr80);
                                 }
                                 while(!(_loc3_ && data))
                                 {
                                    currentUIView.container.addComponent(this);
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr97);
                                 }
                                 addr97:
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr143:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr71);
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super.open(useFadeEffect);
                  loop2:
                  for(; _loc2_ || this; loop6:
                  do
                  {
                     if(!(_loc2_ || this))
                     {
                        continue loop2;
                     }
                     mClip.addChildAt(this.§ !A§,0);
                     loop7:
                     while(true)
                     {
                        do
                        {
                           if(_loc3_ && useFadeEffect)
                           {
                              continue loop7;
                           }
                           if(!_loc3_)
                           {
                              if(!useFadeEffect)
                              {
                                 §§push(this.§ !A§);
                                 if(!_loc3_)
                                 {
                                    §§push(0.7);
                                    if(!_loc3_)
                                    {
                                       §§pop().§2X§(§§pop());
                                       while(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                addr82:
                                             }
                                             return;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    addr67:
                                    §§push(0.7);
                                 }
                                 §§pop().§6k§(§§pop(),this.§]_§);
                                 §§goto(addr82);
                              }
                              §§goto(addr86);
                           }
                           else
                           {
                              §§goto(addr148);
                           }
                        }
                        while(!(_loc2_ || this));
                        
                        continue loop6;
                     }
                  }
                  while(_loc3_ && this);
                  ,§§goto(addr67))
                  {
                     while(true)
                     {
                        while(true)
                        {
                           §]!B§.pause();
                           addr148:
                           while(_loc2_ || this)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(useFadeEffect);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr149:
                        if(!(_loc2_ || useFadeEffect))
                        {
                           continue;
                        }
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                              }
                              continue loop1;
                           }
                           loop8:
                           while(true)
                           {
                              §§push(this.§ !A§);
                              loop9:
                              while(true)
                              {
                                 §§pop().§6k§(0,this.§]_§);
                                 loop10:
                                 while(!(_loc3_ && this))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§ !A§);
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§pop().addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
                                             loop12:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop10;
                                                         }
                                                         addr126:
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop12;
                                                }
                                                return;
                                             }
                                             continue;
                                          }
                                          addr185:
                                          addr130:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() == null);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr149);
                                             }
                                             addr195:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop6;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_ || useFadeEffect)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       continue loop8;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr185);
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §^;§(e:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
         }
         loop0:
         while(true)
         {
            do
            {
               this.close();
               continue loop0;
            }
            while(!_loc3_);
            
            return;
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
                  §§push(this.§@S§);
                  loop2:
                  for(; !§§pop(); loop4:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ && container)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(_loc2_)
                           {
                              §§push(this.§ !A§);
                              loop7:
                              while(true)
                              {
                                 §§pop().removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
                                 loop8:
                                 while(!(_loc3_ && container))
                                 {
                                    loop9:
                                    while(!_loc3_)
                                    {
                                       mClip.removeChild(this.§ !A§);
                                       while(_loc2_ || this)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             continue loop9;
                                          }
                                          continue loop4;
                                       }
                                       continue loop8;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr146);
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr152);
                  })
                  {
                     while(true)
                     {
                        §§push(this.§ !A§);
                        continue loop2;
                     }
                  }
                  addr146:
                  return;
               }
            }
         }
         §§goto(addr73);
      }
   }
}
