package §;!W§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§;x§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §%,§ extends §7"]§
   {
      
      public static const §#!X§:int = 50;
      
      protected static const §@"6§:String = "MightyEagleButtonVisible";
      
      protected static const §5"T§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1!>§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#!X§ = 50;
            loop0:
            while(true)
            {
               §@"6§ = "MightyEagleButtonVisible";
               loop1:
               do
               {
                  §5"T§ = "MightyEagleButtonPrepareHide";
                  while(_loc2_)
                  {
                     §1!>§ = "MightyEagleButtonHide";
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
            }
         }
      }
      
      protected var § F§:§6#!§;
      
      protected var §0"-§:§;7§;
      
      protected var §%8§:§[#R§;
      
      protected var §@"u§:String;
      
      protected var §9"3§:§^"m§;
      
      protected var §9"n§:§^"m§;
      
      protected var §5#H§:§^"m§;
      
      protected var §[!S§:§^"m§;
      
      protected var §4s§:TextField;
      
      protected var §0#,§:MovieClip;
      
      protected var §+F§:§ #^§;
      
      protected var §,-§:Boolean = false;
      
      protected var §-?§:§6!D§;
      
      public function §%,§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§0"-§ = new §;7§();
            loop0:
            while(true)
            {
               super(param1,param2,param4,param5);
               do
               {
                  this.§ F§ = param3;
                  continue loop0;
               }
               while(!_loc7_);
               
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§,-§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=#=§.setVisibility(false);
            while(true)
            {
               this.§9"3§ = §^"m§(§=#=§.getItemByName("Button_MightyEagle"));
               addr79:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               this.§4s§ = TextField(§=#=§.getItemByName("Container_MEScore").mClip.text);
               addr86:
               if(!_loc2_)
               {
                  addr40:
                  if(!_loc2_)
                  {
                     addr42:
                     if(_loc1_ || _loc1_)
                     {
                        addr49:
                        if(_loc1_ || _loc1_)
                        {
                           addr56:
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 this.§9"n§ = §^"m§(§=#=§.getItemByName("Button_Pause"));
                                 addr121:
                                 while(true)
                                 {
                                    this.§5#H§ = §^"m§(§=#=§.getItemByName("Button_Restart"));
                                    addr112:
                                    while(true)
                                    {
                                       this.§[!S§ = §^"m§(§=#=§.getItemByName("Button_FullScreen"));
                                       addr103:
                                       while(true)
                                       {
                                          this.§0#,§ = §=#=§.getItemByName("Container_MightyEagle").mClip;
                                          while(true)
                                          {
                                             this.§+F§ = § #^§(§=#=§.getItemByName("Container_MEScore"));
                                             addr77:
                                             while(!_loc2_)
                                             {
                                                §§goto(addr79);
                                                §§goto(addr86);
                                             }
                                          }
                                          §§goto(addr40);
                                       }
                                       §§goto(addr42);
                                    }
                                    §§goto(addr49);
                                 }
                                 §§goto(addr56);
                              }
                              addr140:
                           }
                           return;
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr103);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr140);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.disable(false);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.enable(param1);
            while(true)
            {
               §=#=§.setVisibility(true);
               while(true)
               {
                  §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  loop2:
                  while(true)
                  {
                     this.§0"-§.§3"Q§(-1);
                     addr106:
                     while(true)
                     {
                        this.§0r§(0);
                        continue loop2;
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               addr53:
               §§goto(addr19);
            }
         }
         §§goto(addr53);
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.disable(param1);
            while(true)
            {
               §=#=§.setVisibility(false);
               addr125:
               while(true)
               {
                  §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
               }
            }
            addr129:
         }
         while(true)
         {
            this.§9"n§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§5#H§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               loop4:
               while(_loc2_)
               {
                  this.§`!U§();
                  loop5:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§%8§);
                           if(_loc2_)
                           {
                              if(§§pop() != null)
                              {
                                 while(!_loc3_)
                                 {
                                    §§push(this.§%8§);
                                    while(true)
                                    {
                                       §§pop().stop();
                                       continue loop5;
                                    }
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr41);
                                 }
                                 §§goto(addr129);
                              }
                              return;
                           }
                           §§goto(addr53);
                        }
                        break;
                     }
                     continue loop4;
                  }
                  §§goto(addr125);
               }
            }
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            §§goto(addr78);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0r§(param1);
            loop0:
            while(true)
            {
               §§push(this.§@"u§);
               loop1:
               while(true)
               {
                  §§push(§@"6§);
                  addr203:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
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
                                 while(_loc3_)
                                 {
                                    §§push(§,!q§.§9!,§);
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       addr191:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                       addr167:
                                       §§push(§,!q§.§9!,§);
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       addr39:
                                       §§push(§§pop().slingshot.mSlingShotState == §;x§.§?R§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   loop22:
                                                   while(§§pop())
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr71:
                                                         if(_loc3_ || param1)
                                                         {
                                                            this.§ !E§();
                                                            addr80:
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               addr194:
                                                               while(true)
                                                               {
                                                                  this.§=!f§();
                                                                  loop12:
                                                                  while(_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@"u§);
                                                                        addr171:
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§@"6§);
                                                                           addr172:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr173:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    for(; _loc3_; while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       §§goto(addr157);
                                                                                       addr140:
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop3;
                                                                                    })
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop14;
                                                                                          addr157:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§pop();
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr167);
                                                                                                   §§goto(addr71);
                                                                                                }
                                                                                                continue loop12;
                                                                                                addr165:
                                                                                             }
                                                                                             continue loop18;
                                                                                             §§goto(addr39);
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§@"u§);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            addr185:
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr191);
                                             }
                                             §§goto(addr173);
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr140);
                                             }
                                             addr193:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr168);
                                             }
                                          }
                                          addr138:
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr193);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      protected function §2"b§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0#,§.scaleX = this.§0#,§.scaleY = 1;
         }
      }
      
      public function §`!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§9"3§);
            loop0:
            while(true)
            {
               §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr75:
               while(true)
               {
                  §§pop().setComponentVisualState(§§pop());
                  continue loop0;
               }
            }
            addr73:
         }
         while(true)
         {
            §§push(this.§9"3§);
            if(_loc1_ || _loc2_)
            {
               §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc2_)
               {
                  §§pop().setComponentState(§§pop());
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr75);
         }
      }
      
      protected function §=!f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@"u§ = §5"T§;
         }
      }
      
      protected function § !E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§9"3§);
            loop0:
            while(true)
            {
               §§push(§1"z§.COMPONENT_STATE_DISABLED);
               addr156:
               while(true)
               {
                  §§pop().setComponentState(§§pop());
                  continue loop0;
               }
            }
            addr154:
         }
         loop2:
         while(true)
         {
            §§push(this.§9"3§);
            if(_loc1_)
            {
               §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc1_ || _loc2_)
               {
                  §§pop().setComponentVisualState(§§pop());
                  loop3:
                  while(true)
                  {
                     §§push(this.§%8§);
                     while(true)
                     {
                        if(§§pop() != null)
                        {
                           while(true)
                           {
                              this.§@"u§ = §1!>§;
                              while(true)
                              {
                                 §§push(this.§%8§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§3!`§;
                                    addr86:
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr48:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           addr94:
                        }
                        while(true)
                        {
                           this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
                              "scaleX":1,
                              "scaleY":1
                           },null,0.5);
                           continue loop3;
                        }
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §§pop().play();
                        if(_loc1_)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr86);
                     }
                  }
               }
            }
            else
            {
               §§goto(addr154);
            }
            §§goto(addr156);
         }
      }
      
      protected function §3!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            do
            {
               this.§%8§.play();
               do
               {
                  this.§@"u§ = §1!>§;
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
         }
      }
      
      protected function §0r§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(this.§ F§.getScore(10));
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§0"-§.getValue());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < _loc2_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(int(Math.min(_loc2_,this.§0"-§.getValue() + param1 * §#!X§)));
                     addr180:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr181:
                        addr137:
                        loop4:
                        while(true)
                        {
                           this.§0"-§.§3"Q§(_loc3_);
                           addr153:
                           while(true)
                           {
                              §§push(this.§-?§);
                              if(_loc5_ || _loc2_)
                              {
                                 break loop4;
                              }
                              addr142:
                              while(true)
                              {
                                 §§pop().setText(_loc3_.toString());
                                 addr145:
                                 addr147:
                                 while(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §§push(this.§-?§);
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                              §§goto(addr142);
                              §§goto(addr137);
                           }
                           addr138:
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!this.isEagleUsed())
                  {
                     this.§0#,§.visible = false;
                     if(_loc5_ || param1)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr138);
                        }
                        else
                        {
                           addr115:
                           this.§0#,§.visible = true;
                           loop8:
                           while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
                                 if(!_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 if(!_loc6_)
                                 {
                                    _loc4_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       this.§0#,§.updateScore(_loc4_);
                                       addr74:
                                       while(true)
                                       {
                                          if(_loc6_ && this)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc6_)
                                          {
                                             §§goto(addr41);
                                          }
                                          §§goto(addr153);
                                          continue loop9;
                                       }
                                    }
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr115);
               }
               addr41:
               return;
            }
            §§goto(addr180);
         }
         §§goto(addr147);
      }
      
      protected function §0!$§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            this.§4s§.text = _loc1_.toString() + "%";
         }
      }
      
      protected function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §,!q§.§9!,§.useMightyEagle();
            while(true)
            {
               this.§0!$§();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     this.§,-§ = true;
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(!§]"u§)
            {
               loop0:
               while(param1.§^"r§ is §^"m§)
               {
                  if(_loc3_)
                  {
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§push(param1.§@#8§);
                     loop1:
                     while(true)
                     {
                        §§push(§&#X§.LISTENER_EVENT_MOUSE_DOWN);
                        while(§§pop() != §§pop())
                        {
                           §§push(param1.§@#8§);
                           if(!_loc4_)
                           {
                              §§push(§&#X§.LISTENER_EVENT_MOUSE_UP);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §`"+§.§<"o§();
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr176:
                                          break loop0;
                                       }
                                       break;
                                    }
                                    §§goto(addr199);
                                 }
                                 break loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §`"+§.§^U§();
                     }
                  }
                  addr199:
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  addr209:
                  return;
               }
               var _loc2_:* = param1.§=!k§;
               if(_loc3_)
               {
                  if("PAUSE" === _loc2_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc3_ || this)
                        {
                        }
                     }
                     else
                     {
                        addr262:
                        §§push(2);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     if("RESTART_LEVEL" === _loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr248:
                           §§push(1);
                           if(_loc3_ || _loc2_)
                           {
                           }
                        }
                     }
                     else if("MIGHTY_EAGLE" === _loc2_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr262);
                        }
                     }
                     else if("FULLSCREEN_BUTTON" !== _loc2_)
                     {
                        addr287:
                        switch(§§pop())
                        {
                           case 0:
                              dispatchEvent(new §"!4§(§"!4§.§!#B§));
                              break;
                              addr135:
                           case 1:
                              dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
                              addr48:
                              break;
                              addr125:
                           case 2:
                              §§push(§4#;§.singleton);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().dataModel);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop().userProgress);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§pop().§=!d§(§+!b§.currentLevel));
                                       if(_loc3_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             addr87:
                                             if(!_loc4_)
                                             {
                                                addr94:
                                                if(§4#;§.singleton.dataModel.userProgress.§0#9§)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.useMightyEagle();
                                                         if(!_loc3_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr135);
                                             }
                                          }
                                          break;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr94);
                           case 3:
                              §§push(§4#;§.singleton);
                              if(!(_loc4_ && this))
                              {
                                 §§pop().§5"q§();
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr87);
                                    }
                                    §§goto(addr48);
                                 }
                                 break;
                              }
                              §§goto(addr94);
                        }
                        return;
                        §§push(4);
                     }
                     §§goto(addr287);
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr287);
               }
               §§goto(addr248);
            }
            §§goto(addr209);
         }
         §§goto(addr176);
      }
   }
}
