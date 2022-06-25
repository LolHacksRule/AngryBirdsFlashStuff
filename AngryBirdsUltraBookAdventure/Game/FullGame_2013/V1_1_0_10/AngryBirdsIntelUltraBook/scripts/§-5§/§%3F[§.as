package §-5§
{
   import §4H§.§9?§;
   import §@! §.§[! §;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §?[§ extends § !<§
   {
       
      
      private var §=1§:LevelScorePlateAsset;
      
      public function §?[§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private static function §2>§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(!_loc13_)
            {
               §§push(int(§§pop().length));
               if(!(_loc13_ && param3))
               {
                  addr67:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(!_loc13_)
               {
                  §§goto(addr67);
               }
            }
            var _loc9_:* = §§pop();
            if(!(_loc13_ && param2))
            {
               §§push(_loc8_);
               if(_loc14_ || param3)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_ && §?[§)
                        {
                        }
                        addr115:
                        if(§§pop())
                        {
                           if(!(_loc13_ && §?[§))
                           {
                              var _loc10_:* = (_loc14_ || param2 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                              addr147:
                              §§push("");
                              if(!(_loc13_ && param3))
                              {
                                 if(param3)
                                 {
                                    if(_loc14_)
                                    {
                                       addr207:
                                       _loc11_ = 0;
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                          if(!(_loc13_ && param1))
                                          {
                                             §§push(param2);
                                             if(_loc14_ || param2)
                                             {
                                                if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      addr241:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc10_);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() + "0");
                                                      if(_loc14_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(_loc14_ || param2)
                                                         {
                                                            _loc11_++;
                                                            if(_loc14_ || §?[§)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(".");
                                                               if(!_loc13_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr259:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(_loc14_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr282:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    break loop1;
                                                                                 }
                                                                                 addr282:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr323:
                                                                           §§push(_loc7_);
                                                                           addr279:
                                                                        }
                                                                        return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                     }
                                                                  }
                                                                  addr255:
                                                               }
                                                               addr258:
                                                               while(true)
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                            }
                                                            addr252:
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr282);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc13_ && param3))
                                                {
                                                   if(_loc7_.substr(0,1) == "-")
                                                   {
                                                      addr309:
                                                      if(_loc9_ < (!(_loc13_ && §?[§) ? §§pop() - 1 : §§pop()))
                                                      {
                                                         if(param4)
                                                         {
                                                            if(_loc14_ || §?[§)
                                                            {
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         else
                                                         {
                                                            §§push(",");
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc9_);
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr309);
                                             }
                                             addr284:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr284);
                                          §§goto(addr282);
                                       }
                                    }
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr207);
                           }
                           else
                           {
                              addr135:
                              §§push(",");
                              if(_loc14_ || param2)
                              {
                                 §§goto(addr143);
                              }
                              else
                              {
                                 addr146:
                                 §§push(§§pop());
                              }
                              §§goto(addr147);
                           }
                        }
                        else
                        {
                           addr134:
                           if(param4)
                           {
                              §§goto(addr135);
                           }
                           else
                           {
                              §§push(".");
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr115);
                  }
                  §§pop();
                  if(_loc14_ || param2)
                  {
                     addr104:
                     §§push(param3);
                     if(_loc14_ || param2)
                     {
                        §§push(!§§pop());
                        if(_loc14_)
                        {
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr135);
               }
               §§goto(addr115);
            }
            §§goto(addr104);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr62);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§=1§ = new LevelScorePlateAsset());
            if(!_loc3_)
            {
               addr40:
               this.§=1§.§#§.stop();
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§<l§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§=1§);
                  loop2:
                  while(true)
                  {
                     if(!§[!U§)
                     {
                        §§push(1);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           addr382:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              loop5:
                              while(true)
                              {
                                 §&!^§();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§=1§);
                                    while(true)
                                    {
                                       §§pop().§>!x§.text = this.§<l§.userName || "";
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§<l§);
                                          loop9:
                                          while(!_loc1_)
                                          {
                                             §§push(§§pop().§1<§ <= 3);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§<l§);
                                                            loop14:
                                                            for(; _loc2_; while(true)
                                                            {
                                                               §§push(this.§<l§);
                                                               if(_loc1_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr261);
                                                            })
                                                            {
                                                               §§push(§§pop().§;!u§);
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr309:
                                                                  addr261:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     addr310:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(_loc1_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§push(§§pop().§1t§);
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr272:
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc1_ && _loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        §§goto(addr310);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this.§=1§);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§#§.visible = false;
                                                                              loop22:
                                                                              while(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§=1§);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§=!9§.visible = true;
                                                                                    addr212:
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       §§push(this.§=1§);
                                                                                       while(!_loc1_)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             while(!(_loc1_ && this))
                                                                                             {
                                                                                                §§pop().§#§.visible = true;
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             continue loop2;
                                                                                             addr291:
                                                                                          }
                                                                                          §§pop().§=!9§.text = this.§<l§.§1<§.toString() || "";
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§=1§);
                                                                                                   addr135:
                                                                                                   while(!(_loc1_ && this))
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         §§pop().§<!K§.text = §2>§(this.§<l§.§;!u§) || "0";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!(_loc1_ && this))
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     §§push(this.§=1§);
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                         addr156:
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr245:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§=!9§.visible = false;
                                                                                                      addr248:
                                                                                                      while(_loc2_)
                                                                                                      {
                                                                                                         §§push(this.§=1§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§#§.gotoAndStop(this.§<l§.§1<§);
                                                                                                            §§goto(addr250);
                                                                                                         }
                                                                                                         addr250:
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   addr241:
                                                                                                }
                                                                                             }
                                                                                             addr239:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §§goto(addr241);
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr245);
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr287);
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§pop().mcStar2.visible = this.§<l§.stars >= 2;
                                       §§goto(addr88);
                                    }
                                 }
                              }
                           }
                        }
                        addr381:
                     }
                     while(true)
                     {
                        §§push(2);
                        if(!(_loc1_ && this))
                        {
                           §§push(§§pop());
                        }
                        else
                        {
                           §§goto(addr381);
                        }
                        §§goto(addr382);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §2!$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new §[! §(§[! §.§6y§,this.§<l§,true));
            do
            {
               this.§<l§.§7!J§ = false;
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §<l§() : §9?§
      {
         return data as §9?§;
      }
   }
}
