package §5G§
{
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §12§.§25§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §<!0§.§7g§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§[!D§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §39§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelSelectionState";
      
      private static const §2!b§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §39§))
         {
            §3!?§ = "LevelSelectionState";
            do
            {
               §2!b§ = 0.5;
            }
            while(_loc1_);
            
         }
      }
      
      private var §-!H§:Boolean = false;
      
      private var §<!N§:MovieClip;
      
      private var §;h§:Array;
      
      private var §=![§:Array;
      
      private var §9!9§:int = 0;
      
      private var §,!g§:Boolean = false;
      
      private var §+k§:§7g§ = null;
      
      private var §<!c§:String;
      
      private var §'!`§:Dictionary;
      
      private var §'!S§:Array;
      
      private var §?!0§:Boolean = false;
      
      private var §#t§:Array;
      
      private var §^!C§:Boolean;
      
      private var §9!W§:String;
      
      public function §39§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §%!0§ = new §5!§(this);
               while(true)
               {
                  §%!0§.init(§>!;§.§ get§.Views.View_LevelSelection[0]);
                  addr69:
                  if(_loc1_ || _loc2_)
                  {
                     §%!0§.addChild(this.§<!N§);
                     while(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           this.§=![§ = [];
                           do
                           {
                              this.§;h§ = [];
                           }
                           while(_loc2_);
                           
                           if(!_loc2_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           §§goto(addr69);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§<!N§ = new MovieClip();
                              continue loop3;
                           }
                           addr86:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§%[§.§`1§);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        addr200:
                        while(true)
                        {
                           §§pop().stop();
                           addr201:
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§&!g§();
                              loop12:
                              while(!_loc1_)
                              {
                                 this.§5;§();
                                 loop13:
                                 while(_loc2_ || this)
                                 {
                                    §§push(§>f§.§%!`§);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             loop20:
                                             while(_loc2_ || _loc1_)
                                             {
                                                addr74:
                                                §§pop();
                                                loop19:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §§push(§>f§.§%!`§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop().§06§);
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc2_)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§>f§.§%!`§);
                                                                     continue loop14;
                                                                  }
                                                                  addr54:
                                                                  while(_loc1_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               return;
                                                               addr35:
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop14;
                                                         addr79:
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §>d§.§@Y§(§>d§.§<§);
                                                         while(!_loc1_)
                                                         {
                                                            continue loop0;
                                                            loop10:
                                                            while(_loc2_ || this)
                                                            {
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  addr153:
                                                                  §§push(§@!Z§.§;!,§);
                                                                  if(!(_loc1_ && this))
                                                                  {
                                                                     §§push(false);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        §§pop().§;!i§(§§pop());
                                                                        break loop12;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        §§goto(addr153);
                                                                     }
                                                                     addr137:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().§%d§(§§pop());
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§?!0§ = true;
                                                                     continue loop5;
                                                                  }
                                                                  addr173:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                   }
                                                   §§goto(addr139);
                                                }
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§25§.§&g§,this.§95§);
                                                   §§goto(addr54);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   addr134:
                                                }
                                                §§goto(addr173);
                                             }
                                             addr67:
                                             addr172:
                                          }
                                          §§goto(addr35);
                                       }
                                       §§goto(addr67);
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr172);
                     §§goto(addr201);
                  }
               }
               §§goto(addr200);
            }
         }
         while(true)
         {
            §§goto(addr134);
         }
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activateComplete();
         }
      }
      
      private function §<"§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §%!0§.setText("","TextField_Code");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr82:
                        do
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        while(!_loc4_);
                        
                        return _loc2_;
                        addr61:
                     }
                     while(true)
                     {
                        this.§5;§();
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr61);
                     }
                     return §%!$§.STATE_STATUS_RUNNING;
                  }
                  return §%!$§.STATE_STATUS_COMPLETED;
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §5;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§5!9§.§!t§());
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(_loc1_)
            {
               while(true)
               {
                  §5!9§.§3!K§();
                  addr81:
                  while(true)
                  {
                  }
                  addr59:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr76:
               }
            }
            while(true)
            {
               §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr76);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            while(true)
            {
               this.§?g§();
               loop1:
               for(; !_loc2_; if(_loc2_ && _loc2_)
               {
                  continue;
               },§§goto(addr79),§§push(§>f§.§%!`§))
               {
                  §§push(§>f§.§%!`§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr89:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr102);
                              }
                              break;
                           }
                           return;
                           addr43:
                        }
                        while(true)
                        {
                           §§pop();
                           addr102:
                           addr79:
                           while(true)
                           {
                              §§push(§>f§.§%!`§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           §§pop().§06§.removeEventListener(§25§.§&g§,this.§95§);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1218
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function §?!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§>f§.§%!`§);
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
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr326:
                           while(true)
                           {
                              §§push(§>f§.§%!`§);
                              addr302:
                              while(true)
                              {
                                 §§push(§§pop().§>!b§());
                                 addr303:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                        }
                        addr325:
                     }
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 this.§;!0§(param1);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop() == "1-1");
                                       addr285:
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop13:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(_loc2_)
                                                {
                                                   §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == "1-2");
                                                         addr219:
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(§§pop() == "CREDIT_OK")
                                                         {
                                                            addr230:
                                                            if(!_loc2_)
                                                            {
                                                               addr250:
                                                               if(_loc3_)
                                                               {
                                                                  addr280:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == "1-3");
                                                                        addr257:
                                                                        while(_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                              addr261:
                                                                              addr264:
                                                                              §?,§.sCheetosPopups.hidePopup();
                                                                              mNextState = StateCutSceneDynamic.§3!?§;
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  addr280:
                                                               }
                                                               §§goto(addr24);
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §?,§.sCheetosPopups.hidePopup();
                                                            addr237:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            else
                                                            {
                                                               return;
                                                               addr319:
                                                            }
                                                         }
                                                         §§push(§>f§.§%!`§);
                                                         loop25:
                                                         for(; !_loc3_; while(true)
                                                         {
                                                            §§push(§>f§.§%!`§);
                                                            if(!_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop25;
                                                            §§goto(addr211);
                                                         },§§goto(addr257))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc3_)
                                                            {
                                                               addr177:
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc2_ || _loc2_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§?,§.sCheetosPopups.showPopup(§&O§.§"!?§))
                                                                                    {
                                                                                       if(_loc2_ || param1)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      sCheetosPopups.hidePopup();
                                                                                                      addr75:
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         mNextState = StateCutSceneDynamic.§3!?§;
                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               addr306:
                                                                                                               this.§9!W§ = param1;
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr145:
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr230);
                                                                                                               }
                                                                                                               §§goto(addr237);
                                                                                                            }
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         §§goto(addr24);
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr73:
                                                                                                }
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr130:
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
                                                                                                §§goto(addr145);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr24);
                                                                                       }
                                                                                       §§goto(addr75);
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              §§goto(addr130);
                                                                              addr121:
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr211:
                                                                                 §§pop();
                                                                                 continue loop25;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           addr279:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr280);
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                        §§goto(addr202);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc2_ || this)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr279);
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                        addr271:
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr177);
                                                                  }
                                                                  addr270:
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr270);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr306);
                        }
                     }
                  }
               }
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop().§`!b§ <= 0);
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr257);
                  }
                  addr202:
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §;!0§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            StateCutSceneDynamic.§^C§ = true;
            while(true)
            {
               §@;§.§6!K§ = param1;
               while(_loc3_ || _loc3_)
               {
                  §@;§.§2Q§(param1.toLowerCase());
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §&!g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Array = null;
         var _loc1_:* = Number(0);
         if(_loc4_)
         {
            this.§'!S§ = [];
            if(!_loc5_)
            {
               addr29:
               this.§9!9§ = §@;§.§default§(§@;§.§5!K§).§ !X§;
            }
            var _loc2_:Number = 0;
            while(_loc2_ < §@;§.§default§(§@;§.§5!K§).pageIndexes.length)
            {
               _loc3_ = §@;§.§default§(§@;§.§5!K§).§2!D§(§@;§.§default§(§@;§.§5!K§).pageIndexes[_loc2_]);
               if(_loc4_ || this)
               {
                  this.§'!S§.push(§@;§.§default§(§@;§.§5!K§).§5Z§(_loc2_));
                  loop1:
                  while(true)
                  {
                     addr110:
                     while(true)
                     {
                        §§push(this.§'e§(_loc3_,_loc1_));
                        addr115:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr116:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc4_ || _loc2_)
                           {
                              addr100:
                              _loc2_ = §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr100);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §'e§(param1:Array, param2:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:§^-§ = null;
         var _loc6_:* = null;
         var _loc7_:* = false;
         var _loc8_:* = NaN;
         if(_loc10_ || this)
         {
            this.§#t§ = [];
         }
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc9_)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc10_ || param2)
                  {
                     §§push(param2);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop() + §5!9§.§?!L§);
                        if(_loc10_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              break;
                           }
                           §§goto(addr240);
                        }
                        break;
                     }
                     break;
                  }
               }
               else
               {
                  _loc4_ = param1[_loc3_];
                  if(!_loc9_)
                  {
                     _loc5_ = §%!0§.getItemByName("LevelButton" + (_loc3_ + 1)) as §^-§;
                     if(_loc10_)
                     {
                        this.§#t§[_loc3_] = _loc5_;
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                           }
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(§>f§.§^!a§(_loc6_));
                              if(!(_loc9_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(_loc7_ = §§pop());
                                 }
                              }
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    }
                                    addr176:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    addr136:
                                    loop4:
                                    while(true)
                                    {
                                       §§push(Number(§5!9§.§#%§.§[![§(_loc6_)));
                                       loop5:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             addr119:
                                             while(true)
                                             {
                                                _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc8_.toString() + "_stars");
                                                while(!(_loc9_ && this))
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc10_ || this))
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(§§pop() + 1);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc5_.setComponentState(§0j§.§%!T§);
                              }
                              while(true)
                              {
                                 §§goto(addr136);
                              }
                           }
                        }
                     }
                     §§goto(addr176);
                  }
               }
               addr239:
               addr240:
               return §§pop();
               §§push(param2);
            }
            break;
         }
         param2 = §§pop();
         §§goto(addr239);
      }
      
      private function §?g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§<!N§.numChildren <= 0)
            {
               if(_loc1_)
               {
                  this.§=![§ = [];
               }
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
            }
            else
            {
               this.§<!N§.removeChildAt(0);
            }
         }
      }
      
      private function §7`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mNextState = §39§.§3!?§;
         }
      }
      
      public function refreshSession() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§"!d§.§]q§,
               "sessionID":§"!d§.§>%§(),
               "userID":§>f§.§%!`§.name
            };
            if(_loc3_)
            {
               new §"!d§(callObject,§5!9§.§]q§,this,§"!d§.§9X§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §95§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§9!W§ != null)
            {
               if(!_loc3_)
               {
                  addr61:
                  this.§?!§(this.§9!W§);
               }
               do
               {
                  this.§9!W§ = null;
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr61);
      }
   }
}
