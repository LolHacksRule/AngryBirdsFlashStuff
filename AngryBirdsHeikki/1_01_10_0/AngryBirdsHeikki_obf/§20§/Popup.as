package §20§
{
   import §'!N§.§#!V§;
   import §5!1§.§&[§;
   import §9!@§.§-k§;
   import §9!@§.ColorFadeLayerEvent;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   
   public class Popup extends §#!V§
   {
       
      
      private const §;s§:Number = 0.25;
      
      protected var §+!_§:§-k§ = null;
      
      protected var §>K§:§]!Q§;
      
      private var §"!]§:Boolean;
      
      protected var §@J§:§&[§;
      
      public function Popup(param1:XML, param2:§]!Q§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2.container);
            loop0:
            while(true)
            {
               if(this.§+!_§ == null)
               {
                  while(true)
                  {
                     this.§+!_§ = new §-k§(0,0,0,0);
                     addr98:
                     while(true)
                     {
                        addr35:
                        if(!(_loc3_ && param1))
                        {
                           return;
                           addr42:
                        }
                     }
                  }
                  addr80:
               }
               loop3:
               while(true)
               {
                  param2.container.addComponent(this);
                  loop4:
                  while(true)
                  {
                     this.§>K§ = param2;
                     loop5:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop4;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr80);
                        addr68:
                        while(true)
                        {
                           this.§"!]§ = false;
                           if(_loc3_)
                           {
                              continue loop5;
                           }
                           §§goto(addr35);
                        }
                        §§goto(addr42);
                     }
                     continue loop3;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
            loop0:
            do
            {
               §"!S§.§99§();
               loop1:
               while(true)
               {
                  mClip.addChildAt(this.§+!_§,0);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(param1)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§+!_§);
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           §§push(this.§+!_§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(0.7);
                           if(_loc2_)
                           {
                              §§pop().§import§(§§pop());
                              if(_loc2_ || param1)
                              {
                                 §§goto(addr19);
                              }
                           }
                           else
                           {
                              addr62:
                              §§pop().§4!?§(§§pop(),this.§;s§);
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr62);
               }
            }
            while(!_loc2_);
            
         }
         addr19:
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§+!_§);
                              loop7:
                              while(_loc3_)
                              {
                                 §§pop().§4!?§(0,this.§;s§);
                                 for(; _loc3_; §§pop().addEventListener(ColorFadeLayerEvent.override,this.§2$§),if(_loc3_ || _loc3_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          return;
                                          addr65:
                                       }
                                       addr116:
                                       this.close();
                                       break;
                                    }
                                    continue loop6;
                                 })
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.§+!_§);
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       §§push(this.§+!_§);
                                       break loop7;
                                    }
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 §§push(§§pop() == null);
                                 if(!_loc2_)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr123:
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr124);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr116);
                     }
                     addr104:
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §2$§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§@J§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§@J§);
                     addr209:
                     while(true)
                     {
                        §§pop().stop();
                        addr210:
                        while(true)
                        {
                        }
                     }
                  }
                  addr207:
               }
               loop1:
               while(true)
               {
                  if(!this.§"!]§)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§+!_§);
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§+!_§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(ColorFadeLayerEvent.override,this.§2$§);
                                    loop6:
                                    while(true)
                                    {
                                       mClip.removeChild(this.§+!_§);
                                       loop7:
                                       while(true)
                                       {
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop4;
                                          }
                                          §§push(this.§+!_§);
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§pop().clean();
                                          while(true)
                                          {
                                             this.§+!_§ = null;
                                             loop9:
                                             while(!(_loc1_ && _loc1_))
                                             {
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc1_)
                                                {
                                                   §§goto(addr184);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§>K§);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push(§§pop().container);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(_loc2_)
                                                            {
                                                               §§push(this.§>K§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().container);
                                                                  addr112:
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeComponent(this);
                                                                     addr114:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop9;
                                                            addr107:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§"!]§ = true;
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     §"!S§.§^e§();
                                                                     loop14:
                                                                     for(; !(_loc1_ && this); while(true)
                                                                     {
                                                                        mClip.dispatchEvent(new §`w§(§`w§.§?!?§,this));
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop14;
                                                                     },return)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr111);
                                                }
                                             }
                                          }
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             §§goto(addr48);
                                          }
                                          else
                                          {
                                             §§goto(addr207);
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           §§goto(addr83);
                        }
                     }
                  }
                  addr184:
                  return;
               }
            }
            §§goto(addr209);
         }
         §§goto(addr61);
      }
   }
}
