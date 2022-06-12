package §1r§
{
   import §!K§.Item;
   import §#!H§.§=!F§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §4!e§.§5!a§;
   import §@">§.§%!0§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class §,!L§ extends §7!A§
   {
       
      
      public function §,!L§(param1:§1-§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      public static function § X§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() / 10);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         §§push("$");
         if(_loc3_)
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || §,!L§)
         {
            if(param1 != int(param1))
            {
               if(!_loc4_)
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr80);
         }
         addr69:
         §§push(_loc2_);
         if(!(_loc4_ && param1))
         {
            _loc2_ = §§pop() + "0";
            addr80:
            return _loc2_;
         }
      }
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activateView();
         }
      }
      
      public function §1[§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            §;S§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§5!a§ = getItemByName("Repeater_Items") as §5!a§;
         var _loc2_:§5!a§ = getItemByName("Repeater_Tabs") as §5!a§;
         if(_loc5_ || _loc2_)
         {
            if(§=!F§.§;"§.items.§-S§.length > 0)
            {
               if(!_loc6_)
               {
                  _loc2_.§@"-§("Repeater_Tabs_Tab_0").§;!v§(§=!F§.§;"§.items.§-S§[0].name as String);
                  if(!_loc6_)
                  {
                     addr80:
                     §;S§("Repeater_Tabs","Repeater_Tabs_Tab_0");
                  }
               }
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= §=!F§.§;"§.items.§-S§.length)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(_loc1_);
                           §§push("Repeater_Items_Tab_");
                           if(!_loc6_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           §§pop().§@"-§(§§pop()).§;!v§(_loc4_);
                           addr139:
                        }
                        _loc3_++;
                     }
                     continue;
                  }
                  _loc4_ = §=!F§.§;"§.items.§-S§[_loc3_].name;
                  §§goto(addr139);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      public function §;k§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               addr54:
               §§push(-1);
               if(!_loc4_)
               {
                  return §§pop();
               }
               else
               {
                  addr78:
               }
            }
            if(§§pop() >= §=!F§.§;"§.items.§-S§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr54);
               }
            }
            else if(param1.toUpperCase() == §=!F§.§;"§.items.§-S§[_loc2_].name.toUpperCase())
            {
               break;
            }
            _loc2_++;
            continue;
            return §§pop();
         }
         while(!_loc4_);
         
         §§goto(addr78);
         §§push(_loc2_);
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(_loc2_ || this)
                  {
                     if(§§pop().toUpperCase() == "Repeater_Items".toUpperCase())
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§push(this.§3!_§());
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                              addr91:
                              return §§pop();
                           }
                           break loop0;
                        }
                        addr92:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return null;
            }
            §§goto(addr91);
            §§push(this.§=V§());
         }
         §§goto(addr92);
      }
      
      public function §=V§() : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc1_:Array = new Array();
         if(_loc7_)
         {
            _loc1_[0] = new Array();
         }
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < §=!F§.§;"§.items.§-S§.length)
         {
            _loc6_ = §=!F§.§;"§.items.§-S§[_loc5_].name;
            if(!(_loc7_ || _loc3_))
            {
               break;
            }
            §§push(§8B§);
            §§push("Icon_");
            if(!_loc8_)
            {
               §§push(§§pop() + _loc6_);
            }
            _loc3_ = new (_loc4_ = §§pop().§6"C§(§§pop()))();
            if(!_loc8_)
            {
               _loc3_.x = 29 - _loc3_.width * 0.5;
            }
            loop1:
            while(true)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               do
               {
                  while(true)
                  {
                     if(_loc5_ == 0)
                     {
                        if(_loc7_)
                        {
                           _loc3_.gotoAndStop("over");
                           break;
                        }
                        break;
                     }
                     _loc3_.gotoAndStop("out");
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               while(!_loc7_);
               
               addr133:
               _loc2_ = <Button/>;
               if(!_loc8_)
               {
                  _loc2_.@name = _loc6_;
                  loop4:
                  while(true)
                  {
                     _loc2_.@MouseOver = "Over" + _loc6_;
                     loop5:
                     while(true)
                     {
                        _loc2_.@MouseOut = "Out" + _loc6_;
                        while(_loc7_)
                        {
                           _loc2_.@MouseUp = _loc6_;
                           loop7:
                           while(_loc7_ || this)
                           {
                              _loc2_.@scaleOnMouseOver = "True";
                              loop8:
                              while(_loc7_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    (_loc1_[0] as Array).push(new Array(_loc2_,_loc3_));
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             _loc5_++;
                                             if(_loc7_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    addr150:
                                    while(false)
                                    {
                                       continue loop9;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                  }
               }
               §§goto(addr150);
            }
         }
         return _loc1_;
      }
      
      public function §3!_§() : Array
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc14_:String = null;
         var _loc15_:Array = null;
         var _loc16_:* = NaN;
         var _loc17_:Item = null;
         var _loc18_:* = false;
         var _loc19_:* = 0;
         var _loc20_:int = 0;
         var _loc21_:* = false;
         var _loc22_:MovieClip = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §8B§.§6"C§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §8B§.§6"C§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §8B§.§6"C§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §8B§.§6"C§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §8B§.§6"C§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         var _loc12_:Number = 0;
         loop0:
         while(_loc12_ < §=!F§.§;"§.items.§-S§.length)
         {
            §§push(§=!F§.§;"§);
            if(!(_loc24_ && this))
            {
               §§push(§§pop().items);
               if(_loc25_)
               {
                  _loc14_ = §§pop().§-S§[_loc12_].name as String;
                  if(_loc24_)
                  {
                     break;
                  }
                  addr115:
                  §§push(§=!F§.§;"§.items);
               }
               §§push(§§pop().§8!=§(_loc14_));
               if(_loc24_)
               {
                  §§goto(addr894);
               }
               _loc15_ = §§pop();
               if(!_loc24_)
               {
                  _loc4_[_loc12_] = [];
                  if(_loc24_)
                  {
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     _loc5_[_loc12_] = [];
                     if(_loc24_)
                     {
                        break;
                     }
                     addr130:
                     _loc16_ = §§pop();
                     if(!(_loc24_ && _loc1_))
                     {
                        if(false)
                        {
                           continue;
                        }
                        loop10:
                        while(true)
                        {
                           §§push(_loc16_);
                           if(_loc25_)
                           {
                              if(§§pop() >= _loc15_.length)
                              {
                                 if(_loc24_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc14_);
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    §§push("CategoryBirds");
                                    if(_loc25_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc24_ && _loc2_))
                                       {
                                          §§push(!§§pop());
                                          if(!_loc24_)
                                          {
                                             addr730:
                                             if(§§pop())
                                             {
                                                if(!(_loc24_ && _loc3_))
                                                {
                                                   addr739:
                                                   §§pop();
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      break loop1;
                                                   }
                                                   addr761:
                                                   _loc3_ = §8B§.§6"C§("Inventory_Item_None");
                                                   _loc2_ = new _loc3_();
                                                   if(_loc25_)
                                                   {
                                                      _loc2_.x = -_loc2_.width * 0.5 + 2;
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr780:
                                                         while(true)
                                                         {
                                                            _loc2_.y = -_loc2_.height + 7;
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                   while(false)
                                                   {
                                                      §§goto(addr780);
                                                   }
                                                   _loc22_ = new _loc6_();
                                                   _loc1_ = <Button/>;
                                                   if(_loc25_ || _loc1_)
                                                   {
                                                      _loc1_.@name = _loc14_;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      addr842:
                                                      addr870:
                                                      while(true)
                                                      {
                                                         _loc1_.@MouseUp = "REMOVE_" + _loc14_;
                                                         continue loop6;
                                                      }
                                                      addr881:
                                                      §§push(_loc12_);
                                                      if(_loc25_ || _loc3_)
                                                      {
                                                         break loop10;
                                                      }
                                                      _loc12_ = §§pop();
                                                      continue loop0;
                                                   }
                                                }
                                                addr757:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc25_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr761);
                                             }
                                             §§goto(addr870);
                                          }
                                          §§goto(addr739);
                                       }
                                       §§goto(addr730);
                                    }
                                    addr749:
                                    §§push(§§pop() == §§pop());
                                    if(_loc25_ || _loc1_)
                                    {
                                       §§goto(addr757);
                                    }
                                    §§goto(addr730);
                                 }
                                 §§goto(addr749);
                                 §§push("CategoryBackgrounds");
                              }
                              else
                              {
                                 _loc17_ = _loc15_[_loc16_];
                                 if(!(_loc24_ && this))
                                 {
                                    if(§%!0§.§5!3§(_loc17_.§;!Y§))
                                    {
                                       if(!(_loc25_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       addr181:
                                       _loc2_ = _loc17_.§@!j§();
                                       if(!_loc24_)
                                       {
                                          _loc2_.mouseChildren = _loc2_.mouseEnabled = false;
                                          if(!(_loc24_ && _loc1_))
                                          {
                                             _loc2_.x = -_loc2_.width * 0.5;
                                             loop11:
                                             while(true)
                                             {
                                                addr211:
                                                while(true)
                                                {
                                                   _loc2_.y = -_loc2_.height - 3;
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          while(false)
                                          {
                                             §§goto(addr211);
                                          }
                                          _loc1_ = <Button/>;
                                          if(!_loc24_)
                                          {
                                             _loc1_.@name = _loc17_.§;!Y§;
                                             if(_loc25_ || _loc2_)
                                             {
                                                _loc1_.@MouseUp = _loc17_.§;!Y§;
                                                if(_loc25_ || _loc1_)
                                                {
                                                   §§push(§%!0§.§^i§(_loc17_.§;!Y§));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc18_ = §§pop();
                                                         if(_loc25_)
                                                         {
                                                            §§push(§%!0§.§1!D§(_loc17_.§;!Y§));
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  _loc19_ = §§pop();
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§%!0§.§^"5§(_loc17_.§;!Y§));
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        addr357:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        addr303:
                                                                        if(!(_loc25_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc25_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop25:
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!(_loc24_ && _loc3_))
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc20_);
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc25_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                break loop25;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(_loc25_ || _loc1_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc25_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc25_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc24_ && _loc1_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            if(false)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!_loc25_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc25_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr303);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                                  §§goto(addr474);
                                                                                                               }
                                                                                                               addr292:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc20_);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr459:
                                                                                                            if(§§pop() > 0)
                                                                                                            {
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  §§goto(addr462);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc22_ = new _loc9_();
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  _loc1_.@MouseUp = null;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc22_.itemPrice.text = _loc20_;
                                                                                                                        do
                                                                                                                        {
                                                                                                                           _loc1_.@childIndex = 1;
                                                                                                                        }
                                                                                                                        while(_loc24_);
                                                                                                                        
                                                                                                                        if(!_loc25_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(false)
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        §§goto(addr475);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr534);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr462);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               _loc21_ = §§pop();
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  §§goto(addr292);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         addr345:
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§goto(addr474);
                                                                                                }
                                                                                                break loop25;
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                          §§goto(addr459);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr474);
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                    addr324:
                                                                                 }
                                                                                 §§goto(addr470);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc25_ || this)
                                                                                 {
                                                                                    addr445:
                                                                                    _loc22_ = new _loc6_();
                                                                                    if(!(_loc24_ && this))
                                                                                    {
                                                                                       §§goto(addr475);
                                                                                    }
                                                                                    §§goto(addr574);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr475);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr459);
                                                                                 §§push(_loc19_);
                                                                              }
                                                                              §§goto(addr475);
                                                                           }
                                                                        }
                                                                        §§goto(addr459);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr462);
                                                      }
                                                   }
                                                }
                                                §§goto(addr475);
                                             }
                                             §§goto(addr445);
                                          }
                                          §§goto(addr324);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr682);
                                 }
                                 §§goto(addr181);
                              }
                           }
                           break;
                        }
                        §§push(§§pop() + 1);
                        if(!_loc25_)
                        {
                        }
                        §§goto(addr881);
                     }
                     break;
                  }
                  §§goto(addr748);
                  §§push(_loc14_);
               }
               while(true)
               {
                  §§push(Number(0));
                  if(_loc25_)
                  {
                     §§goto(addr130);
                  }
                  break;
               }
               §§goto(addr881);
            }
            §§goto(addr115);
         }
         addr894:
         this.§6%§(_loc4_,_loc5_);
         return §§pop();
      }
      
      private function §6%§(param1:Array, param2:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = Math.max(param1.length,param2.length);
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc7_)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            else
            {
               _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
            }
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
