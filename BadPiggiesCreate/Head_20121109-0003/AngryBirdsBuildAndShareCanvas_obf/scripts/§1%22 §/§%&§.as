package §1" §
{
   import §"_§.§!"8§;
   import §"_§.§^!J§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §>!d§.§,$§;
   import §?!'§.§]!]§;
   import §^!k§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §%&§ extends EventDispatcher implements §4!x§, IEventDispatcher
   {
       
      
      private var §9J§:§#!j§;
      
      private var §4"0§:§=!r§;
      
      private var §^!<§:MovieClip;
      
      private var §!"'§:MovieClip;
      
      private var §-"!§:MovieClip;
      
      private var §,!'§:§6W§;
      
      private var §`R§:§6W§;
      
      private var §+!i§:§6W§;
      
      private var §1"&§:§6W§;
      
      private var §-!C§:§6W§;
      
      private var §15§:Boolean = false;
      
      private var § 2§:Number = 1;
      
      private var §<y§:int = 0;
      
      private var §1]§:§9"8§;
      
      private var §,!Y§:§9"8§;
      
      private var §2!a§:§9"8§;
      
      public function §%&§(param1:§#!j§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§9J§ = param1;
               loop1:
               while(true)
               {
                  this.addEventListener(§^!J§.§[!H§,this.§#" §);
                  while(true)
                  {
                     §§push(this.§9J§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§0"!§);
                        addr341:
                        while(true)
                        {
                           §§push(§!"8§.CHANGE);
                           addr343:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§;"1§);
                              continue loop3;
                           }
                        }
                     }
                     addr329:
                     while(!(_loc2_ && this))
                     {
                        this.§`R§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_ProfileBar_Right") as §6W§;
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§,!'§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_ProfileBar_Left") as §6W§;
            §§goto(addr284);
         }
      }
      
      protected function §1U§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.type;
         if(!_loc3_)
         {
            §§push(§!"8§.§#!e§);
            if(!(_loc3_ && this))
            {
               if(§§pop() === _loc2_)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(0);
                     if(_loc3_ && param1)
                     {
                        addr136:
                     }
                  }
                  else
                  {
                     addr115:
                     §§push(1);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§!"8§.§5!c§);
                  if(_loc4_ || _loc3_)
                  {
                     addr106:
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_ || param1)
                        {
                           §§goto(addr115);
                        }
                     }
                     else
                     {
                        addr121:
                        if(§!"8§.§@m§ !== _loc2_)
                        {
                           addr141:
                           switch(§§pop())
                           {
                              case 0:
                                 §]!]§.§!!<§();
                                 addr33:
                                 break;
                                 addr50:
                              case 1:
                                 §]!]§.§-!T§();
                                 addr38:
                                 if(_loc4_ || _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr50);
                                 break;
                              case 2:
                                 §,$§.§[E§.§9!j§(§,$§.§53§,1);
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr38);
                                    }
                                    §§goto(addr33);
                                 }
                           }
                           return;
                           §§push(3);
                        }
                     }
                     §§goto(addr141);
                     §§goto(addr141);
                  }
                  §§goto(addr121);
               }
               §§goto(addr141);
            }
            §§goto(addr106);
         }
         §§goto(addr115);
      }
      
      protected function §6v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §]!]§.§;"%§("We have run out of blocks! Buy me some new ones!");
         }
      }
      
      private function §;"1§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§=!r§ = null;
         if(!(_loc7_ && this))
         {
            §§push(this.§9J§);
            while(true)
            {
               §§push(§§pop().§0"!§);
               while(true)
               {
                  §§push(§§pop().§=!I§());
                  loop2:
                  while(§§pop() != (AngryBirdsFP11.§>!7§ as §+`§).blocks)
                  {
                     loop3:
                     while(true)
                     {
                        §§push((AngryBirdsFP11.§>!7§ as §+`§).blocks);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§9J§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().§0"!§);
                                    addr248:
                                    while(true)
                                    {
                                       §§push(§§pop().§=!I§());
                                       addr249:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop11:
                                             while(_loc8_ || _loc2_)
                                             {
                                                §§push(0);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop14:
                                                      while(!_loc7_)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!(_loc8_ || this))
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc8_ || _loc3_))
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  this.§ 2§ = _loc3_ / this.§<y§;
                                                                  addr213:
                                                                  while(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9J§);
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                               addr49:
                                                               if(!(_loc8_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr115:
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           addr128:
                                                                           §§push(Number(this.§!"'§.scaleX));
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 addr135:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!(_loc8_ || _loc3_))
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§push(this.§ 2§);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       if(!(_loc7_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr49);
                                                                                       }
                                                                                       §§goto(addr128);
                                                                                    }
                                                                                    §§goto(addr213);
                                                                                 }
                                                                                 addr198:
                                                                                 if(_loc7_ && _loc2_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(this.§ 2§);
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    addr168:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    addr277:
                                                                                    _loc6_ = this.§3!C§(_loc4_,_loc5_,§7I§.§,S§);
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       (AngryBirdsFP11.§>!7§ as §+`§).blocks = this.§9J§.§0"!§.§=!I§();
                                                                                       addr305:
                                                                                       _loc6_.play();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          this.§4a§();
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             addr303:
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       addr330:
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                    addr176:
                                                                                    addr68:
                                                                                 }
                                                                                 §§goto(addr168);
                                                                              }
                                                                              addr197:
                                                                              _loc4_ = §§pop();
                                                                              §§goto(addr198);
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        addr193:
                                                                        §§goto(addr197);
                                                                        §§push(Number(this.§!"'§.scaleX));
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr68);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr215);
      }
      
      private function §%"6§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(param1);
                           if(_loc4_ || param1)
                           {
                              addr62:
                              if(§§pop() > 1)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr72:
                                    param1 = 1;
                                 }
                              }
                           }
                           §§goto(addr72);
                        }
                        var _loc2_:§=!r§ = this.§3!C§(0,param1,§7I§.§,S§);
                        if(_loc4_)
                        {
                           _loc2_.play();
                           do
                           {
                              §§push(this.§+!i§.getItemByName("Container_Blocks_Bar"));
                              if(!_loc3_)
                              {
                                 §§push((§§pop() as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text"));
                              }
                              (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
                           }
                           while(_loc3_);
                           
                        }
                        return;
                     }
                  }
               }
               §§goto(addr62);
            }
         }
         §§goto(addr72);
      }
      
      private function §#" §(param1:§^!J§ = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§<y§ = (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
         }
         loop0:
         while(true)
         {
            this.§4a§();
            loop1:
            while(true)
            {
               this.§%k§();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     this.§6N§();
                     while(!_loc7_)
                     {
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        this.§6!R§();
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           break loop3;
                        }
                        if(false)
                        {
                           continue loop3;
                        }
                        var _loc2_:§=!r§ = this.§[!W§();
                        §§push((AngryBirdsFP11.§>!7§ as §+`§).blocks / (AngryBirdsFP11.§>!7§ as §+`§).§#!r§);
                        if(_loc6_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || param1)
                           {
                              if(!§§pop())
                              {
                                 addr107:
                                 if(_loc6_)
                                 {
                                    §§push(Number(1));
                                 }
                                 var _loc4_:§=!r§ = this.§3!C§(0,_loc3_);
                                 var _loc5_:§=!r§ = this.§<!<§();
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    this.§4"0§ = §7I§.§[E§.§]g§(_loc2_,_loc4_,_loc5_);
                                 }
                                 addr141:
                                 this.§4"0§.onComplete = this.§@!R§;
                                 addr144:
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(this.§4"0§);
                                    if(_loc6_)
                                    {
                                       §§pop().play();
                                       if(_loc7_)
                                       {
                                          §§goto(addr144);
                                       }
                                       return;
                                    }
                                    §§goto(addr141);
                                 }
                                 addr170:
                                 §§goto(addr170);
                              }
                              §§goto(addr107);
                           }
                           _loc3_ = §§pop();
                        }
                        §§goto(addr107);
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §<!<§() : §=!r§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = 0;
         §§push((AngryBirdsFP11.§>!7§ as §+`§).bolts / (AngryBirdsFP11.§>!7§ as §+`§).boltsMax);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            this.§-"!§.scaleX = _loc1_;
            do
            {
               §§push(this.§4"0§);
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop() == null)
                  {
                     §§goto(addr58);
                  }
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(this.§4"0§);
               }
               §§pop().stop();
            }
            while(_loc3_ && this);
            
         }
         addr58:
         return §7I§.§[E§.§ ";§(this.§-"!§,{"scaleX":_loc2_},{"scaleX":_loc1_},2,§7I§.§;!C§);
      }
      
      private function §3!C§(param1:Number, param2:Number, param3:Function = null) : §=!r§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(param3);
            if(!(_loc4_ && this))
            {
               if(§§pop() == null)
               {
                  if(_loc5_ || param1)
                  {
                     addr43:
                     param3 = §7I§.§,S§;
                     addr45:
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(0);
                        if(_loc5_ || this)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_ || this)
                                    {
                                       param1 = §§pop();
                                       if(_loc5_ || param2)
                                       {
                                          addr216:
                                          §§push(param1);
                                          loop17:
                                          while(true)
                                          {
                                             §§push(1);
                                             addr218:
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr222:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr223:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr224:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr221:
                                                   }
                                                   §§goto(addr224);
                                                }
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      addr175:
                                                      §§push(0);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§push(0);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(!(_loc5_ || this))
                                                                        {
                                                                           §§goto(addr223);
                                                                        }
                                                                        param2 = §§pop();
                                                                        addr195:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  addr192:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     addr205:
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               addr203:
                                                            }
                                                            break;
                                                         }
                                                         continue loop7;
                                                         §§goto(addr175);
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc5_ || param3))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(1);
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     addr158:
                                                                     if(!(_loc4_ && param3))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop5;
                                                                              }
                                                                              addr168:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr192);
                                                                           }
                                                                           §§goto(addr158);
                                                                        }
                                                                        addr165:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr170:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§!"'§.scaleX = param1;
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        return §7I§.§[E§.§ ";§(this.§!"'§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
                                                                     }
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr176);
                                                               }
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         break;
                                                      }
                                                      addr176:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr165);
               }
               §§goto(addr45);
            }
            §§goto(addr43);
         }
         §§goto(addr221);
      }
      
      private function §[!W§() : §=!r§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.§>!7§ as §+`§).oldXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.§>!7§ as §+`§).newXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     addr118:
                     _loc2_ = Number(0);
                  }
                  while(true)
                  {
                     §§goto(addr82);
                  }
               }
               addr82:
               while(true)
               {
                  this.§^!<§.scaleX = _loc1_;
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  continue loop0;
               }
               return §7I§.§[E§.§ ";§(this.§^!<§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§7I§.§;!C§);
            }
         }
         §§goto(addr118);
      }
      
      private function §4a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!i§.getItemByName("Container_Blocks_Bar"));
            if(!_loc1_)
            {
               §§push((§§pop() as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text"));
            }
            (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
         }
      }
      
      private function §%k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§`R§.getItemByName("Container_XP_Small"));
            if(_loc2_)
            {
               §§push((§§pop() as §6W§).getItemByName("Container_Profile_XP"));
               if(_loc2_)
               {
                  §§push((§§pop() as §6W§).getItemByName("TextField_Progress_Level"));
               }
            }
            (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).§]!T§().toString());
         }
      }
      
      private function §6N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§1"&§.getItemByName("Container_Bolts_Bar"));
            if(!_loc2_)
            {
               §§push((§§pop() as §6W§).getItemByName("TextField_Bolts_Small_Text"));
            }
            (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).bolts.toString());
         }
      }
      
      private function §6!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§-!C§.getItemByName("Container_Coins_Bar"));
            if(!(_loc2_ && this))
            {
               §§push((§§pop() as §6W§).getItemByName("TextField_Coins_Small_Text"));
            }
            (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).coins.toString());
         }
      }
      
      private function §@!R§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§6W§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Blocks_Small") as §6W§;
         if(!_loc5_)
         {
            _loc1_.getItemByName("Container_Blocks_Bar");
            if(_loc6_ || this)
            {
               addr39:
               §§push(_loc1_.getItemByName("Container_Blocks_Bar"));
               if(_loc6_)
               {
                  §§push((§§pop() as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text"));
               }
               (§§pop() as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
            }
            var _loc2_:§6W§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Bolts_Small") as §6W§;
            if(_loc6_)
            {
               _loc2_.getItemByName("Container_Bolts_Bar");
            }
            §§push(_loc1_.getItemByName("Container_Blocks_Bar"));
            if(_loc6_ || _loc3_)
            {
               §§push((§§pop() as §6W§).getItemByName("MovieClip_Blocks_Progress_Small"));
            }
            var _loc3_:MovieClip = (§§pop() as §@u§).mClip;
            §§push(_loc2_.getItemByName("Container_Bolts_Bar"));
            if(_loc6_ || _loc1_)
            {
               §§push((§§pop() as §6W§).getItemByName("MovieClip_Bolts_Progress_Small"));
            }
            var _loc4_:MovieClip = (§§pop() as §@u§).mClip;
            return;
         }
         §§goto(addr39);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§#" §();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            if(!this.§15§)
            {
               loop0:
               while(true)
               {
                  this.§15§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.§>!7§);
                     while(true)
                     {
                        §§push((§§pop() as §+`§).newXp);
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§>!7§);
                           while(true)
                           {
                              §§push((§§pop() as §+`§).maxXp);
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          this.§^!<§.scaleX = _loc2_;
                                          loop9:
                                          while(!_loc6_)
                                          {
                                             §§push(AngryBirdsFP11.§>!7§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push((§§pop() as §+`§).blocks);
                                                addr129:
                                                while(_loc5_ || param1)
                                                {
                                                   §§push(AngryBirdsFP11.§>!7§);
                                                   while(true)
                                                   {
                                                      §§push((§§pop() as §+`§).§#!r§);
                                                      addr141:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr152:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr153:
                                                            addr43:
                                                            while(true)
                                                            {
                                                               this.§!"'§.scaleX = _loc3_;
                                                               addr120:
                                                               while(_loc5_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue loop0;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            addr45:
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            this.§15§ = false;
         }
         §§push((AngryBirdsFP11.§>!7§ as §+`§).newXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp);
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc5_)
         {
            this.§^!<§.scaleX = 0;
            if(!_loc4_)
            {
               this.§^!<§.scaleX = _loc1_;
            }
         }
         §§push((AngryBirdsFP11.§>!7§ as §+`§).blocks / (AngryBirdsFP11.§>!7§ as §+`§).§#!r§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc1_)
         {
            this.§!"'§.scaleX = _loc2_;
         }
         §§push((AngryBirdsFP11.§>!7§ as §+`§).bolts / (AngryBirdsFP11.§>!7§ as §+`§).boltsMax);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§-"!§.scaleX = _loc3_;
            do
            {
               this.§%"6§(_loc2_);
            }
            while(!(_loc5_ || _loc2_));
            
         }
      }
      
      public function §'-§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§>!7§ as §+`§).§^1§;
         if(_loc7_)
         {
            if(_loc2_ == null)
            {
               if(_loc7_)
               {
                  return true;
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = _loc2_;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(Inventory.§^!D§(param1,_loc3_));
                  if(!_loc7_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§push(true);
                        break;
                     }
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
   }
}
