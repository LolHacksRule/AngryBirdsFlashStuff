package §-#a§
{
   import § Z§.§]#-§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §7K§.§,T§;
   import §7K§.§`!z§;
   import §;"Y§.§&#X§;
   import §]!$§.§`#?§;
   import flash.utils.Dictionary;
   
   public class §4!Y§ extends §0`§
   {
      
      public static const §!!]§:String = "transition_full_close_partial_open";
      
      public static const §[#'§:String = "transition_partial_close_full_open";
      
      public static const §!"x§:String = "transition_partial_close_partial_open";
      
      public static const §4!i§:String = "transition_full_close_full_open";
      
      private static const §0!J§:String = "start_transition_in";
      
      private static const §!"L§:String = "start_transition_out";
      
      private static const §2"_§:String = "start_run";
      
      private static const §-"s§:String = "_close_partially";
      
      private static const § '§:String = "_close_completely";
      
      private static const §30§:String = "_open_partially";
      
      private static const §=a§:String = "_open_completely";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!]§ = "transition_full_close_partial_open";
            while(true)
            {
               §[#'§ = "transition_partial_close_full_open";
               while(!_loc2_)
               {
                  §!"x§ = "transition_partial_close_partial_open";
                  loop2:
                  for(; !(_loc2_ && §4!Y§); loop5:
                  for(; !(_loc2_ && §4!Y§); if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  },§§goto(addr38))
                  {
                     while(true)
                     {
                        §2"_§ = "start_run";
                        loop7:
                        while(true)
                        {
                           §-"s§ = "_close_partially";
                           while(_loc1_)
                           {
                              § '§ = "_close_completely";
                              while(_loc1_ || _loc2_)
                              {
                                 §30§ = "_open_partially";
                                 while(!_loc2_)
                                 {
                                    §=a§ = "_open_completely";
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr45);
                  })
                  {
                     §4!i§ = "transition_full_close_full_open";
                     while(true)
                     {
                        §0!J§ = "start_transition_in";
                        while(true)
                        {
                           §!"L§ = "start_transition_out";
                           continue loop2;
                           addr38:
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                              addr45:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      protected var §`#9§:Boolean;
      
      protected var §>!]§:§ #^§;
      
      protected var §7"C§:§ #^§;
      
      protected var §9`§:§]#-§;
      
      protected var §-!^§:§]#-§;
      
      protected var §2"O§:§""t§;
      
      protected var §7!2§:§%"[§;
      
      public function §4!Y§(param1:String, param2:Boolean, param3:§>,§ = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§&$§.§@8§.Popups.Popup_BlastShop[0],param1,param3);
         }
         do
         {
            this.§`#9§ = param2;
         }
         while(_loc4_ && param2);
         
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               addr31:
               while(true)
               {
                  this.§>!]§ = § #^§(§^c§.getItemByName("Container_LeftDoor"));
                  addr39:
                  while(!_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§7"C§ = § #^§(§^c§.getItemByName("Container_RightDoor"));
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr31);
            }
            §§goto(addr39);
         }
         var _loc1_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         if(_loc2_ || _loc3_)
         {
            this.§2"O§ = _loc1_.§1!f§;
            while(true)
            {
               this.§7!2§ = _loc1_.§&"9§;
               while(!(_loc3_ && _loc1_))
               {
                  this.§+#M§();
                  loop6:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§1#D§();
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop6;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      protected function §+#M§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`#9§)
            {
               addr21:
               §§push(2);
               if(_loc3_)
               {
               }
               addr28:
               §§push(int(§§pop()));
            }
            else
            {
               §§push(1);
               if(!_loc3_)
               {
                  §§goto(addr28);
               }
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               this.§>!]§.mClip.emblem.gotoAndStop(_loc1_);
               do
               {
                  this.§7"C§.mClip.emblem.gotoAndStop(_loc1_);
               }
               while(!(_loc2_ || this));
               
            }
            return;
         }
         §§goto(addr21);
      }
      
      protected function §1#D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^"m§ = §^"m§(this.§>!]§.getItemByName("Button_Add"));
         var _loc2_:§^"m§ = §^"m§(this.§7"C§.getItemByName("Button_Add"));
         var _loc3_:Vector.<§`!z§> = this.§6!q§(this.§2"O§);
         if(_loc4_)
         {
            §§push(Boolean(this.§2"O§.§^5§));
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop9:
                     while(true)
                     {
                        §§push(_loc3_.length >= 1);
                        if(_loc5_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              _loc1_.visible = false;
                              while(true)
                              {
                                 _loc2_.visible = false;
                                 addr103:
                                 while(true)
                                 {
                                    addr75:
                                    §§goto(addr74);
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§-!^§ = new §]#-§(_loc2_,§^"N§,this.§7!2§,_loc3_[0].id,_loc3_[0].prices[0]);
                              §§goto(addr183);
                           }
                           continue loop9;
                        }
                     }
                  }
                  addr207:
               }
               §§goto(addr163);
            }
            §§goto(addr207);
         }
         addr74:
         while(true)
         {
            _loc1_.visible = false;
            continue loop1;
         }
      }
      
      protected function §6!q§(param1:§""t§) : Vector.<§`!z§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§`!z§ = null;
         var _loc2_:Vector.<§`!z§> = new Vector.<§`!z§>(0);
         var _loc3_:int = 2;
         if(!_loc10_)
         {
            §§push(param1.§^5§);
            if(!(_loc10_ && param1))
            {
               if(§§pop())
               {
                  addr59:
                  _loc4_ = param1.§^5§.discounts;
                  addr57:
                  for(_loc5_ in _loc4_)
                  {
                     _loc6_ = §`!z§(_loc4_[_loc5_]);
                     if(!_loc10_)
                     {
                        _loc2_.push(_loc6_);
                        if(_loc10_ && param1)
                        {
                           break;
                        }
                        addr107:
                     }
                     if(_loc2_.length < _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr107);
                  }
               }
               return _loc2_;
            }
            §§goto(addr59);
         }
         §§goto(addr57);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§,T§ = null;
         if(_loc7_)
         {
            §§push(param2);
            if(!_loc6_)
            {
               if(§§pop().toUpperCase().indexOf("BUY") == 0)
               {
                  if(_loc7_)
                  {
                     §§push(param2);
                     if(_loc7_)
                     {
                        if(§§pop().toUpperCase().indexOf("RIGHT") != -1)
                        {
                           if(!(_loc6_ && param3))
                           {
                              addr47:
                              §§push(this.§-!^§.prices);
                              if(!(_loc6_ && param3))
                              {
                                 _loc4_ = §§pop();
                                 addr59:
                                 if(param2.toUpperCase().indexOf("LEFT") != -1)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       addr85:
                                       _loc4_ = this.§9`§.prices;
                                       addr87:
                                       if(_loc4_)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§2"O§.§9?§(_loc4_);
                                             if(!(_loc7_ || param3))
                                             {
                                                var _loc5_:* = param2.toUpperCase();
                                                switch(0)
                                                {
                                                }
                                                super.onUIInteraction(param1,param2,param3);
                                                if(_loc7_ || param2)
                                                {
                                                }
                                                return;
                                                addr103:
                                             }
                                          }
                                       }
                                       addr82:
                                    }
                                    return;
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr85);
               }
               §§goto(addr103);
            }
            §§goto(addr59);
         }
         §§goto(addr47);
      }
      
      override protected function createTransitionLabels() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §<!%§.length = 0;
         }
         §§push(§2"_§);
         if(_loc5_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§0!J§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(§!"L§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = id;
         if(!(_loc6_ && _loc1_))
         {
            §§push(§!!]§);
            if(_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc6_)
                  {
                     addr350:
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr389:
                     §§push(3);
                     if(_loc5_ || _loc1_)
                     {
                     }
                  }
                  addr402:
                  loop33:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(_loc1_);
                        while(true)
                        {
                           §§push(§ '§);
                           addr326:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr328:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc2_);
                                    break loop33;
                                 }
                                 break;
                              }
                              addr442:
                              §§goto(addr431);
                           }
                        }
                        break;
                        addr325:
                     case 1:
                        addr283:
                        §§push(_loc1_ + §-"s§);
                        if(!_loc6_)
                        {
                           _loc1_ = §§pop();
                           if(_loc5_)
                           {
                              addr266:
                              §§push(_loc2_);
                              §§push(§-"s§);
                              if(!_loc6_)
                              {
                                 addr270:
                                 _loc2_ = §§pop() + §§pop();
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr254:
                                    _loc3_ += §=a§;
                                    addr252:
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr487:
                                       §<!%§.push(_loc1_);
                                       §§goto(addr490);
                                    }
                                    §§goto(addr431);
                                 }
                                 §§goto(addr453);
                              }
                              else
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr297:
                                    addr294:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop15;
                                       }
                                       §§goto(addr325);
                                    }
                                    while(true)
                                    {
                                       continue loop15;
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr487);
                                 }
                                 §§goto(addr459);
                                 addr295:
                              }
                              §§goto(addr442);
                           }
                           §§goto(addr459);
                        }
                        break;
                     case 2:
                        addr211:
                        §§push(_loc1_);
                        if(!(_loc6_ && _loc1_))
                        {
                           §§push(§-"s§);
                           loop26:
                           while(true)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop30:
                                    while(!(_loc6_ && this))
                                    {
                                       _loc1_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop25:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§-"s§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr203:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  while(_loc5_)
                                                                  {
                                                                     §§push(§30§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr487);
                                                                              }
                                                                              addr431:
                                                                           }
                                                                           continue loop25;
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §'F§ = _loc1_;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr417:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    addr424:
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr490:
                                                                                    while(!(_loc6_ && this))
                                                                                    {
                                                                                       §<!%§.push(_loc3_);
                                                                                       while(true)
                                                                                       {
                                                                                          §<!%§.push(§`#?§.§;!&§);
                                                                                          addr459:
                                                                                          while(true)
                                                                                          {
                                                                                             §<!%§.push(§`#?§.§1#$§);
                                                                                             addr453:
                                                                                             while(true)
                                                                                             {
                                                                                                §3E§ = _loc3_;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §<!%§.push(_loc2_);
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    addr469:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    § #'§ = _loc2_;
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr424);
                                                                                 addr447:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                 }
                                                                                 §§goto(addr453);
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                           addr431:
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr252);
                                                                     §§goto(addr206);
                                                                  }
                                                                  addr206:
                                                                  §§goto(addr270);
                                                                  addr167:
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                         }
                                                         addr201:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               §§push(_loc3_);
                                                               break loop30;
                                                            }
                                                         }
                                                         addr313:
                                                      }
                                                      §§goto(addr459);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                    §§goto(addr294);
                                    addr230:
                                 }
                                 else
                                 {
                                    §§goto(addr266);
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr328);
                     case 3:
                     default:
                        §§push(_loc1_);
                        loop0:
                        while(_loc5_ || _loc1_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§ '§);
                              loop1:
                              while(_loc5_ || this)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop2:
                                    while(_loc5_)
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          loop3:
                                          do
                                          {
                                             §§push(_loc2_);
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§ '§);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            for(; _loc5_ || this; if(_loc5_ || _loc2_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop4;
                                                            })
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr78:
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr490);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr203);
                                                                           }
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr487);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr283);
                                                               }
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§push(§=a§);
                                                         break;
                                                         if(!(_loc5_ || _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr78);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr167);
                                          }
                                          while(false);
                                          
                                          §§goto(addr487);
                                       }
                                       §§goto(addr447);
                                    }
                                    §§goto(addr283);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr313);
                                 }
                              }
                              §§goto(addr283);
                           }
                           else
                           {
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr230);
                  }
                  continue loop32;
               }
               §§push(§[#'§);
               if(_loc5_)
               {
                  if(§§pop() === _loc4_)
                  {
                     if(_loc5_)
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           addr385:
                        }
                     }
                     else
                     {
                        addr382:
                        §§push(2);
                        if(!_loc6_)
                        {
                           §§goto(addr385);
                        }
                     }
                  }
                  else
                  {
                     §§push(§!"x§);
                     if(!(_loc6_ && this))
                     {
                        addr373:
                        if(§§pop() === _loc4_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr382);
                           }
                           else
                           {
                              §§goto(addr389);
                           }
                        }
                        else
                        {
                           §§push(§4!i§);
                        }
                        §§goto(addr389);
                     }
                     if(§§pop() === _loc4_)
                     {
                        §§goto(addr389);
                     }
                     else
                     {
                        §§push(4);
                     }
                  }
                  §§goto(addr402);
               }
               §§goto(addr373);
               §§goto(addr389);
            }
            §§goto(addr373);
         }
         §§goto(addr350);
      }
      
      override protected function setReverseLabels() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = id;
         if(_loc2_)
         {
            §§push(§!!]§);
            if(_loc2_)
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        addr74:
                     }
                  }
                  else
                  {
                     addr71:
                     §§push(1);
                     if(!_loc3_)
                     {
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§push(§[#'§);
               }
               §§goto(addr71);
            }
            if(§§pop() === _loc1_)
            {
               §§goto(addr71);
            }
            else
            {
               §§push(2);
            }
            addr79:
            switch(§§pop())
            {
               case 0:
                  §6##§ = §[#'§;
                  if(_loc3_)
                  {
                  }
                  addr98:
                  this.createTransitionLabels();
                  break;
               case 1:
                  §6##§ = §!!]§;
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr98);
                  }
                  break;
               default:
                  §§goto(addr98);
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
         }
      }
   }
}
