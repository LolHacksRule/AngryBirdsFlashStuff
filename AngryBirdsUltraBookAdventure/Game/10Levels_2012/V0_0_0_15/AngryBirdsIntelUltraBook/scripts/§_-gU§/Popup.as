package §_-gU§
{
   import §_-0Ar§.ColorFadeLayerEvent;
   import §_-0Ar§.§_-0AO§;
   import §_-6C§.§_-SW§;
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import §_-qO§.§ in§;
   
   public class Popup extends §_-SW§
   {
       
      
      protected const §_-VC§:Number = 0.25;
      
      protected var §_-ny§:§_-0AO§;
      
      protected var §_-Nb§:§_-5q§;
      
      protected var §_-00x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§_-5q§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.§_-jX§);
            loop0:
            while(true)
            {
               this.§_-ny§ = new §_-0AO§(0,0,0,0);
               while(true)
               {
                  param2.§_-jX§.addComponent(this);
                  while(_loc3_)
                  {
                     continue loop0;
                     this.§_-Nb§ = param2;
                     if(_loc3_ || param2)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.open(param1);
            while(true)
            {
               § in§.pause();
            }
            addr109:
         }
         loop1:
         while(true)
         {
            mClip.addChildAt(this.§_-ny§,0);
            do
            {
               if(!_loc3_)
               {
                  if(!param1)
                  {
                     §§push(this.§_-ny§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0.7);
                        if(_loc2_)
                        {
                           §§pop().§_-it§(§§pop());
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr24);
                           }
                           addr67:
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           addr81:
                           §§push(this.§_-ny§);
                           §§push(0.7);
                        }
                        §§pop().§_-Zs§(§§pop(),this.§_-VC§);
                        continue;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr67);
               }
               else
               {
                  §§goto(addr109);
               }
            }
            while(!(_loc2_ || _loc3_));
            
            addr24:
            return;
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr119:
                        while(true)
                        {
                           addr94:
                           §§push(this.§_-ny§ == null);
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           continue loop6;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr118:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§_-ny§);
                           loop3:
                           while(true)
                           {
                              §§pop().§_-Zs§(0,this.§_-VC§);
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(this.§_-ny§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(ColorFadeLayerEvent.§_-SC§,this.§_-G0§);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(_loc3_)
                                          {
                                             break loop2;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    §§goto(addr94);
                                 }
                              }
                              addr109:
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              §§goto(addr119);
                           }
                        }
                        return;
                     }
                     this.close();
                     §§goto(addr109);
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr118);
         }
         addr111:
      }
      
      protected function §_-G0§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-00x§)
            {
               §§goto(addr87);
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(this.§_-ny§);
                  loop1:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this.§_-ny§);
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§_-SC§,this.§_-G0§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§_-ny§);
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§pop().clean();
                              loop6:
                              while(_loc2_)
                              {
                                 this.§_-ny§ = null;
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc2_)
                                    {
                                       addr87:
                                       return;
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                       continue loop5;
                                    }
                                    addr36:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       mClip.removeChild(this.§_-ny§);
                                       break loop6;
                                    }
                                    addr73:
                                 }
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  var _loc1_:§_-rD§ = this.§_-Nb§.getItemByName("Container_Popup");
                  if(!_loc3_)
                  {
                     if(_loc1_ != null)
                     {
                        addr180:
                        while(true)
                        {
                           _loc1_.setVisibility(false);
                           addr183:
                           while(true)
                           {
                           }
                        }
                        addr180:
                     }
                     loop8:
                     while(true)
                     {
                        §§push(this.§_-Nb§);
                        if(!_loc3_)
                        {
                           §§push(§§pop().§_-jX§);
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§_-Nb§);
                                    addr173:
                                    while(true)
                                    {
                                       §§push(§§pop().§_-jX§);
                                       addr174:
                                       while(true)
                                       {
                                          §§pop().§_-08X§(this);
                                          addr176:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr137:
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       mClip.dispatchEvent(new §_-tk§(§_-tk§.§_-C9§,this));
                                       addr156:
                                       if(!_loc3_)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             while(true)
                                             {
                                                § in§.resume();
                                                addr130:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             addr161:
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             return;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              while(true)
                              {
                                 this.§_-00x§ = true;
                                 §§goto(addr161);
                                 §§goto(addr176);
                              }
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr36);
      }
   }
}
