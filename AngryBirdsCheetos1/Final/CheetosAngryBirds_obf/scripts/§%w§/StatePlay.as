package §%w§
{
   import § !G§.§`e§;
   import §!X§.§#K§;
   import §!X§.§7@§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §#![§.§7v§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§%!T§;
   import §5!M§.§7!0§;
   import §5!M§.§<e§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §@!?§.§1!C§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §[>§ implements §3n§
   {
      
      public static const §9!P§:String = "StatePlay";
      
      private static const § S§:Number = -10000.0;
      
      private static const §1o§:Number = 15000.0;
      
      private static const § r§:int = 0;
      
      private static const §>!<§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || StatePlay)
         {
            §9!P§ = "StatePlay";
         }
         loop0:
         while(true)
         {
            § S§ = -10 * 1000;
            do
            {
               §1o§ = 15 * 1000;
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      private var §6!P§:Boolean = true;
      
      private var §"!#§:Boolean = false;
      
      private var §[!R§:Number = -10000.0;
      
      private var §5!I§:int = 0;
      
      private var §2!G§:Boolean;
      
      private var §=E§:Boolean;
      
      private var callObject:Object;
      
      private var §7,§:Boolean = false;
      
      private var §,!§:Number;
      
      private var §,!4§:Number;
      
      private var §>!-§:Boolean = true;
      
      private var §,!"§:Boolean = false;
      
      private var §=d§:§&!!§;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §3t§ = new §'j§(this);
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §3t§.init(§0p§.§'! §.Views.View_LevelPlay[0]);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §,!A§.addCallback("navigationAttempt",this.§-9§);
         }
      }
      
      private function §-9§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var url:String = param1;
         while(true)
         {
            §9!H§.§;a§ = url;
            loop1:
            for(; _loc5_; if(!_loc4_)
            {
               if(false)
               {
                  §§goto(addr76);
               }
               try
               {
                  §3t§.container.setObjectToFront(§;s§.sCheetosPopups.container);
               }
               catch(e:Error)
               {
               }
               addr143:
            },continue,while(true)
            {
               §§push(§#x§.§=!!§);
               if(!_loc4_)
               {
                  continue loop4;
               }
               continue loop3;
            },return)
            {
               while(true)
               {
                  §§push(§#x§.§=!!§);
                  while(true)
                  {
                     §§push(§§pop().§&G§() == null);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(!§§pop());
                        if(_loc5_ || _loc2_)
                        {
                           addr97:
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr100);
                              }
                              addr99:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §;s§.sCheetosPopups.showPopup(§0!U§.CONFIRM_LEAVE,§4C§.getText("Popup_Confirm_Leave"));
                                 }
                                 if(_loc5_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr100:
                              }
                              §§goto(addr143);
                           }
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
      }
      
      private function navigationConfirmed() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §,!A§.§9!M§("navigationConfirmed",§9!H§.§;a§);
            if(!(_loc3_ && _loc3_))
            {
               §;s§.sCheetosPopups.hidePopup();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.levelStarted();
            while(true)
            {
               §§push(this.§=d§);
               if(_loc1_)
               {
                  if(§§pop() != null)
                  {
                     while(true)
                     {
                        §§push(this.§=d§);
                        addr169:
                        while(true)
                        {
                           §§pop().§!S§();
                           addr170:
                           while(true)
                           {
                              this.§=d§ = null;
                              addr149:
                              while(true)
                              {
                              }
                           }
                        }
                        addr137:
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        §7?§.§3J§();
                        loop4:
                        while(true)
                        {
                           this.§6§();
                           while(true)
                           {
                              §!!>§.§ &§();
                              loop6:
                              while(!_loc2_)
                              {
                                 §'^§.§`0§(§"!L§.§0y§,§7e§.§^"§);
                                 loop7:
                                 while(true)
                                 {
                                    this.§2!G§ = false;
                                    while(!(_loc2_ && this))
                                    {
                                       §!!>§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          §9!H§.§"B§(§7e§.§^"§).numberOfBirdsShot = §7?§.§4!H§.slingshot.§&!_§();
                                          loop10:
                                          for(; _loc1_; while(true)
                                          {
                                             this.§,!§ = new Date().time;
                                             if(!_loc2_)
                                             {
                                                continue loop9;
                                             }
                                             continue loop10;
                                          },return)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr149);
                                          }
                                          continue loop7;
                                          if(_loc1_ || _loc1_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr130:
                                    while(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr137);
                                    }
                                    §§goto(addr170);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§=E§ = false;
                     §§goto(addr130);
                     §§goto(addr149);
                  }
               }
               §§goto(addr169);
            }
         }
         §§goto(addr64);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§9!'§.§7!Z§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§9!'§.§7!Z§);
                        addr154:
                        while(true)
                        {
                           §§pop().start();
                           addr155:
                           while(true)
                           {
                           }
                        }
                     }
                     addr152:
                  }
                  loop2:
                  while(true)
                  {
                     this.§[Z§();
                     loop3:
                     while(true)
                     {
                        §3t§.setText(§4C§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
                        loop4:
                        while(true)
                        {
                           §3t§.setText(§4C§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
                           loop5:
                           while(_loc1_ || _loc1_)
                           {
                              §3t§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                              loop6:
                              while(true)
                              {
                                 §3t§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop6;
                                    }
                                    this.§7,§ = false;
                                    loop8:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§?<§();
                                          while(_loc1_ || _loc2_)
                                          {
                                             this.§>!G§();
                                             do
                                             {
                                                this.§>!-§ = true;
                                             }
                                             while(_loc2_);
                                             
                                             if(_loc1_)
                                             {
                                                if(_loc1_ || this)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                                continue loop7;
                                             }
                                          }
                                          continue loop8;
                                       }
                                       return;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr152);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               §§goto(addr154);
            }
         }
         §§goto(addr86);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!A§.§]Q§("navigationAttempt",this.§-9§);
            loop0:
            while(true)
            {
               §§push(this.§=d§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§=d§);
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().isCompleted);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§push(!§§pop());
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              loop5:
                              while(true)
                              {
                                 §§pop().§!S§();
                                 loop6:
                                 while(_loc2_)
                                 {
                                    ((§7?§.§4!H§ as §<e§).slingshot as §7!0§).§1e§();
                                    loop7:
                                    do
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue loop6;
                                       }
                                       this.§=d§ = null;
                                       while(true)
                                       {
                                          addr52:
                                          while(true)
                                          {
                                             super.deActivate();
                                             continue loop0;
                                          }
                                          addr44:
                                          if(_loc2_ || _loc1_)
                                          {
                                             this.§>!G§();
                                             addr51:
                                             if(!_loc1_)
                                             {
                                                continue loop7;
                                             }
                                             addr37:
                                             while(_loc2_ || this)
                                             {
                                                §§goto(addr44);
                                                §§goto(addr51);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(!_loc2_);
                                    
                                    if(_loc2_)
                                    {
                                       return;
                                       addr33:
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr122);
                        }
                        §§goto(addr52);
                     }
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      private function §8x§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§"!#§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(this.§[!R§ > §1o§)
                  {
                     while(true)
                     {
                        this.§"!#§ = true;
                        addr140:
                        while(true)
                        {
                           _loc1_ = Math.round(1000 / this.§[!R§ * this.§5!I§);
                           continue loop0;
                        }
                     }
                  }
                  addr133:
               }
               addr26:
               return;
            }
         }
         §§goto(addr140);
      }
      
      private function §3!R§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this);
            §§push(this.§[!R§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[!R§ = §§pop();
            if(!_loc4_)
            {
               addr34:
               if(this.§[!R§ > 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§5!I§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && this))
                     {
                        _loc2_.§5!I§ = _loc3_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §>!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§[!R§ = § S§;
         }
         do
         {
            this.§5!I§ = 0;
         }
         while(_loc1_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§&!!§ = null;
         if(_loc6_ || _loc2_)
         {
            §§push(this.§>!-§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §1!C§.§]o§(§3t§);
                     this.§>!-§ = false;
                     while(true)
                     {
                        addr327:
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        §§push(this.§=d§.isCompleted);
                        if(!_loc5_)
                        {
                           addr309:
                           §§push(!§§pop());
                           if(!_loc6_)
                           {
                              addr324:
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr327);
                              }
                              while(true)
                              {
                                 addr325:
                                 if(§§pop())
                                 {
                                    §§goto(addr326);
                                 }
                              }
                              addr326:
                              addr324:
                           }
                           if(§§pop())
                           {
                              addr315:
                              this.§=d§.§3J§();
                              addr313:
                           }
                           §§push(0);
                           if(_loc6_ || this)
                           {
                              return §§pop();
                           }
                           §§goto(addr426);
                        }
                        §§goto(addr324);
                     }
                  }
                  addr353:
               }
               while(true)
               {
                  §§push(§1!C§.§84§);
                  loop4:
                  for(; !§§pop(); if(_loc5_ && param1)
                  {
                     continue;
                  },if(§§pop())
                  {
                     if(_loc6_)
                     {
                        if(_loc6_ || param1)
                        {
                           §§push(§7?§.§4!H§);
                           if(!_loc5_)
                           {
                              §§goto(addr127);
                           }
                           addr360:
                           if((_loc4_ = ((§§pop() as §<e§).slingshot as §7!0§).§]!&§()) != null)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 this.§=d§ = _loc4_;
                              }
                           }
                           §§goto(addr381);
                        }
                        §§goto(addr353);
                     }
                     §§goto(addr411);
                  },§§goto(addr360),§§push(§7?§.§4!H§))
                  {
                     while(true)
                     {
                        §§push(this.§,!"§);
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    break loop4;
                                 }
                                 §7?§.§3J§();
                                 while(true)
                                 {
                                    addr250:
                                    addr258:
                                    while(true)
                                    {
                                       §§push(§7?§.isPaused);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr254:
                                             §§push(0);
                                             if(_loc6_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§=d§);
                                                loop13:
                                                while(!_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=d§);
                                                                     addr209:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§pop().play();
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§2!G§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr246:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr247:
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   §§push(this.§=d§);
                                                                                                   if(!(_loc6_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§push(§§pop().isPaused);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr196:
                                                                                                      while(!_loc5_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr306);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                       addr403:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             addr411:
                                                                                             §§push(0);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr414);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr415:
                                                                                             §§push(super.run(param1));
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          addr426:
                                                                                          var _loc2_:* = §§pop();
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(§§pop() != §&c§.STATE_STATUS_RUNNING)
                                                                                                {
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr473);
                                                                                                   }
                                                                                                   addr474:
                                                                                                }
                                                                                                addr449:
                                                                                                this.§3!R§(param1);
                                                                                                this.§[Z§();
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr447);
                                                                                                   }
                                                                                                   §§goto(addr474);
                                                                                                }
                                                                                                addr453:
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                             addr473:
                                                                                             return _loc2_;
                                                                                          }
                                                                                          addr447:
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr449);
                                                                                          }
                                                                                          var _loc3_:§0!@§ = §3t§.getItemByName("Button_LaunchCheetos") as §0!@§;
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr674:
                                                                                             §§push(§7?§.§4!H§.slingshot.mSlingShotState == §#K§.§-I§ && !this.§2!G§);
                                                                                             §§push(§7?§.§4!H§.slingshot.mSlingShotState == §#K§.§-I§ && !this.§2!G§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr657:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr660:
                                                                                                      §§push(§9!H§.credits);
                                                                                                      §§push(§>!<§);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         addr626:
                                                                                                         §§push(§§pop() >= §§pop());
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr639:
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr583:
                                                                                                                        addr647:
                                                                                                                        §§push((§7?§.§4!H§ as §<e§).§#n§());
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr596:
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                 {
                                                                                                                                    addr605:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr607:
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr609);
                                                                                                                                       }
                                                                                                                                       §§goto(addr681);
                                                                                                                                    }
                                                                                                                                    _loc3_.setComponentState(§&!3§.§#!$§);
                                                                                                                                    §§goto(addr579);
                                                                                                                                 }
                                                                                                                                 §§goto(addr657);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           §§goto(addr639);
                                                                                                                        }
                                                                                                                        §§goto(addr596);
                                                                                                                     }
                                                                                                                     §§goto(addr674);
                                                                                                                  }
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                               §§goto(addr674);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr680);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr674);
                                                                                                }
                                                                                                §§goto(addr605);
                                                                                             }
                                                                                             §§goto(addr674);
                                                                                          }
                                                                                          addr609:
                                                                                          _loc3_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                          addr613:
                                                                                          if(mNextState.length <= 0)
                                                                                          {
                                                                                             addr496:
                                                                                             §§push(§7?§.§4!H§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop().slingshot);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().mSlingShotState);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§#K§.§ !P§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 addr548:
                                                                                                                                 §§push(§7?§.§4!H§);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr553:
                                                                                                                                       §§push(§§pop().slingshot);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr674);
                                                                                                                                       }
                                                                                                                                       (§§pop() as §7!0§).§2Q§();
                                                                                                                                       addr490:
                                                                                                                                       return §&c§.STATE_STATUS_RUNNING;
                                                                                                                                       addr558:
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 §§goto(addr583);
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                           §§goto(addr647);
                                                                                                                        }
                                                                                                                        §§goto(addr613);
                                                                                                                     }
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr496);
                                                                                                                     }
                                                                                                                     §§goto(addr607);
                                                                                                                  }
                                                                                                                  addr579:
                                                                                                                  §§goto(addr613);
                                                                                                               }
                                                                                                               §§goto(addr558);
                                                                                                            }
                                                                                                            §§goto(addr490);
                                                                                                         }
                                                                                                         §§goto(addr660);
                                                                                                      }
                                                                                                      §§goto(addr674);
                                                                                                   }
                                                                                                   §§goto(addr660);
                                                                                                }
                                                                                                §§goto(addr553);
                                                                                             }
                                                                                             §§goto(addr548);
                                                                                          }
                                                                                          addr564:
                                                                                          return §&c§.STATE_STATUS_COMPLETED;
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                       addr148:
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr391:
                                                                                    §1!C§.§]o§(§3t§);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       addr401:
                                                                                       §§goto(addr403);
                                                                                       §§push(§7?§.isPaused);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  addr207:
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            addr205:
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                   }
                                                   §§goto(addr309);
                                                }
                                                addr323:
                                                §§goto(addr324);
                                             }
                                             addr236:
                                          }
                                          addr414:
                                          return §§pop();
                                          addr99:
                                          if(_loc6_ || param1)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr236);
                                 }
                              }
                              §§goto(addr391);
                           }
                           §§goto(addr250);
                        }
                     }
                  }
                  §§goto(addr323);
               }
            }
         }
         §§goto(addr266);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§7e§.§^"§);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:Object = §9!H§.§"B§(§7e§.§^"§);
         var _loc3_:int = §>_§.getScore();
         §§push(§7e§.§]!7§(_loc1_,_loc3_));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = new Date().time;
         if(_loc8_)
         {
            _loc2_.userId = §9!H§.§ o§.name;
            loop0:
            while(true)
            {
               _loc2_.levelId = _loc1_;
               loop1:
               while(true)
               {
                  _loc2_.score = _loc3_;
                  while(true)
                  {
                     _loc2_.stars = _loc4_;
                     addr124:
                     if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     }
                     this.callObject = {
                        "type":§>S§.§2I§,
                        "sessionID":_loc2_.sessionId,
                        "userID":_loc2_.userId,
                        "levelID":_loc2_.levelId,
                        "score":_loc2_.score,
                        "blocks":_loc2_.blocks,
                        "security":_loc2_.security,
                        "time":_loc2_.time,
                        "gameplay":_loc2_.gameplay,
                        "numberOfBirdsShot":_loc2_.numberOfBirdsShot,
                        "userLevelID":_loc2_.userLevelId
                     };
                     if(_loc8_)
                     {
                        addr88:
                        if(false)
                        {
                           loop10:
                           while(true)
                           {
                              _loc2_.security = §>S§.§ J§(_loc2_);
                              addr96:
                              while(true)
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          addr107:
                                          if(!(_loc8_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§goto(addr124);
                                       }
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          _loc2_.time = _loc5_ - this.§,!§;
                                       }
                                       addr166:
                                    }
                                    while(true)
                                    {
                                       _loc2_.sessionId = §>S§.§9J§();
                                       addr145:
                                       while(true)
                                       {
                                          _loc2_.userLevelId = §9!H§.userLevelId;
                                       }
                                    }
                                 }
                                 while(!_loc7_)
                                 {
                                    continue loop10;
                                 }
                                 §§goto(addr145);
                              }
                              addr176:
                              addr191:
                              addr198:
                              while(!(_loc7_ && _loc1_))
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §7?§.§4!H§.slingshot.§&!_§();
                                 §§goto(addr166);
                                 §§goto(addr107);
                              }
                              while(!_loc7_)
                              {
                                 _loc2_.gameplay = §7?§.§4!H§.§=8§().toString();
                                 §§goto(addr176);
                              }
                              while(true)
                              {
                                 _loc2_.blocks = §7@§.§1'§();
                                 §§goto(addr191);
                              }
                           }
                        }
                        var _loc6_:§>S§ = new §>S§(this.callObject,§#x§.§1P§,this,§>S§.§"!H§);
                        if(_loc8_ || this)
                        {
                           §'^§.§`0§(§"!L§.§6>§,§7e§.§^"§);
                        }
                        return;
                     }
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr198);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc4_)
                           {
                              §§push(null);
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[4] = §§pop();
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§§slot[5] = 0;
                                       while(!_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             §§pop().§§slot[1] = param1;
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc4_ && _loc2_)
                                             {
                                                break loop8;
                                             }
                                          }
                                          continue loop9;
                                          if(true)
                                          {
                                             try
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && this))
                                                {
                                                   §§pop().§§slot[2] = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop().§§slot[2].error)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc5_ || param1)
                                                               {
                                                                  var _loc3_:* = §§pop().§§slot[2].error.code;
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(§@D§ === _loc3_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr223:
                                                                           §§push(0);
                                                                           if(_loc4_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr230:
                                                                           §§push(1);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr243:
                                                                        if(!_loc4_)
                                                                        {
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 addr184:
                                                                                 §§push(§#x§.§=!!§);
                                                                                 §§push(§`L§.§9!P§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop().§3!3§(§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                       addr707:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr311:
                                                                                       §,!A§.§9!M§("levelComplete",§7e§.§^"§,true);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §9!H§.§64§(§7e§.§3N§());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             addr382:
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr707);
                                                                                       }
                                                                                       addr577:
                                                                                       §9!H§.credits = credits;
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr597:
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().§§slot[2] == null);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr863:
                                                                                                               §§push(Boolean(returnObject.spotPrize != null));
                                                                                                               if(Boolean(returnObject.spotPrize != null))
                                                                                                               {
                                                                                                                  addr867:
                                                                                                                  §§pop();
                                                                                                                  addr868:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr845:
                                                                                                                     §§push(Boolean(§§pop().§§slot[2].spotPrize));
                                                                                                                     §§push(Boolean(§§pop().§§slot[2].spotPrize));
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        addr852:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr853:
                                                                                                                           §§pop();
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr797:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr808:
                                                                                                                                 §§push(§§pop().§§slot[2].credits >= § r§);
                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr817:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr819:
                                                                                                                                          this.§7,§ = ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§0!L§();
                                                                                                                                          addr829:
                                                                                                                                          §§push(§1!C§.§84§);
                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                          {
                                                                                                                                             addr770:
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr779:
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§7,§);
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        addr732:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr741:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr743:
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr819);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr752:
                                                                                                                                                                                    §;s§.sCheetosPopups.showPopup(§0!U§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                                                                                                                                                                                    addr869:
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr691:
                                                                                                                                                                                    addr758:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr829);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr691);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr808);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr863);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr867);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr770);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr779);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr732);
                                                                                                                                                         addr794:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1025);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr853);
                                                                                                                                                }
                                                                                                                                                §§goto(addr741);
                                                                                                                                             }
                                                                                                                                             §§goto(addr845);
                                                                                                                                          }
                                                                                                                                          §§goto(addr863);
                                                                                                                                       }
                                                                                                                                       addr695:
                                                                                                                                       if(returnObject.credits < § r§)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(§§pop().§§slot[2].credits < § r§)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr682:
                                                                                                                                                      §#x§.§=!!§.§3!3§(§`L§.§9!P§);
                                                                                                                                                      §§goto(addr680);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr690);
                                                                                                                                                }
                                                                                                                                                §§goto(addr869);
                                                                                                                                             }
                                                                                                                                             §§goto(addr797);
                                                                                                                                          }
                                                                                                                                          §§goto(addr695);
                                                                                                                                       }
                                                                                                                                       §§goto(addr699);
                                                                                                                                    }
                                                                                                                                    §§goto(addr863);
                                                                                                                                 }
                                                                                                                                 §§goto(addr845);
                                                                                                                              }
                                                                                                                              §§goto(addr867);
                                                                                                                           }
                                                                                                                           §§goto(addr1021);
                                                                                                                        }
                                                                                                                        §§goto(addr817);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr863);
                                                                                                               }
                                                                                                               §§goto(addr845);
                                                                                                               addr637:
                                                                                                            }
                                                                                                            §§goto(addr699);
                                                                                                         }
                                                                                                         §§goto(addr853);
                                                                                                      }
                                                                                                      §§goto(addr863);
                                                                                                   }
                                                                                                   §§goto(addr852);
                                                                                                }
                                                                                                §§goto(addr732);
                                                                                             }
                                                                                             §§goto(addr863);
                                                                                          }
                                                                                          §§goto(addr845);
                                                                                          addr583:
                                                                                       }
                                                                                       §§goto(addr819);
                                                                                       addr356:
                                                                                    }
                                                                                    §§goto(addr869);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr474:
                                                                                    §§pop().§3!3§(§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr416:
                                                                                       §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr498:
                                                                                          break;
                                                                                          addr425:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr752);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr707);
                                                                                    }
                                                                                    §§goto(addr752);
                                                                                 }
                                                                              case 1:
                                                                                 §§push(§#x§.§=!!§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§`L§.§9!P§);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§pop().§3!3§(§§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr128:
                                                                                             §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Popup_Session_Expired"));
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr794);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr867);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr474);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr184);
                                                                                    }
                                                                                    §§goto(addr474);
                                                                                 }
                                                                                 addr680:
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr868);
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr707);
                                                                                                   }
                                                                                                   §§goto(addr869);
                                                                                                }
                                                                                                §§goto(addr743);
                                                                                             }
                                                                                             §§goto(addr758);
                                                                                          }
                                                                                          addr699:
                                                                                          ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§9g§();
                                                                                       }
                                                                                       §§goto(addr707);
                                                                                    }
                                                                                    addr1021:
                                                                                    super.onComplete(e);
                                                                                    addr690:
                                                                                 }
                                                                                 §§goto(addr1025);
                                                                              default:
                                                                                 §§push(this);
                                                                                 §§push(returnObject.error.message + " Code:");
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() + returnObject.error.code);
                                                                                 }
                                                                                 §§pop().§']§(§§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr262:
                                                                                    if(this.callObject.type != null)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          _loc3_ = this.callObject.type;
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             §§push(§>S§.§2I§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(§§pop() === _loc3_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr891:
                                                                                                      §§push(0);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr921:
                                                                                                      §§push(2);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr930:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         try
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop().§§slot[2].hasWonPrize)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     §9!H§.hasWonPrize = returnObject.hasWonPrize;
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        addr330:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           if(§§pop().§§slot[2].userPrizeId)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && this))
                                                                                                                              {
                                                                                                                                 §9!H§.userPrizeId = returnObject.userPrizeId;
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                                 §§goto(addr699);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(§§pop().§§slot[2].security)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr435:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!(_loc4_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr443:
                                                                                                                                             if(§§pop().§§slot[4].toUpperCase() == returnObject.security.toUpperCase())
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop().§§slot[2].credits < § r§)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§#x§.§=!!§);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§`L§.§9!P§);
                                                                                                                                                               if(!(_loc4_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr474);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr682);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr682);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr637);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§2!G§ = true;
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr414:
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr416);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr498);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr522:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop().§§slot[2].userLevelID)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §9!H§.userLevelId = returnObject.userLevelID;
                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr583);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr819);
                                                                                                                                                               }
                                                                                                                                                               try
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr808);
                                                                                                                                                               }
                                                                                                                                                               catch(e:Error)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = e;
                                                                                                                                                                  §§goto(addr597);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr845);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr808);
                                                                                                                                                            addr522:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr752);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr808);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr522);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr817);
                                                                                                                                       }
                                                                                                                                       §§goto(addr597);
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr497:
                                                                                                                              }
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §9!H§.userPrizeId = null;
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§>S§.§^g§(returnObject.userID,returnObject.credits,this.§,!4§));
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§§slot[4] = §§pop();
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr497);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr405:
                                                                                                                              }
                                                                                                                              §§goto(addr311);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr425);
                                                                                                                  }
                                                                                                                  §§goto(addr435);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §9!H§.hasWonPrize = false;
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr330);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr522);
                                                                                                            }
                                                                                                            §§goto(addr817);
                                                                                                         }
                                                                                                         catch(e:Error)
                                                                                                         {
                                                                                                            §']§(e);
                                                                                                         }
                                                                                                         §§goto(addr382);
                                                                                                      case 1:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§pop().§§slot[3] = §9!H§.§"B§(§7e§.§^"§);
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                            §§goto(addr577);
                                                                                                         }
                                                                                                         break;
                                                                                                      case 2:
                                                                                                         try
                                                                                                         {
                                                                                                            §,!A§.§9!M§("levelStart",§7e§.§^"§);
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               §§goto(addr522);
                                                                                                            }
                                                                                                            §§goto(addr699);
                                                                                                         }
                                                                                                         catch(e:Error)
                                                                                                         {
                                                                                                            _loc3_ = e;
                                                                                                            §']§(e);
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                   }
                                                                                                   §§pop().§§slot[5] = int(returnObject.credits as int);
                                                                                                   addr929:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr577);
                                                                                                   }
                                                                                                   §§goto(addr699);
                                                                                                   addr929:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§>S§.§[0§);
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      if(§§pop() === _loc3_)
                                                                                                      {
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr921);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr919:
                                                                                                         if(§>S§.§%!K§ === _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr921);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(3);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr929);
                                                                                                   }
                                                                                                   §§goto(addr919);
                                                                                                }
                                                                                                §§goto(addr921);
                                                                                             }
                                                                                             §§goto(addr919);
                                                                                          }
                                                                                          §§goto(addr891);
                                                                                          addr274:
                                                                                       }
                                                                                       §§goto(addr577);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr128);
                                                                                 }
                                                                                 addr254:
                                                                                 return;
                                                                                 §§goto(addr819);
                                                                           }
                                                                           this.§,!"§ = false;
                                                                           §§goto(addr1006);
                                                                        }
                                                                        §§goto(addr930);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(§%=§ === _loc3_)
                                                                        {
                                                                           §§goto(addr230);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(2);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr414);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr817);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr817);
                                             }
                                             catch(e:Error)
                                             {
                                                _loc3_ = e;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(callObject.type == null);
                                                   if(_loc5_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                      }
                                                      addr980:
                                                      §§pop();
                                                      if(_loc5_)
                                                      {
                                                         addr988:
                                                         if(callObject.type == §>S§.§%!K§)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§9g§();
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr980);
                                                      }
                                                   }
                                                   §§goto(addr988);
                                                }
                                             }
                                             addr1006:
                                             if(_loc5_)
                                             {
                                                §§goto(addr1021);
                                             }
                                          }
                                          continue loop8;
                                          addr1025:
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,!"§ = false;
            do
            {
               §#x§.§=!!§.§3!3§(§`L§.§9!P§);
               do
               {
                  §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
               }
               while(_loc3_);
               
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      private function §']§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §#x§.§=!!§.§3!3§(§`L§.§9!P§);
            do
            {
               §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function getVictoryState() : String
      {
         return § p§.§9!P§;
      }
      
      override public function getLoserState() : String
      {
         return §0!6§.§9!P§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc7_)
                           {
                              §§pop().§§slot[3] = param3;
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(_loc6_)
                                 {
                                    if(§§pop().§§slot[3] is §0!@§)
                                    {
                                       loop9:
                                       while(!_loc7_)
                                       {
                                          §§push(§§newactivation());
                                          loop10:
                                          for(; _loc6_; §§push(§§newactivation()),if(_loc7_ && this)
                                          {
                                             continue;
                                          },if(!_loc6_)
                                          {
                                             continue loop8;
                                          },§§goto(addr615))
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop().§§slot[1]);
                                             while(true)
                                             {
                                                §§push(§'n§.LISTENER_EVENT_MOUSE_DOWN);
                                                addr674:
                                                addr675:
                                                while(§§pop() != §§pop())
                                                {
                                                   continue loop10;
                                                }
                                                addr675:
                                                addr615:
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                §`e§.§`i§();
                                                if(!_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop().§§slot[1]);
                                                if(!(_loc6_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§'n§.LISTENER_EVENT_MOUSE_UP);
                                                if(!(_loc7_ && param1))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §`e§.§+z§();
                                                            addr646:
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr763:
                                                               var _loc5_:* = eventName;
                                                               if(!_loc7_)
                                                               {
                                                                  if("CLOSE_TUTORIAL" === _loc5_)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           §§goto(addr942);
                                                                        }
                                                                        §§goto(addr794);
                                                                     }
                                                                     §§goto(addr791);
                                                                  }
                                                                  if("PAUSE" === _loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr791:
                                                                        §§push(1);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr794:
                                                                        }
                                                                        §§goto(addr942);
                                                                     }
                                                                     addr875:
                                                                     §§push(7);
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        addr883:
                                                                     }
                                                                     §§goto(addr942);
                                                                  }
                                                                  if("RESTART_LEVEL" === _loc5_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           §§goto(addr942);
                                                                        }
                                                                        addr920:
                                                                        §§goto(addr942);
                                                                     }
                                                                     addr856:
                                                                     §§push(6);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§goto(addr942);
                                                                     }
                                                                     §§goto(addr920);
                                                                  }
                                                                  if("CONTINUE" === _loc5_)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc7_)
                                                                        {
                                                                        }
                                                                        §§goto(addr942);
                                                                     }
                                                                     §§goto(addr875);
                                                                  }
                                                                  if("LAUNCH_CHEETOS" === _loc5_)
                                                                  {
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        §§push(4);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr942);
                                                                        }
                                                                        §§goto(addr883);
                                                                     }
                                                                     §§goto(addr875);
                                                                  }
                                                                  if("ZOOM_IN" === _loc5_)
                                                                  {
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        §§push(5);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr942);
                                                                        }
                                                                        §§goto(addr920);
                                                                     }
                                                                     §§goto(addr856);
                                                                  }
                                                                  if("ZOOM_OUT" === _loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr856);
                                                                     }
                                                                     addr912:
                                                                     §§push(10);
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        §§goto(addr920);
                                                                     }
                                                                     §§goto(addr937);
                                                                  }
                                                                  if("BUTTON_NO" === _loc5_)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§goto(addr875);
                                                                     }
                                                                     addr924:
                                                                     §§push(11);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr937:
                                                                     }
                                                                     §§goto(addr942);
                                                                  }
                                                                  if("BUTTON_YES" === _loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr889:
                                                                        §§push(8);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr942);
                                                                        }
                                                                        §§goto(addr875);
                                                                     }
                                                                     §§goto(addr898);
                                                                  }
                                                                  if("CHECKBOX_CHANGE" === _loc5_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr898:
                                                                        §§push(9);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§goto(addr875);
                                                                        }
                                                                        §§goto(addr942);
                                                                     }
                                                                     §§goto(addr912);
                                                                  }
                                                                  if("CREDIT_REDEEM" === _loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr912);
                                                                     }
                                                                     §§goto(addr924);
                                                                  }
                                                                  if("CONFIRM_LEAVE" === _loc5_)
                                                                  {
                                                                     §§goto(addr924);
                                                                  }
                                                                  addr942:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 9:
                                                                        addr283:
                                                                        var checkBoxComponent:§&!3§ = component as §&!3§;
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(§;s§.sCheetosPopups.getCurrentPopupName() != §0!U§.§6!5§)
                                                                                 {
                                                                                    addr169:
                                                                                    §§push(§#x§.§=!!§);
                                                                                    §§push(§#x§.§=!!§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().§9!E§);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr179:
                                                                                             §§push(!§§pop());
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                §§pop().§9!E§ = §§pop();
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         addr78:
                                                                                                         §§push(§#x§.§=!!§);
                                                                                                         if(!(_loc7_ && param2))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop().§9!E§);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(_loc6_ || param3)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc7_ && param3))
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                    {
                                                                                                                                       addr127:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc7_ && param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr283);
                                                                                                                                       }
                                                                                                                                       addr135:
                                                                                                                                       §§push(§§pop().§§slot[4]);
                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                       {
                                                                                                                                          addr144:
                                                                                                                                          §§push(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             §§pop().setComponentState(§§pop());
                                                                                                                                             addr152:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc7_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr704:
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   sCheetosPopups.hidePopup();
                                                                                                                                                   addr360:
                                                                                                                                                   addr374:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr315:
                                                                                                                                                   if(_loc6_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         this.navigationConfirmed();
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr279:
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr574:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr562:
                                                                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr579:
                                                                                                                                                                  if(this.§7,§)
                                                                                                                                                                  {
                                                                                                                                                                     addr581:
                                                                                                                                                                     §;s§.sCheetosPopups.showPopup(§0!U§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                                                                                                                                                                     this.§7,§ = false;
                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                     addr587:
                                                                                                                                                                  }
                                                                                                                                                                  addr595:
                                                                                                                                                               }
                                                                                                                                                               addr555:
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr457:
                                                                                                                                                            break;
                                                                                                                                                            addr479:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr711:
                                                                                                                                                            sCheetosPopups.hidePopup();
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr720:
                                                                                                                                                               break;
                                                                                                                                                               addr720:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr745:
                                                                                                                                                               break;
                                                                                                                                                               addr745:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr587);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr356:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr279);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr244:
                                                                                                                                                checkBoxComponent.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                if(!(_loc7_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr164:
                                                                                                                                                      §§goto(addr704);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr361:
                                                                                                                                                      break;
                                                                                                                                                      addr449:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr745);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr213:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§pop().setComponentState(§§pop());
                                                                                                                                                addr216:
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr591:
                                                                                                                                                   §§push(!§1!C§.§84§);
                                                                                                                                                   if(!§1!C§.§84§)
                                                                                                                                                   {
                                                                                                                                                      addr594:
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr595);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr579);
                                                                                                                                                   addr601:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr244);
                                                                                                                                             }
                                                                                                                                             §§goto(addr164);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr211:
                                                                                                                                          §§push(§&!3§.§;2§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr213);
                                                                                                                                    }
                                                                                                                                    §§goto(addr360);
                                                                                                                                 }
                                                                                                                                 §§goto(addr216);
                                                                                                                              }
                                                                                                                              §§goto(addr720);
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ && param3))
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§&!3§.§;2§);
                                                                                                                                          if(_loc6_ || param3)
                                                                                                                                          {
                                                                                                                                             §§pop().setComponentState(§§pop());
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr78);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                         addr416:
                                                                                                                                                         if(!(_loc7_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr361);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                            addr463:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr354:
                                                                                                                                                      this.§ A§();
                                                                                                                                                      §§goto(addr356);
                                                                                                                                                   }
                                                                                                                                                   addr271:
                                                                                                                                                   if(_loc6_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr222:
                                                                                                                                                      §§push(§#x§.§=!!§);
                                                                                                                                                      if(!(_loc6_ || param2))
                                                                                                                                                      {
                                                                                                                                                         addr270:
                                                                                                                                                         §§pop().§]s§ = !§#x§.§=!!§.§]s§;
                                                                                                                                                         §§goto(addr271);
                                                                                                                                                      }
                                                                                                                                                      addr230:
                                                                                                                                                      §§push(§§pop().§]s§);
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr208:
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr211);
                                                                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr244);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr244);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr594);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr579);
                                                                                                                                                   }
                                                                                                                                                   addr497:
                                                                                                                                                   this.§'s§();
                                                                                                                                                   if(!(_loc7_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr464:
                                                                                                                                                      §§goto(addr457);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr152);
                                                                                                                                             }
                                                                                                                                             §§goto(addr745);
                                                                                                                                          }
                                                                                                                                          §§goto(addr144);
                                                                                                                                       }
                                                                                                                                       §§goto(addr244);
                                                                                                                                    }
                                                                                                                                    §§goto(addr135);
                                                                                                                                 }
                                                                                                                                 §§goto(addr208);
                                                                                                                              }
                                                                                                                              §§goto(addr127);
                                                                                                                           }
                                                                                                                           §§goto(addr763);
                                                                                                                        }
                                                                                                                        §§goto(addr591);
                                                                                                                     }
                                                                                                                     addr527:
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && param3))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr537:
                                                                                                                              if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       this.§ A§();
                                                                                                                                       addr554:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr581);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr720);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§ A§();
                                                                                                                              addr518:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr591);
                                                                                                                        §§goto(addr555);
                                                                                                                     }
                                                                                                                     §§goto(addr579);
                                                                                                                  }
                                                                                                                  addr490:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr491:
                                                                                                                     if(!§;s§.sCheetosPopups.showPopup(§0!U§.§6!5§))
                                                                                                                     {
                                                                                                                        §§goto(addr497);
                                                                                                                     }
                                                                                                                     §§goto(addr464);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§'s§();
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr230);
                                                                                                            }
                                                                                                            §§goto(addr222);
                                                                                                         }
                                                                                                         §§goto(addr169);
                                                                                                      }
                                                                                                      addr384:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         sCheetosPopups.hidePopup();
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         break;
                                                                                                         addr512:
                                                                                                      }
                                                                                                   }
                                                                                                   if(!(_loc7_ && param3))
                                                                                                   {
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         §§goto(addr361);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr554);
                                                                                                }
                                                                                                §§goto(addr711);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr270);
                                                                                       }
                                                                                       §§goto(addr179);
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr270);
                                                                                    §§push(§#x§.§=!!§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr720);
                                                                                 }
                                                                              }
                                                                              break;
                                                                              addr456:
                                                                           }
                                                                           addr433:
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 sCheetosPopups.hidePopup();
                                                                                 §§goto(addr449);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr518);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr491);
                                                                           }
                                                                        }
                                                                        §§goto(addr720);
                                                                     case 1:
                                                                        mNextState = §>d§.§9!P§;
                                                                        §§goto(addr562);
                                                                     case 0:
                                                                        §1!C§.§9!!§();
                                                                        §§goto(addr601);
                                                                     case 2:
                                                                        addr524:
                                                                        §§goto(addr527);
                                                                     case 3:
                                                                        sCheetosPopups.hidePopup();
                                                                        §§goto(addr512);
                                                                     case 4:
                                                                        §§push((§7?§.§4!H§ as §<e§).§#n§());
                                                                        §§push(§7?§.§4!H§);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr490);
                                                                           §§push((§§pop() as §<e§).§#n§());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr524);
                                                                        }
                                                                        break;
                                                                     case 5:
                                                                        §>_§.doUserZoom(true);
                                                                        §§goto(addr463);
                                                                     case 6:
                                                                        §>_§.doUserZoom(false);
                                                                        §§goto(addr456);
                                                                     case 7:
                                                                        if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§6!5§)
                                                                        {
                                                                           §§goto(addr433);
                                                                        }
                                                                        else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              sCheetosPopups.hidePopup();
                                                                           }
                                                                           §§goto(addr416);
                                                                        }
                                                                        else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.CONFIRM_LEAVE)
                                                                        {
                                                                           §§goto(addr384);
                                                                        }
                                                                        §§goto(addr361);
                                                                     case 8:
                                                                        if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§6!5§)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              this.§'s§();
                                                                              §§goto(addr374);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                                                                        {
                                                                           §§goto(addr354);
                                                                        }
                                                                        else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.CONFIRM_LEAVE)
                                                                        {
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr279);
                                                                     default:
                                                                        break;
                                                                     case 10:
                                                                        try
                                                                        {
                                                                           §,!A§.§9!M§("addCredits");
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr711);
                                                                           }
                                                                           §§goto(addr720);
                                                                        }
                                                                        catch(e:Error)
                                                                        {
                                                                        }
                                                                        §§goto(addr720);
                                                                     case 11:
                                                                        try
                                                                        {
                                                                           this.navigationConfirmed();
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§goto(addr745);
                                                                           }
                                                                           break;
                                                                        }
                                                                        catch(e:Error)
                                                                        {
                                                                        }
                                                                        §§goto(addr745);
                                                                  }
                                                                  return;
                                                                  §§push(12);
                                                               }
                                                               §§goto(addr889);
                                                               addr596:
                                                            }
                                                            §§goto(addr596);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr675);
                                                         }
                                                      }
                                                      §§goto(addr646);
                                                   }
                                                   §§goto(addr763);
                                                }
                                                else
                                                {
                                                   §§goto(addr674);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr763);
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §'s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2!G§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr92:
                     if(!(§7?§.§4!H§ as §<e§).§#n§())
                     {
                        this.§2!G§ = true;
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc2_ && this))
                           {
                              addr19:
                              return;
                              addr53:
                           }
                           else
                           {
                              loop0:
                              while(true)
                              {
                                 this.§5!6§();
                                 addr93:
                                 while(true)
                                 {
                                    §7?§.§3J§();
                                    continue loop0;
                                 }
                              }
                              §§goto(addr19);
                              addr64:
                              addr95:
                           }
                           §§goto(addr19);
                        }
                        while(true)
                        {
                           if(_loc2_ && this)
                           {
                              §§goto(addr93);
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr95);
               }
               §§goto(addr19);
            }
            §§goto(addr92);
         }
         §§goto(addr53);
      }
      
      private function § A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!X§.§]!J§();
         }
         do
         {
            mNextState = §[!X§.§9!P§;
         }
         while(_loc2_);
         
      }
      
      private function §[Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §>_§.getScore();
         if(!_loc3_)
         {
            §3t§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         §§push(§#x§.§[Y§.§`>§(§7e§.§^"§));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §3t§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      private function §6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,!"§ = true;
            while(true)
            {
               this.callObject = {
                  "type":§>S§.§%!K§,
                  "sessionID":§>S§.§9J§(),
                  "userID":§9!H§.§ o§.name,
                  "levelId":§7e§.§^"§
               };
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     new §>S§(this.callObject,§#x§.§%!K§,this,§>S§.§"!H§);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §5!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,!4§ = new Date().time;
            while(true)
            {
               this.callObject = {
                  "type":§>S§.§[0§,
                  "sessionID":§>S§.§9J§(),
                  "userID":§9!H§.§ o§.name,
                  "purchaseTime":this.§,!4§
               };
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     new §>S§(this.callObject,§#x§.§[0§,this,§>S§.§"!H§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §?<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_LaunchCheetos") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc3_ || _loc3_)
         {
            _loc1_.setComponentState(§&!3§.§#!$§);
            while(true)
            {
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.visible = true;
                     break;
                  }
                  break;
               }
               _loc2_.visible = false;
               if(!_loc3_)
               {
                  break;
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr38);
            }
         }
         addr38:
      }
   }
}
