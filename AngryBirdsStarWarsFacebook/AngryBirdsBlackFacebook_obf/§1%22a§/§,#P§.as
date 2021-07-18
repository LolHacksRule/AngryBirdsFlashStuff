package §1"a§
{
   import §!"W§.§#"[§;
   import §!"W§.§[!y§;
   import §,"N§.§<!9§;
   import §,"N§.§@#B§;
   import §="2§.§?!r§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §,#P§
   {
      
      private static const §7%§:uint = 2;
      
      private static const §5=§:uint = 1;
      
      private static const §"#C§:uint = 0;
      
      private static const §1!-§:int = 10;
      
      private static const § !3§:String = "time";
      
      private static const §?Q§:String = "energy";
      
      private static const §;"s§:String = "infinity";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §,#P§))
         {
            §7%§ = 2;
            loop0:
            while(true)
            {
               §5=§ = 1;
               while(true)
               {
                  §"#C§ = 0;
                  addr88:
                  while(!(_loc1_ && §,#P§))
                  {
                     §1!-§ = 10;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private var §!n§:int;
      
      private var §?#1§:int;
      
      protected var §4#J§:§@#B§;
      
      private var §7"P§:Number;
      
      private var §@#^§:MovieClip;
      
      private var §[§:MovieClip;
      
      private var §2t§:TextField;
      
      private var §#"m§:TextField;
      
      private var §%#&§:int;
      
      public function §,#P§(param1:MovieClip, param2:§@#B§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§@#^§ = param1;
               addr86:
               addr54:
               while(true)
               {
                  this.§4#J§ = param2;
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               this.init();
               addr61:
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr86);
                     }
                     return;
                     addr32:
                  }
                  while(true)
                  {
                     this.§7"P§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§%#&§ = -1;
                        addr47:
                        while(true)
                        {
                           if(!(_loc3_ || param2))
                           {
                              continue loop3;
                           }
                           §§goto(addr54);
                           §§goto(addr61);
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr32);
                  addr81:
               }
               §§goto(addr47);
            }
         }
         §§goto(addr81);
      }
      
      private function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:FrameLabel = null;
         if(!_loc6_)
         {
            this.§[§ = this.§@#^§.hitAreaEnergy;
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  this.§2t§ = TextField(this.§@#^§.energyUpdateTime);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#"m§ = TextField(this.§@#^§.energyWrapper.energyBalance);
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr43);
         }
         var _loc1_:Array = this.§@#^§.currentLabels;
         var _loc3_:int = 0;
         for each(_loc2_ in _loc1_)
         {
            if(_loc5_)
            {
               if(_loc2_.name != § !3§)
               {
                  if(_loc2_.name == §?Q§)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        this.§?#1§ = _loc2_.frame;
                     }
                  }
                  continue;
               }
               if(!(_loc6_ && this))
               {
                  this.§!n§ = _loc2_.frame;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
            }
         }
         if(_loc5_ || this)
         {
            §§push(this.§4#J§);
            loop5:
            while(true)
            {
               §§pop().§4"Z§.addEventListener(§[!y§.§1c§,this.§=K§);
               addr178:
               while(true)
               {
                  §§push(this.§4#J§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§pop().§^"J§.addEventListener(§#"[§.§1c§,this.§8!n§);
                     while(!_loc6_)
                     {
                        this.§=K§();
                        if(!_loc6_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop5;
               }
            }
         }
         §§goto(addr178);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@#^§.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
         }
         loop0:
         while(true)
         {
            §§push(this.§4#J§);
            loop1:
            while(true)
            {
               §§pop().§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
               addr61:
               while(_loc1_)
               {
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §=K§(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               this.§@#^§.gotoAndStop(§;"s§);
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§8!n§();
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        addr85:
                        while(true)
                        {
                           this.§@#^§.gotoAndStop(§?Q§);
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §8!n§(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§4#J§);
            loop0:
            while(true)
            {
               §§push(§§pop().§^"J§);
               addr256:
               while(true)
               {
                  §§push(§§pop().energy);
                  loop2:
                  while(true)
                  {
                     §§push(this.§4#J§.§^"J§.§6"g§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              loop22:
                              while(true)
                              {
                                 §§pop();
                                 addr277:
                                 while(true)
                                 {
                                    addr234:
                                    §§push(_loc2_ >= 0);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop22;
                                 }
                              }
                              addr276:
                           }
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§@#^§.addEventListener(Event.ENTER_FRAME,this.§"#5§);
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          break;
                                       }
                                       this.§#"m§.text = this.§4#J§.§^"J§.energy.toString();
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             this.§3"@§();
                                             while(true)
                                             {
                                                this.§"#5§();
                                                addr145:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr149:
                                          }
                                          else
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   addr245:
                                                   while(true)
                                                   {
                                                      this.§@#^§.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§#"m§.text = this.§4#J§.§^"J§.energy.toString();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      MovieClip(this.§@#^§.energyFiller).scaleX = 1;
                                                      addr219:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§%#&§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(-1);
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§%#&§ = this.§4#J§.§^"J§.energy;
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §?!r§.§"#_§("energy_gain");
                                                                     continue loop13;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr136:
                                                            }
                                                         }
                                                         continue loop6;
                                                         addr33:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr234);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§%#&§);
                                                }
                                                addr114:
                                             }
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr245);
                           }
                        }
                        §§goto(addr276);
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §3"@§(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§4#J§.§^"J§.energy / this.§4#J§.§^"J§.§6"g§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(1);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 addr131:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr132:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr133);
                                    }
                                 }
                                 addr131:
                              }
                              while(true)
                              {
                                 §§goto(addr131);
                              }
                           }
                           §§goto(addr106);
                        }
                        addr133:
                        §§goto(addr54);
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && this))
                        {
                           addr104:
                           if(§§pop() >= 0)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || this)
                              {
                                 addr128:
                                 §§push(Number(§§pop()));
                                 if(_loc4_)
                                 {
                                    §§goto(addr131);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr128);
         }
         addr54:
         while(true)
         {
            MovieClip(this.§@#^§.energyFiller).scaleX = _loc2_;
            if(!_loc4_)
            {
               continue;
            }
            if(!(_loc3_ && param1))
            {
               break;
            }
            addr105:
            loop4:
            while(true)
            {
               §§push(0);
               addr106:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                     continue loop3;
                  }
                  continue loop4;
               }
            }
         }
      }
      
      private function §"#5§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§2t§.text = this.§<#3§(this.§4#J§.§^"J§.§]"w§,§5=§);
         }
         var _loc2_:int = getTimer();
         §§push(this.§7"P§);
         if(_loc5_)
         {
            §§push(§§pop() - _loc2_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            if(_loc3_ <= 0)
            {
               if(_loc5_)
               {
                  §§push(this);
                  §§push(§1!-§ * 1000);
                  if(_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
                     if(!_loc4_)
                     {
                        addr95:
                        §§push(§§pop() + _loc2_);
                     }
                     §§pop().§7"P§ = §§pop();
                     §§goto(addr98);
                  }
                  §§goto(addr95);
               }
            }
         }
         addr98:
      }
      
      private function §<#3§(param1:int, param2:uint = 2) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:uint = Math.floor(param1 / 3600);
         §§push(param1 - _loc3_ * 3600);
         if(!(_loc10_ && param1))
         {
            §§push(§§pop() / 60);
         }
         var _loc4_:uint = §§pop();
         §§push(param1 - _loc3_ * 3600);
         if(_loc9_ || _loc3_)
         {
            §§push(§§pop() - _loc4_ * 60);
         }
         var _loc5_:uint = §§pop();
         if(_loc9_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc10_ && _loc3_))
            {
               if(§§pop() == §7%§)
               {
                  addr76:
                  §§push(_loc3_ + ":");
                  if(!_loc9_)
                  {
                  }
               }
               else
               {
                  §§push("");
               }
               var _loc6_:String = §§pop();
               if(!_loc10_)
               {
                  §§push(param2);
                  if(!_loc10_)
                  {
                     §§push(§5=§);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 addr113:
                                 §§push(param2);
                                 if(_loc9_)
                                 {
                                    addr117:
                                    §§push(§§pop() == §7%§);
                                    if(!(_loc10_ && param1))
                                    {
                                       addr125:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr134:
                                             §§pop();
                                             addr146:
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr143:
                                                §§push(_loc4_ < 10);
                                             }
                                             §§push("0" + _loc4_ + ":");
                                             if(!_loc10_)
                                             {
                                                addr161:
                                                var _loc7_:String = §§pop();
                                                if(_loc9_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(§§pop() < 10);
                                                      if(!_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§pop();
                                                               if(_loc9_ || this)
                                                               {
                                                                  var _loc8_:String = (param2 >= §5=§ ? "0" : "") + _loc5_;
                                                                  return _loc6_ + _loc7_ + _loc8_;
                                                                  addr197:
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr161);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr146);
                                       }
                                       else
                                       {
                                          §§push("");
                                          if(!_loc10_)
                                          {
                                             §§goto(addr146);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr134);
                           }
                           else
                           {
                              §§push("");
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr143);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr76);
      }
   }
}
