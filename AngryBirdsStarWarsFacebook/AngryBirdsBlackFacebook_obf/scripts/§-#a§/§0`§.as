package §-#a§
{
   import §4#!§.§ t§;
   import §<w§.§6#'§;
   import §<w§.§^!q§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import §]!$§.§`#?§;
   
   public class §0`§ extends AbstractPopup
   {
       
      
      protected var §3E§:String;
      
      protected var § #'§:String;
      
      protected var §'F§:String;
      
      protected var §`!w§:§>,§;
      
      protected var §%#]§:Boolean;
      
      public function §0`§(param1:XML, param2:String, param3:§>,§ = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§3E§ = §`#?§.§8#@§();
            while(true)
            {
               this.§ #'§ = §`#?§.§@!!§();
               addr100:
               while(true)
               {
                  this.§'F§ = §`#?§.§[! §();
               }
            }
            addr105:
         }
         loop2:
         while(true)
         {
            super(§`"H§.§""7§,§+5§.§>!g§,param1,param2);
            loop3:
            while(_loc5_)
            {
               this.§=#1§ = param3;
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     continue loop2;
                  }
                  continue loop3;
                  addr66:
                  this.§%#]§ = false;
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break loop2;
                  }
                  §§goto(addr105);
               }
               continue loop2;
            }
            §§goto(addr100);
         }
      }
      
      public function set §=#1§(param1:§>,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!w§ = param1;
         }
         do
         {
            §§push(§§findproperty(§+#=§));
            if(!_loc3_)
            {
               if(!this.§`!w§)
               {
                  §§push(false);
                  continue;
               }
            }
            §§push(true);
            if(_loc3_ && this)
            {
            }
         }
         while(§§pop().§+#=§ = §§pop(), !(_loc2_ || _loc3_));
         
      }
      
      public function get §=#1§() : §>,§
      {
         return this.§`!w§;
      }
      
      protected function setReverseLabels() : void
      {
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!w§ = null;
            do
            {
               super.dispose();
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§>]§);
               addr96:
               addr19:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        dispatchEvent(new § t§(§ t§.§]"]§,id));
                     }
                     break;
                     addr116:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§;X§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        dispatchEvent(new § t§(§ t§.END,id));
                        addr113:
                        while(true)
                        {
                        }
                        addr113:
                     }
                     §§goto(addr113);
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(§6y§.§5z§);
                     if(!(_loc2_ || _loc2_))
                     {
                        continue loop1;
                     }
                     §§push(§§pop() == §§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr89:
                              while(true)
                              {
                                 §§push(!this.§`!w§);
                                 if(!(_loc3_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                           }
                           addr88:
                        }
                        while(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr89);
                                 continue;
                              }
                              if(!(_loc3_ && this))
                              {
                                 dispatchEvent(new § t§(§ t§.§4o§,id));
                              }
                              else
                              {
                                 §§goto(addr113);
                              }
                           }
                           break;
                        }
                        return;
                     }
                     §§goto(addr88);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr113);
      }
      
      override protected function getRunTransitionData() : §6y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6y§ = new §6y§();
         if(_loc2_ || _loc1_)
         {
            _loc1_.§%#N§ = §`#?§.§1#$§;
            while(true)
            {
               _loc1_.§`"i§ = §`#?§.§;!&§;
               addr63:
               if(_loc2_ || this)
               {
                  _loc1_.loop = §+#=§;
                  addr70:
                  if(!_loc2_)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr63);
                        }
                        addr76:
                        addr84:
                        while(_loc2_)
                        {
                           _loc1_.stageQuality = §^!`§;
                           continue loop4;
                        }
                        while(true)
                        {
                           _loc1_.type = §6y§.§5z§;
                           §§goto(addr76);
                        }
                     }
                     while(true)
                     {
                        _loc1_.startLabel = this.§'F§;
                        §§goto(addr84);
                     }
                     addr100:
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr100);
      }
      
      override protected function getTransitionInData() : §6y§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6y§ = new §6y§();
         if(_loc3_)
         {
            _loc1_.§%#N§ = §`#?§.§1#$§;
            while(true)
            {
               _loc1_.§`"i§ = §`#?§.§;!&§;
               loop1:
               for(; !(_loc2_ && _loc1_); while(!(_loc2_ && this))
               {
                  _loc1_.type = §6y§.§>]§;
                  while(_loc3_ || _loc2_)
                  {
                     _loc1_.stageQuality = §^!`§;
                     if(_loc3_ || _loc3_)
                     {
                        return _loc1_;
                     }
                  }
               })
               {
                  while(true)
                  {
                     _loc1_.startLabel = this.§ #'§;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      protected function §0m§() : §6y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6y§ = new §6y§();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§%#N§ = §`#?§.§1#$§;
            loop0:
            while(true)
            {
               _loc1_.§`"i§ = §`#?§.§;!&§;
               loop1:
               while(true)
               {
                  _loc1_.startLabel = this.§3E§;
                  loop2:
                  while(true)
                  {
                     _loc1_.type = §6y§.§;X§;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           _loc1_.stageQuality = §^!`§;
                           if(_loc2_ || this)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return _loc1_;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(§7!=§));
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§7!=§.isRunning));
                        if(_loc2_)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop1;
                           }
                           loop3:
                           while(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 §§push(true);
                                 break loop2;
                              }
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 break loop3;
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr52);
            }
            while(_loc1_);
            
            return §§pop();
         }
         §§goto(addr70);
      }
      
      override protected function onTransitionOutComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.onTransitionComplete(§`"B§);
         }
      }
      
      public function showTransition(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§%#]§ = true;
            loop0:
            while(true)
            {
               if(param1 != "")
               {
                  if(_loc3_ || this)
                  {
                     §6##§ = param1;
                  }
                  while(true)
                  {
                  }
                  addr106:
               }
               loop2:
               while(true)
               {
                  if(!param2)
                  {
                     createTransitionLabels();
                     loop3:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.setReverseLabels();
                                 addr81:
                                 while(true)
                                 {
                                 }
                              }
                              addr79:
                           }
                           while(true)
                           {
                              init();
                              loop4:
                              while(_loc3_)
                              {
                                 §?"-§();
                                 while(!_loc4_)
                                 {
                                    this.show(true);
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          return;
                                       }
                                       continue loop4;
                                       continue loop4;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr81);
                     }
                     continue loop0;
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%#]§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §^c§.setVisibility(true);
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || param1)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop0;
                           }
                           addr97:
                           loop6:
                           while(true)
                           {
                              §§pop();
                              addr98:
                              while(true)
                              {
                                 §§push(Boolean(§7!=§));
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       onTransitionInComplete();
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr24);
                                             }
                                             continue loop1;
                                          }
                                          addr54:
                                          if(_loc2_ || this)
                                          {
                                             break;
                                          }
                                          §§goto(addr98);
                                       }
                                       addr24:
                                       return;
                                       addr82:
                                    }
                                    §§goto(addr54);
                                 }
                                 if(_loc2_ || _loc3_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                                 addr52:
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr78:
                     §%!K§(this.getTransitionInData());
                     §§goto(addr82);
                  }
               }
               return;
            }
         }
         §§goto(addr78);
      }
      
      override protected function runTransition(param1:§^!q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.runTransition(param1);
            loop0:
            while(true)
            {
               §§push(§7!=§);
               if(§7!=§)
               {
                  §§pop();
                  while(true)
                  {
                     §§push(§7!=§.isRunning);
                  }
                  addr130:
               }
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop3:
                  while(true)
                  {
                     §§push(§§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§`!w§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr102:
                                    §§push(this.§`!w§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop().isLoaded);
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       addr39:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr46:
                                          if(!(_loc3_ && param1))
                                          {
                                             loop12:
                                             while(§§pop())
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   addr72:
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr102);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr130);
                                                         }
                                                      }
                                                      continue loop7;
                                                      addr100:
                                                   }
                                                   while(true)
                                                   {
                                                      §7!=§.stop(true);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             return;
                                             addr53:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                §§goto(addr53);
                                             }
                                             §§goto(addr46);
                                          }
                                          continue loop4;
                                          addr93:
                                       }
                                       while(!_loc3_)
                                       {
                                          §§pop();
                                          §§goto(addr100);
                                          §§goto(addr39);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr93);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override protected function uIInteractionHandler(param1:§6#'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(§7!=§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr139:
                        while(true)
                        {
                           §§push(Boolean(§7!=§.isRunning));
                           addr116:
                           while(!_loc2_)
                           {
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(§`"B§ == §6y§.§>]§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                          }
                                          loop9:
                                          while(!§§pop())
                                          {
                                             while(true)
                                             {
                                                onUIInteraction(param1.§@#8§,param1.§=!k§,param1.§^"r§);
                                                if(!_loc3_)
                                                {
                                                   addr60:
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   loop8:
                                                   for(; _loc3_; §§goto(addr60))
                                                   {
                                                      addr110:
                                                      §§push(§`"B§ == §6y§.§;X§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr98:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         continue loop5;
                                                         §§goto(addr110);
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break loop9;
                                                }
                                                if(_loc3_ || this)
                                                {
                                                   return;
                                                }
                                                §§goto(addr139);
                                                §§goto(addr116);
                                             }
                                          }
                                          return;
                                          addr57:
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr98);
                              }
                              continue loop4;
                           }
                        }
                        §§goto(addr57);
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
   }
}
