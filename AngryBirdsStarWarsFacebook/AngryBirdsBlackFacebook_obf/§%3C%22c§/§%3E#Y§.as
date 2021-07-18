package §<"c§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"e§.§9#B§;
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §+D§.§^"m§;
   import §9p§.§#"T§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^!v§.§ ?§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §>#Y§ extends § #4§
   {
       
      
      protected var §5M§:§9#B§;
      
      protected var §5#?§:String;
      
      protected var §"!c§:§ ?§;
      
      protected var §4!&§:Boolean;
      
      protected var §6U§:MovieClip;
      
      protected var §2!w§:§^"m§;
      
      protected var §5!r§:§@"A§;
      
      public function §>#Y§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
               loop1:
               while(true)
               {
                  this.§2!w§ = §^"m§(§@;§.getItemByName("Button_Tournament"));
                  while(true)
                  {
                     this.§6U§ = §@;§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
                     addr68:
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr53:
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr53);
            }
            §§goto(addr68);
         }
         §§goto(addr60);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
               loop1:
               while(true)
               {
                  this.§"!c§ = new § ?§(§^c§);
                  while(§^c§.getItemByName("MovieClip_PowerupReward"))
                  {
                     if(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                        }
                        continue;
                     }
                     addr64:
                     addr64:
                     while(!_loc3_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  addr23:
                  while(true)
                  {
                     this.§2!w§.setVisibility(false);
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr64);
                  }
               }
            }
         }
         while(true)
         {
            this.§5!r§ = new §@"A§(§^c§,§^c§.getItemByName("MovieClip_PowerupReward").mClip);
            §§goto(addr64);
         }
      }
      
      private function get §#F§() : Boolean
      {
         return §">§.isLevelPassed(§+!b§.getEpisodeByName(§?!W§.§=q§).getLevelName(§?!W§.§0#G§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         var _loc1_:§3![§ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
         var _loc2_:Boolean = §">§.isLevelPassed(§+!b§.currentLevel);
         §§push(_loc1_.getLevelIndex(§+!b§.currentLevel));
         if(!(_loc8_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc7_ || _loc2_)
         {
            §§push(int(§§pop() + 1));
         }
         var _loc4_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            §§push(_loc1_.name == "2");
            if(!_loc8_)
            {
               §§push(§§pop());
               loop0:
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
                           §§push(_loc4_);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(§§pop() == 9);
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             addr173:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc7_)
                                                {
                                                   if(!(_loc7_ || _loc3_))
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                addr135:
                                                while(!(_loc8_ && _loc1_))
                                                {
                                                }
                                                continue loop4;
                                             }
                                             continue loop13;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ && _loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop())
                                          {
                                             loop8:
                                             for(; _loc7_; loop10:
                                             while(true)
                                             {
                                                §§push(this.§#F§);
                                                if(_loc7_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(!_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               this.§4!&§ = true;
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr173);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§4!&§ = false;
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr77:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr113);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   addr94:
                                                }
                                                §§goto(addr135);
                                             })
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   continue loop8;
                                                   addr113:
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr184:
                                                         §§push(§?!W§.§0#G§);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc7_ || _loc1_)
                                                            {
                                                               §§push(§§pop() - _loc3_);
                                                            }
                                                            §§push(int(§§pop()));
                                                            break loop13;
                                                         }
                                                         break loop13;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                 }
                              }
                              addr169:
                           }
                           break;
                        }
                        var _loc5_:* = §§pop();
                        if(!(_loc8_ && this))
                        {
                           §§push(this.§4!&§);
                           loop14:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop15:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop16:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr483:
                                          while(true)
                                          {
                                             §§push(_loc1_.name);
                                             addr458:
                                             while(true)
                                             {
                                                §§push(§§pop() == "2");
                                             }
                                          }
                                       }
                                       addr482:
                                    }
                                    while(true)
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop20:
                                          while(_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr476:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_ > 0);
                                                   }
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(_loc8_ && _loc1_)
                                                      {
                                                         continue loop21;
                                                      }
                                                      §§pop();
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               continue loop19;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               §§push(!§§pop());
                                                               while(_loc7_ || _loc2_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop15;
                                                                  if(!(_loc8_ && _loc1_))
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(_loc7_ || _loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                     addr416:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop34:
                                                                                 for(; !_loc8_; if(!(_loc7_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr217))
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    §§push(§4#;§.singleton.§4#,§.getLocalizedString("levelend_unlock_tournament"));
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr352:
                                                                                                §§push(§§pop().replace("[count]",_loc5_));
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   addr363:
                                                                                                   §§push(_loc6_ = §§pop());
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      §§push("[levels]");
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr386:
                                                                                                         _loc6_ = §§pop().replace(§§pop(),_loc5_ == 1 ? "level" : "levels");
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§6U§.txtLabel.text = _loc6_;
                                                                                                            loop36:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§6U§.visible = true;
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr252:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§<!L§)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr217:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           super.setScoreData();
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr217:
                                                                                                                     }
                                                                                                                     addr275:
                                                                                                                     while(!_loc8_)
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                        §§goto(addr217);
                                                                                                                     }
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr458);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           addr325:
                                                                        }
                                                                        §§goto(addr421);
                                                                     }
                                                                  }
                                                                  continue loop20;
                                                                  §§goto(addr400);
                                                               }
                                                               addr400:
                                                               addr437:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr482);
                                                            }
                                                         }
                                                         §§goto(addr483);
                                                      }
                                                   }
                                                   §§goto(addr476);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr437);
                                             }
                                          }
                                          continue loop16;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr483);
                     }
                     addr182:
                  }
                  §§goto(addr169);
               }
            }
            §§goto(addr182);
         }
         §§goto(addr77);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"!c§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"!c§);
                     while(true)
                     {
                        §§pop().removeEventListener(§ ?§.§[!9§,this.§&!u§);
                        addr117:
                        while(true)
                        {
                           §§push(this.§"!c§);
                           if(_loc1_)
                           {
                              break;
                           }
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §§pop().dispose();
                           loop8:
                           while(true)
                           {
                              this.§"!c§ = null;
                              addr80:
                              addr87:
                              while(_loc1_ && _loc1_)
                              {
                                 continue loop8;
                              }
                           }
                        }
                     }
                  }
                  addr110:
               }
               while(true)
               {
                  §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
                  loop5:
                  while(true)
                  {
                     this.§5M§.§="M§();
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr87);
               }
               return;
            }
         }
         §§goto(addr96);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.update(param1);
         }
         do
         {
            this.§"!c§.update(param1);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.onCountComplete();
            loop0:
            while(true)
            {
               §§push(!§<!L§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr108:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              §§push(this.§4!&§);
                              if(!(_loc1_ && this))
                              {
                                 continue loop1;
                              }
                              addr80:
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(§§pop())
                  {
                     loop5:
                     do
                     {
                        §§push(this.§"!c§);
                        while(true)
                        {
                           §§pop().addEventListener(§ ?§.§[!9§,this.§&!u§);
                           while(true)
                           {
                              §§push(this.§"!c§);
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              §§pop().show();
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                     while(!(_loc2_ || this));
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr108);
                  }
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.onBadgeLanded();
            loop0:
            while(this.§4!&§)
            {
               if(!_loc1_)
               {
                  §§push(this.§"!c§);
                  loop1:
                  while(true)
                  {
                     §§pop().addEventListener(§ ?§.§[!9§,this.§&!u§);
                     addr68:
                     while(true)
                     {
                        §§push(this.§"!c§);
                        if(!_loc1_)
                        {
                           §§pop().show();
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      protected function §&!u§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
         }
         do
         {
            this.setButtonAlignment();
         }
         while(!_loc2_);
         
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Boolean = §9!#§.visible;
         var _loc2_:Boolean = §^W§.visible;
         var _loc3_:* = int(§,#9§);
         if(_loc5_ || _loc2_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        addr147:
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop() + §§pop()));
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr150:
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             continue loop1;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§5"n§ + §,#9§);
                                             addr131:
                                             while(true)
                                             {
                                                §§push(int(§§pop() + §§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(this.§4!&§);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  addr65:
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  addr81:
                                                                  §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr90:
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr154:
                                                                        §§push(-§§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                        §§push(int(§§pop() + §<!K§));
                                                                     }
                                                                     var _loc4_:* = §§pop();
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr380:
                                                                        if(_loc2_)
                                                                        {
                                                                           addr381:
                                                                           §^W§.x = _loc4_;
                                                                           addr377:
                                                                           _loc4_ += §5"n§ + §,#9§;
                                                                           addr384:
                                                                           addr362:
                                                                        }
                                                                        §^"^§.x = _loc4_;
                                                                        addr344:
                                                                        addr359:
                                                                        §§push(int(_loc4_ + (§5"n§ + §,#9§)));
                                                                        if(_loc5_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr352:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr337:
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr338:
                                                                                 §9!#§.x = _loc4_;
                                                                                 §§push(_loc4_);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                                                 }
                                                                                 addr341:
                                                                                 if(!(_loc6_ && _loc1_))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr325:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          addr276:
                                                                                          §§push(this.§4!&§);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr289:
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      addr299:
                                                                                                      this.§2!w§.setVisibility(true);
                                                                                                      addr300:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr273:
                                                                                                         this.§2!w§.x = _loc4_;
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                                                                         }
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr253:
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ || this))
                                                                                                                        {
                                                                                                                           §§goto(addr338);
                                                                                                                        }
                                                                                                                        addr171:
                                                                                                                        return;
                                                                                                                        addr269:
                                                                                                                     }
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                                  §§goto(addr300);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                         addr275:
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                      addr298:
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                §§push(this.§2!w§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc1_))
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr384);
                                                                                                                  }
                                                                                                                  §§goto(addr171);
                                                                                                               }
                                                                                                               §§goto(addr289);
                                                                                                            }
                                                                                                            §§goto(addr275);
                                                                                                         }
                                                                                                         §§goto(addr253);
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr273);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        §§goto(addr362);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                               §§goto(addr90);
                                                            }
                                                            else
                                                            {
                                                               addr72:
                                                               §§push(0);
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr81);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr140:
                                                         }
                                                      }
                                                      §§goto(addr65);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop13;
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
               }
            }
            §§goto(addr140);
         }
         §§goto(addr150);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:§[!j§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc5_:§;a§ = §4#;§.singleton.popupManager;
         var _loc6_:§7q§;
         §§push((_loc6_ = §7q§(§4#;§.singleton.dataModel.userProgress)).§7"`§);
         if(_loc9_ || param2)
         {
            §§push(Boolean(§§pop()));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param2))
                  {
                     §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_.indexOf(param2) == -1);
                        if(!(_loc10_ && param1))
                        {
                           addr74:
                           §§push(!§§pop());
                           if(_loc9_ || param3)
                           {
                              addr82:
                              if(§§pop())
                              {
                                 if(_loc9_ || this)
                                 {
                                    §§goto(addr94);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr94);
               }
               §§goto(addr82);
            }
            §§goto(addr74);
         }
         addr94:
         if(!_loc5_.isPopupOpenById(SyncPopup.§%!h§))
         {
            if(_loc9_)
            {
               this.§5#?§ = param2;
               if(_loc9_)
               {
                  addr102:
                  _loc6_.addEventListener(UserProgressEvent.§3#V§,this.§?"x§);
                  if(_loc9_)
                  {
                     addr110:
                     _loc7_ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
                     if(_loc9_)
                     {
                        §4#;§.singleton.popupManager.openPopup(_loc7_);
                     }
                  }
                  else
                  {
                     var _loc8_:* = param2;
                     if(!(_loc10_ && param2))
                     {
                        if("NEXT_LEVEL" === _loc8_)
                        {
                           if(_loc9_ || param2)
                           {
                              §§push(0);
                              if(!_loc9_)
                              {
                              }
                           }
                           else
                           {
                              addr273:
                              §§push(2);
                              if(_loc9_ || param2)
                              {
                              }
                           }
                           §§goto(addr296);
                        }
                        else
                        {
                           if("REPLAY" !== _loc8_)
                           {
                              if("MENU" === _loc8_)
                              {
                                 §§goto(addr273);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr296:
                              loop3:
                              switch(§§pop())
                              {
                                 case 0:
                                    §?!r§.§"#_§("misc_menubuttonproceed_1");
                                    if(!(_loc10_ && param3))
                                    {
                                       §'$§();
                                       § g§(StateCutScene.§^!7§);
                                       break;
                                       addr211:
                                       addr207:
                                    }
                                    break;
                                 case 1:
                                    §?!r§.§"#_§("misc_menubuttonproceed_1");
                                    if(_loc9_ || param3)
                                    {
                                       § g§(§<2§.§^!7§);
                                       addr185:
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       §§goto(addr211);
                                    }
                                    break;
                                 case 2:
                                    §?!r§.§0"#§();
                                    loop0:
                                    while(true)
                                    {
                                       addr155:
                                       addr225:
                                       while(true)
                                       {
                                          §?!r§.§"#_§("misc_menubuttonback_1");
                                          continue loop0;
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr185);
                              }
                              return;
                           }
                           if(!(_loc10_ && param1))
                           {
                              §§push(1);
                              if(_loc10_ && param1)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr273);
                           }
                           §§goto(addr296);
                        }
                     }
                     §§goto(addr273);
                     addr212:
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr102);
         }
      }
      
      protected function §?"x§(param1:UserProgressEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         if(!(_loc4_ && param1))
         {
            _loc2_.removeEventListener(UserProgressEvent.§3#V§,this.§?"x§);
         }
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§,"o§(SyncPopup.§%!h§);
         }
         do
         {
            §=!q§(-1,this.§5#?§,null);
            do
            {
               this.§5#?§ = null;
            }
            while(_loc4_);
            
         }
         while(!_loc5_);
         
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.saveNewHighScore(param1);
            while(true)
            {
               §">§.addEventListener(UserProgressEvent.§3#V§,this.§6d§);
            }
            addr88:
         }
         loop1:
         while(true)
         {
            §">§.saveLevelProgress(§+!b§.currentLevel,false,false);
            while(_loc2_ || this)
            {
               §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,false);
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break loop1;
               }
               §§goto(addr88);
            }
         }
      }
      
      private function §6d§(param1:UserProgressEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
         }
         var _loc2_:§#"T§ = §#"T§(param1.data);
         if(!(_loc3_ && this))
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr248:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§@!?§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop14:
                              while(true)
                              {
                                 §§push(_loc2_.§@!?§);
                                 if(!(_loc4_ || this))
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr242:
                                 }
                                 else
                                 {
                                    loop17:
                                    while(_loc4_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§5!r§);
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc3_ && this))
                                                   {
                                                      loop15:
                                                      while(§§pop())
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(_loc2_.§@!?§);
                                                            addr152:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §@;§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + _loc2_.§+",§;
                                                               loop21:
                                                               for(; !(_loc3_ && this); while(true)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §?!r§.§"#_§("highscore");
                                                                  §§goto(addr75);
                                                               },continue loop16)
                                                               {
                                                                  §§push(this.§5!r§);
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§pop().visible = true;
                                                                     continue loop21;
                                                                     addr79:
                                                                     §§push(this.§5!r§);
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§pop().show();
                                                                     if(_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr79);
                                                                        }
                                                                        continue loop14;
                                                                        addr75:
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     addr63:
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        §6"]§.§4!9§(§6"]§.§3!b§,_loc2_.§@!?§,_loc2_.§+",§);
                                                                        continue loop14;
                                                                        §§goto(addr63);
                                                                     }
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            break loop15;
                                                         }
                                                      }
                                                      return;
                                                      addr142:
                                                   }
                                                   break;
                                                }
                                                continue loop17;
                                             }
                                             addr243:
                                             while(true)
                                             {
                                                §§push(_loc2_.§+",§ > 0);
                                                break loop17;
                                             }
                                          }
                                          continue loop3;
                                          addr201:
                                       }
                                       continue loop2;
                                    }
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop14;
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr231:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr242);
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    addr230:
                                    addr191:
                                 }
                                 §§goto(addr243);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr230);
                  }
               }
            }
         }
         §§goto(addr152);
      }
   }
}
