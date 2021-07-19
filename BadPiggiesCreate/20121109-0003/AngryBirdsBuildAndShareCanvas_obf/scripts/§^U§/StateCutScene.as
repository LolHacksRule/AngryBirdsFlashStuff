package §^U§
{
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;"7§.§1!O§;
   import §;"7§.§="<§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §@y§.§0=§;
   import §`",§.§2M§;
   import §`",§.§37§;
   import flash.events.Event;
   
   public class StateCutScene extends §'B§
   {
      
      public static const §%!Q§:String = "StateCutScene";
      
      private static const §9"&§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!Q§ = "StateCutScene";
         }
         do
         {
            §9"&§ = 500;
         }
         while(_loc2_);
         
      }
      
      private var §2w§:§37§;
      
      private var §3!5§:Boolean;
      
      private var §]b§:Number = 0;
      
      private var §3!y§:Number = 0;
      
      private var §#'§:§1!O§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §`!v§.init(§]!M§.§"!V§.Views.View_CutScene[0]);
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §"!t§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               while(true)
               {
                  §§push(this.§#'§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§]!Q§();
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    addr33:
                                    return true;
                                    addr31:
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr140);
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this.§#'§);
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop().§?2§("cutscene_" + param1);
                                          break loop1;
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr106);
                              §§goto(addr88);
                           }
                           continue;
                           addr93:
                        }
                        break;
                     }
                     if(!_loc3_)
                     {
                        §`!v§.getItemByName("MovieClip_Loading").setVisibility(true);
                     }
                     §§push(this.§#'§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3"7§);
                        addr140:
                        while(true)
                        {
                           §§push(this.§#'§);
                           continue loop2;
                        }
                     }
                     addr163:
                     §§goto(addr93);
                  }
                  §§goto(addr31);
               }
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && param1))
               {
                  return §§pop();
               }
            }
            §§goto(addr33);
         }
         §§goto(addr140);
      }
      
      private function §3"7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§#'§);
            loop0:
            for(; §§pop(); if(_loc2_ || _loc3_)
            {
               §§pop().removeEventListener(Event.CANCEL,this.§6y§);
               do
               {
                  this.§]!Q§();
               }
               while(!_loc2_);
               
               if(_loc3_ && this)
               {
                  §§goto(addr96);
               }
               break;
            })
            {
               if(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     §§push(this.§#'§);
                     addr91:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3"7§);
                     }
                  }
                  addr89:
               }
               while(true)
               {
                  §§push(this.§#'§);
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
                  §§goto(addr91);
               }
            }
            return;
         }
         §§goto(addr89);
      }
      
      private function §]!Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §`!v§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§`!<§());
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§="<§ = §="<§.§[E§;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§#'§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr54:
                     _loc2_ = this.§#'§.§8=§;
                     addr57:
                     this.§2w§ = §2M§.§1!I§(_loc1_,_loc2_);
                     if(!_loc4_)
                     {
                        §§push(this.§2w§);
                        while(§§pop())
                        {
                           while(true)
                           {
                              AngryBirdsFP11.§>!7§.§@"'§(_loc1_);
                              addr157:
                              loop0:
                              while(true)
                              {
                                 §§push(§'_§.§=M§);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr136:
                                    while(true)
                                    {
                                       §§pop().§'"@§(§§pop());
                                       addr137:
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§'_§.§=M§);
                                             continue loop1;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr157);
               }
               §§goto(addr57);
            }
            §§goto(addr54);
         }
         §§goto(addr149);
      }
      
      protected function §6y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§#'§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§#'§);
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3"7§);
                        addr92:
                        while(true)
                        {
                           §§push(this.§#'§);
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().removeEventListener(Event.CANCEL,this.§6y§);
                              loop3:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    this.end();
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr34);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§#'§)
               {
                  while(true)
                  {
                     this.§#'§ = §'_§.§=M§.§?i§;
                     addr150:
                     while(true)
                     {
                     }
                  }
                  addr145:
               }
               while(true)
               {
                  §§push(§%K§.§`9§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§%K§.§`9§);
                           addr138:
                           while(true)
                           {
                              §§pop().color = 0;
                              addr140:
                              while(true)
                              {
                              }
                           }
                        }
                        addr136:
                     }
                     while(true)
                     {
                        this.§]b§ = 0;
                        addr115:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr136);
                        }
                        continue loop0;
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr138);
                  §§goto(addr150);
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function §`!<§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§`!r§.§;!8§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§`!r§.§%"8§().§#!F§(_loc1_ + "-OUTRO"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ && _loc2_)
                     {
                        continue loop0;
                     }
                     if(!(_loc4_ && _loc1_))
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        §§goto(addr123);
                     }
                  }
                  return §§pop();
                  addr40:
               }
               while(true)
               {
                  §§push(§`!r§.§0B§);
                  addr123:
                  while(true)
                  {
                     §§push(§§pop());
                  }
               }
               while(true)
               {
                  _loc1_ = §§pop();
               }
            }
         }
         while(true)
         {
            §§push(§`!r§.§%"8§().§#!F§(_loc1_ + "-INTRO"));
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop());
            }
            §§goto(addr91);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§2w§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§#'§);
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§#'§);
                              loop7:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§3"7§);
                                 loop8:
                                 while(!_loc1_)
                                 {
                                    §§push(this.§#'§);
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop7;
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop5;
                                    }
                                    §§pop().removeEventListener(Event.CANCEL,this.§6y§);
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc1_ && this)
                                       {
                                          continue loop8;
                                       }
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§'_§.§=M§);
                                             break loop9;
                                          }
                                          addr154:
                                       }
                                       addr48:
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       super.deActivate();
                                       addr55:
                                       if(!_loc2_)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr48);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §`!r§.§;!8§ = null;
                                                      continue loop12;
                                                   }
                                                   continue loop6;
                                                }
                                                addr63:
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             this.§2w§ = null;
                                             addr126:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop13;
                                             }
                                          }
                                          addr140:
                                       }
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          return;
                                       }
                                       §§goto(addr126);
                                    }
                                    while(true)
                                    {
                                       §§pop().§>@§.removeChild(this.§2w§.sprite);
                                       break loop8;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§'_§.§=M§);
                           if(_loc2_)
                           {
                              §§pop().§"!X§(true);
                              §§goto(addr63);
                           }
                           §§goto(addr156);
                        }
                     }
                  }
               }
               §§goto(addr154);
            }
         }
         §§goto(addr140);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("SKIP" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr69);
               }
               else
               {
                  §§push(2);
               }
               addr87:
               switch(§§pop())
               {
                  case 0:
                     this.§3!5§ = true;
                     if(_loc5_)
                     {
                        break;
                     }
                     addr45:
                     break;
                  case 1:
                     AngryBirdsFP11.§@"7§.§>!5§();
                     if(_loc5_ || param3)
                     {
                        §§goto(addr45);
                     }
               }
               return;
            }
            if(_loc5_ || param2)
            {
               addr62:
               §§push(0);
               if(_loc6_)
               {
               }
            }
            else
            {
               addr69:
               §§push(1);
               if(!_loc5_)
               {
               }
            }
            §§goto(addr87);
            §§goto(addr69);
         }
         §§goto(addr62);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§3!y§);
            loop0:
            while(true)
            {
               if(§§pop() <= §9"&§)
               {
                  §§push(this);
                  §§push(this.§3!y§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§3!y§ = §§pop();
                  do
                  {
                     loop2:
                     while(true)
                     {
                        if(this.§3!5§)
                        {
                           if(!(_loc4_ || param1))
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 this.end();
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr141:
                                 addr141:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§]b§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() / 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§]b§ = §§pop();
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                              addr100:
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§]b§ = 1;
                                    if(!(_loc3_ && this))
                                    {
                                       addr60:
                                       continue loop2;
                                    }
                                    addr136:
                                    while(true)
                                    {
                                       §`!v§.getItemByName("Button_Skip").setVisibility(true);
                                       §§goto(addr141);
                                    }
                                 }
                              }
                              addr79:
                           }
                           while(true)
                           {
                              §`!v§.getItemByName("Button_Skip").mClip.alpha = this.§]b§;
                              §§goto(addr100);
                           }
                        }
                        else
                        {
                           §§push(super.run(param1));
                           if(_loc4_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(!_loc3_)
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && param1))
                              {
                                 if(§§pop() == §'B§.STATE_STATUS_RUNNING)
                                 {
                                    addr206:
                                    if(mNextState.length > 0)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             §§goto(addr206);
                                          }
                                          if(_loc4_ || _loc2_)
                                          {
                                             return §'B§.STATE_STATUS_COMPLETED;
                                          }
                                          addr253:
                                          return _loc2_;
                                          addr252:
                                       }
                                       addr230:
                                    }
                                    addr195:
                                    §§push(Boolean(this.§2w§));
                                    if(Boolean(this.§2w§))
                                    {
                                       addr197:
                                       §§pop();
                                       addr198:
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.§2w§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(§§pop().update(param1));
                                             if(!_loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr230);
                                    }
                                    addr177:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc4_ || this))
                                          {
                                             §§goto(addr198);
                                          }
                                          this.end();
                                       }
                                    }
                                    return §'B§.STATE_STATUS_RUNNING;
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr230);
                        }
                     }
                  }
                  while(_loc3_);
                  
                  return §'B§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr136);
            }
         }
         §§goto(addr141);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc3_)
         {
            §§push(this.§2w§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(this.§2w§);
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ && _loc1_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(§`!r§.§0B§);
                                                while(_loc2_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr92:
                                                      addr77:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      §§goto(addr22);
                                                   }
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr92);
                                                            }
                                                            mNextState = this.§"!0§();
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      mNextState = this.§>!9§();
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§goto(addr22);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr236);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr150:
                                                            if(_loc3_ && this)
                                                            {
                                                            }
                                                            §§goto(addr22);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr77);
                                                      }
                                                   }
                                                   §§push(§37§.§"!a§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr182:
                                                      while(!(_loc3_ && _loc2_))
                                                      {
                                                         §§pop();
                                                         continue loop10;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr210:
                                                   while(true)
                                                   {
                                                      continue loop8;
                                                   }
                                                   addr210:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr210);
                                                   §§goto(addr83);
                                                }
                                                addr83:
                                                addr208:
                                             }
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop10;
                                             }
                                             mNextState = §<K§.§%!Q§;
                                             §§goto(addr150);
                                          }
                                          continue loop9;
                                       }
                                    }
                                    §§goto(addr182);
                                 }
                                 continue loop2;
                                 addr163:
                              }
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §1!i§.§&t§ = StateCutScene.§%!Q§;
                                 }
                                 else
                                 {
                                    addr243:
                                    while(true)
                                    {
                                       §§push(this.§2w§);
                                       continue loop0;
                                    }
                                    addr243:
                                 }
                              }
                              mNextState = this.§>!9§();
                              addr22:
                              return;
                              addr236:
                              addr196:
                              §§goto(addr243);
                           }
                        }
                     }
                     §§goto(addr242);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function §>!9§() : String
      {
         return §1!i§.§%!Q§;
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
   }
}
