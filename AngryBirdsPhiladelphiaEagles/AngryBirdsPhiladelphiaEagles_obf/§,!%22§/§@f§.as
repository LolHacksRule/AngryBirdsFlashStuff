package §,!"§
{
   import §"U§.§^'§;
   import §#r§.§&4§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §5Z§.§[Z§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §]p§.§9!,§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §@f§ extends §'!#§
   {
      
      public static const §0!,§:Array;
      
      public static const §-k§:Array;
      
      public static const §9!J§:Array;
      
      private static const §;!K§:Number = 1;
      
      public static const §-A§:String = "LevelSelectionState";
      
      private static const §3!J§:Number = 0.5;
      
      private static const §"!>§:Number = 1.5;
      
      private static const §,3§:Number = 0.1;
      
      private static const §[p§:Number = 0.8;
      
      private static const §80§:Number = 5;
      
      private static var §@!6§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!,§ = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
            loop0:
            while(true)
            {
               §-k§ = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
               §9!J§ = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
               while(true)
               {
                  §;!K§ = 1;
                  while(true)
                  {
                     §-A§ = "LevelSelectionState";
                     while(!_loc2_)
                     {
                        continue loop0;
                        if(!(_loc2_ && §@f§))
                        {
                           return;
                           addr53:
                        }
                     }
                  }
                  addr75:
                  loop4:
                  while(true)
                  {
                     §,3§ = 0.1;
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr70:
                     while(true)
                     {
                        §[p§ = 0.8;
                        do
                        {
                           §80§ = 5;
                           §@!6§ = 0;
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(!(_loc1_ || §@f§))
                        {
                           continue loop4;
                        }
                        §§goto(addr46);
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §"!%§:§[!9§;
      
      private var §&j§:§[!9§;
      
      private var § try§:uint;
      
      private var §21§:§[!9§;
      
      private var §5`§:Vector.<§[!9§>;
      
      private var static:Vector.<§^'§>;
      
      private var §9!-§:§&4§;
      
      private var §?!+§:Vector.<GlowFilter> = null;
      
      private var §#!E§:Vector.<§[!9§> = null;
      
      private var §4&§:int = 0;
      
      private var §&b§:int = 8;
      
      private var § 1§:int = 2;
      
      private var §,Z§:Number = 1;
      
      private var §?!<§:int = 0;
      
      private var §%!6§:int = 0;
      
      private var §,8§:int = 0;
      
      protected var §,%§:Boolean = false;
      
      protected var §;;§:§[!9§ = null;
      
      private var §9!B§:int = -1;
      
      public function §@f§(param1:Boolean, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:XML = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:§^'§ = null;
         if(!_loc11_)
         {
            super.init();
         }
         while(true)
         {
            while(true)
            {
               §0q§ = new §`o§(this);
               do
               {
                  §0q§.init(§`Z§.§5c§.Views.View_LevelSelection[0]);
               }
               while(_loc11_);
               
               if(_loc11_ && _loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:* = 0;
               loop3:
               while(true)
               {
                  if(_loc1_ >= 16)
                  {
                     if(!(_loc11_ && this))
                     {
                        if(!(_loc10_ || this))
                        {
                           continue;
                        }
                        this.§?!+§ = new Vector.<GlowFilter>(16,true);
                     }
                     while(true)
                     {
                        while(true)
                        {
                           this.§#!E§ = new Vector.<§[!9§>(16,true);
                           do
                           {
                              this.static = new Vector.<§^'§>();
                           }
                           while(_loc11_);
                           
                           if(!(_loc10_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc11_ && _loc2_)
                           {
                              addr130:
                              _loc1_++;
                              continue loop3;
                              addr196:
                           }
                           if(false)
                           {
                              continue;
                           }
                           _loc2_ = <Container/>;
                           if(!(_loc11_ && _loc3_))
                           {
                              _loc2_.@name = "Container_LevelSelection_Empty";
                              _loc2_.@fromLibrary = "false";
                              addr370:
                              if(_loc11_ && _loc2_)
                              {
                                 §§goto(addr370);
                              }
                              _loc2_.@visible = "true";
                              _loc2_.@scaleH = "true";
                              addr342:
                              if(!(_loc11_ && this))
                              {
                                 _loc2_.@scaleV = "true";
                                 this.§9!-§ = new §&4§(_loc2_,§0q§.container,null,null);
                                 addr294:
                                 §0q§.container.addComponent(this.§9!-§);
                                 addr337:
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    if(!(_loc11_ && this))
                                    {
                                       if(_loc10_ || this)
                                       {
                                          this.§9!B§ = §9!,§.§>o§.§+d§();
                                          addr292:
                                          if(false)
                                          {
                                             §§goto(addr294);
                                          }
                                          var _loc3_:int = 0;
                                          var _loc4_:int = 0;
                                          addr537:
                                          §§push(_loc4_);
                                          if(_loc10_)
                                          {
                                             addr540:
                                             §§push(2);
                                             if(_loc10_ || this)
                                             {
                                                addr548:
                                                if(§§pop() < §§pop())
                                                {
                                                   addr410:
                                                   §§push(_loc4_);
                                                   §§push(AngryBirdsCustomCanvas.§-p§);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_ || _loc1_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc7_ = §§pop();
                                                      addr394:
                                                      §§push(0);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            addr560:
                                                            addr561:
                                                            addr562:
                                                            if(_loc1_ >= 2)
                                                            {
                                                               _loc4_++;
                                                               §§goto(addr537);
                                                            }
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr394);
                                                                     }
                                                                     addr488:
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(4);
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              _loc1_++;
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 addr503:
                                                                                 §§goto(addr560);
                                                                              }
                                                                              §0q§.getItemByName("Button_Next_Left").mClip.alpha = 0;
                                                                              §0q§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
                                                                              addr559:
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr559);
                                                                              }
                                                                              return;
                                                                              addr517:
                                                                           }
                                                                           §§push(_loc9_ = this.§3!F§(_loc3_));
                                                                           §§push(125 + _loc8_ * 108);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() + _loc7_);
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              _loc9_.y = 95 + _loc1_ * 125;
                                                                              this.§9!-§.addComponent(_loc9_);
                                                                              addr469:
                                                                              _loc3_++;
                                                                              addr479:
                                                                              if(_loc10_)
                                                                              {
                                                                                 _loc8_++;
                                                                                 if(_loc10_ || _loc1_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr469);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr479);
                                                                                 }
                                                                                 §§goto(addr469);
                                                                                 addr473:
                                                                              }
                                                                              addr487:
                                                                              §§goto(addr487);
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        §§goto(addr548);
                                                                     }
                                                                     §§goto(addr540);
                                                                  }
                                                                  §§goto(addr517);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr561);
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                   §§goto(addr548);
                                                }
                                                this.§5`§ = new Vector.<§[!9§>(this.static.length,true);
                                                §§goto(addr559);
                                             }
                                             §§goto(addr562);
                                          }
                                          §§goto(addr560);
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr337);
                                 }
                                 addr332:
                                 §§goto(addr332);
                              }
                              addr354:
                              §§goto(addr354);
                           }
                           §§goto(addr292);
                        }
                     }
                  }
                  else
                  {
                     §§push(§!D§);
                     §§push(§!D§.§6+§ + "1-");
                     if(!(_loc11_ && _loc1_))
                     {
                        §§push(§§pop() + (_loc1_ + 1));
                     }
                     §§push(§§pop().§;2§(§§pop()));
                     loop4:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        §§push(§!D§);
                        §§push(§!D§.§5!%§ + "1-");
                        if(!_loc11_)
                        {
                           §§push(§§pop() + (_loc1_ + 1));
                        }
                        §§push(§§pop().§;2§(§§pop()));
                        while(true)
                        {
                           §§push(_loc6_ = §§pop());
                           continue loop4;
                           addr137:
                           if(!(_loc10_ || _loc3_))
                           {
                              continue;
                           }
                           addr144:
                           §§push(null);
                           if(_loc10_ || _loc1_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(AngryBirdsFP11.§`I§);
                                 if(_loc10_)
                                 {
                                    §§push("1-");
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr172:
                                          §§push(_loc1_);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             §§push(1);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr236:
                                                      while(true)
                                                      {
                                                         §§pop().§6y§(§§pop(),int(_loc6_));
                                                         addr133:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc11_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                   }
                                                   addr235:
                                                }
                                                addr192:
                                                §§pop().§,!0§(§§pop() + §§pop(),int(_loc5_));
                                                §§goto(addr196);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr235);
                                             }
                                             addr234:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr234);
                                             §§goto(addr172);
                                          }
                                          addr233:
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr192);
                                 }
                                 while(true)
                                 {
                                    §§push("1-");
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§goto(addr233);
                                       §§push(_loc1_);
                                    }
                                    §§goto(addr236);
                                 }
                                 addr224:
                              }
                              §§goto(addr130);
                           }
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§goto(addr224);
                                 §§push(AngryBirdsFP11.§`I§);
                              }
                              §§goto(addr133);
                              §§goto(addr144);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_loc9_ || this)
         {
            super.activate();
            while(true)
            {
               §§push(§[Z§.§%m§);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     addr72:
                     §[Z§.§%m§.start();
                  }
                  §§push(§#! §.§`'§);
                  loop1:
                  while(true)
                  {
                     §§pop().§^!6§(false);
                     if(_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr63);
      }
      
      private function § x§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MovieClip = null;
         if(_loc3_)
         {
            if(this.§,8§ == 0)
            {
               §§goto(addr25);
            }
            else
            {
               _loc1_ = §0q§.getItemByName("Button_Next_Left").mClip;
               if(_loc3_ || _loc2_)
               {
                  this.§21§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180},null,§[p§ / 8,§3C§.§5t§));
               }
            }
            §§goto(addr299);
         }
         addr25:
         _loc1_ = §0q§.getItemByName("Button_Next_Right").mClip;
         if(_loc3_)
         {
            this.§21§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":0},null,§[p§ / 8,§3C§.§5t§));
            if(_loc3_ || _loc2_)
            {
               addr299:
               clearInterval(this.§ try§);
            }
         }
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         if(!_loc4_)
         {
            this.§ try§ = setInterval(this.§ x§,_loc2_);
            do
            {
               this.§21§.play();
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      private function §`!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         loop0:
         while(_loc1_ < this.§?!+§.length)
         {
            this.§?!+§[_loc1_ - 1] = null;
            if(_loc3_)
            {
               break;
            }
            _loc2_ = §0q§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            if(_loc4_)
            {
               _loc2_.TextField_Date.filters = [];
               loop1:
               while(true)
               {
                  if(this.§#!E§[_loc1_ - 1] is §[!9§)
                  {
                     addr107:
                     while(true)
                     {
                        (this.§#!E§[_loc1_ - 1] as §[!9§).set();
                        addr115:
                        while(true)
                        {
                        }
                     }
                     addr107:
                  }
                  addr64:
                  while(true)
                  {
                     this.§#!E§[_loc1_ - 1] = null;
                     addr71:
                     while(!(_loc3_ && _loc1_))
                     {
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr115);
                  }
                  continue loop0;
               }
            }
            §§goto(addr107);
         }
      }
      
      private function §"3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§?!+§[_loc1_ - 1] != null)
            {
               if(_loc3_)
               {
                  break;
               }
               _loc2_ = §0q§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               if(!_loc3_)
               {
                  _loc2_.TextField_Date.filters = [this.§?!+§[_loc1_ - 1]];
               }
            }
            _loc1_++;
            if(!(_loc4_ || this))
            {
               break;
            }
         }
      }
      
      private function §class§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = §0q§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(!_loc4_)
         {
            §§push(this.§#!E§[param1 - 1] is §[!9§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr52:
                     if((this.§#!E§[param1 - 1] as §[!9§).isCompleted == false)
                     {
                        if(_loc5_)
                        {
                           return;
                        }
                        var _loc3_:§[!9§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":4},{"strength":0},§"!>§ / 4,§3C§.§,k§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":0},{"strength":4},§"!>§ / 4,§3C§.§!p§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":4},{"strength":0},§"!>§ / 4,§3C§.§,k§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":0},{"strength":4},§"!>§ / 4,§3C§.§!p§));
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr88);
               }
               if(this.§?!+§[param1 - 1] == null)
               {
                  if(_loc5_)
                  {
                     this.§?!+§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr52);
         }
         addr88:
         if(!(_loc4_ && this))
         {
            _loc3_.play();
            do
            {
               this.§#!E§[param1 - 1] = _loc3_;
            }
            while(_loc4_);
            
         }
      }
      
      private function §;X§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.static[param1].mClip;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.Button_IconBackground.gotoAndStop("locked");
            loop0:
            do
            {
               _loc2_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
               while(true)
               {
                  _loc2_.TextField_Date.text.text = §9!J§[param1];
                  while(_loc3_ || _loc3_)
                  {
                     _loc2_.useHandCursor = false;
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
         }
      }
      
      private function §[8§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = this.static[param1].mClip;
         var _loc3_:* = §0q§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
            while(true)
            {
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            _loc2_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
            do
            {
               _loc2_.TextField_Date.text.text = "";
            }
            while(!_loc5_);
            
            _loc2_.useHandCursor = true;
            _loc2_.alpha = 1;
            if(_loc5_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      protected function §[!%§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §@!6§ = param1;
         loop0:
         while(true)
         {
            §§push(this.§,%§);
            if(!(_loc8_ && param1))
            {
               if(§§pop())
               {
                  §§push(false);
                  break;
               }
               this.§,%§ = true;
               do
               {
                  this.§`!4§();
               }
               while(_loc8_);
               
               §§push(param1);
               §§push(this.§ 1§);
               if(!(_loc8_ && this))
               {
                  if(§§pop() <= §§pop() - 1)
                  {
                     §§push(param1);
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc9_)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§push(0);
                                 if(_loc9_ || param2)
                                 {
                                    param1 = §§pop();
                                    addr102:
                                    do
                                    {
                                       this.§?!<§ = param1;
                                    }
                                    while(_loc8_ && param3);
                                    
                                    while(true)
                                    {
                                       §§push(this.§?!<§);
                                       §§push(this.§,8§);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_ || param1)
                                    {
                                       §§push(this.§,Z§);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_ || this)
                                          {
                                             addr189:
                                             §§push(Number(§§pop()));
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr189);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc9_ || param2)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(_loc4_);
                                       if(_loc9_ || param1)
                                       {
                                          §§push(§§pop() + this.§9!-§.x * this.§,Z§);
                                          if(_loc9_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc6_:* = §§pop();
                                       var _loc7_:*;
                                       §§push(_loc7_ = Number(Math.abs(_loc6_)));
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() / 1024);
                                          if(_loc9_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc8_ && param1))
                                                {
                                                   _loc7_ = §§pop();
                                                   addr283:
                                                   addr282:
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      addr273:
                                                      §§push(§3!J§);
                                                   }
                                                   _loc7_ = Number(§§pop());
                                                   addr406:
                                                   if(this.§;;§ != null)
                                                   {
                                                      addr410:
                                                      this.§;;§.stop();
                                                      addr408:
                                                   }
                                                   if(param2)
                                                   {
                                                      if(_loc9_ || param3)
                                                      {
                                                         this.§9!-§.x = _loc5_;
                                                      }
                                                      this.§,8§ = param1;
                                                      addr332:
                                                      addr388:
                                                      if(param3)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            this.§#%§();
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               addr317:
                                                               §§push(param2);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     this.§>Z§();
                                                                     addr327:
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr285:
                                                                        §§push(true);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§goto(addr332);
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  §§push(this.§;;§);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§pop().play();
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  addr348:
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§pop().onComplete = this.§>Z§;
                                                                        §§goto(addr332);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr348);
                                                         §§push(this.§;;§);
                                                         addr383:
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   this.§;;§ = §3C§.§>o§.§<t§(this.§9!-§,{"x":_loc5_},null,§;!K§,§3C§.§,k§);
                                                   §§goto(addr383);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc9_ || param1)
                                                {
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr189);
                                    addr66:
                                    addr37:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       param1 = §§pop();
                                    }
                                    addr127:
                                 }
                                 while(_loc9_)
                                 {
                                    §§goto(addr66);
                                 }
                                 continue loop0;
                              }
                              addr116:
                              while(true)
                              {
                                 §§push(this.§ 1§ - 1);
                                 if(_loc9_ || param2)
                                 {
                                    §§goto(addr127);
                                    §§push(int(§§pop()));
                                 }
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr102);
            }
            break;
         }
         return §§pop();
      }
      
      private function §`!4§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§^'§ = §0q§.getItemByName("Button_Sound") as §^'§;
         var _loc2_:§^'§ = §0q§.getItemByName("Button_Credits") as §^'§;
         var _loc3_:§^'§ = §0q§.getItemByName("MovieClip_SoundsOff") as §^'§;
         if(!(_loc7_ && _loc1_))
         {
            _loc1_.setVisibility(!_loc1_.visible);
            if(!(_loc7_ && _loc3_))
            {
               addr56:
               _loc2_.setVisibility(!_loc2_.visible);
            }
            var _loc4_:Boolean = _loc3_.visible;
            §§push(AngryBirdsFP11.§5e§());
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc1_.visible)
            {
               §§push(!_loc5_);
               §§push(!_loc5_);
               while(true)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(!_loc4_);
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc3_.setVisibility(true);
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              addr156:
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 addr160:
                                 §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop2;
                                       }
                                       if(!(_loc6_ || _loc1_))
                                       {
                                          break loop2;
                                       }
                                       addr131:
                                       addr131:
                                       continue loop2;
                                    }
                                 }
                                 return;
                                 addr86:
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr86);
                  }
               }
            }
            else
            {
               _loc3_.setVisibility(false);
               if(_loc7_ && this)
               {
                  §§goto(addr131);
               }
               §§goto(addr160);
            }
            §§goto(addr131);
         }
         §§goto(addr56);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.keyUp(param1);
            while(!§!D§.§^!E§)
            {
               if(_loc3_ || this)
               {
                  return;
               }
               if(!_loc4_)
               {
                  addr82:
                  break;
               }
            }
            loop1:
            while(true)
            {
               var _loc2_:* = param1.keyCode;
               if(!_loc4_)
               {
                  if(Keyboard.M === _loc2_)
                  {
                     addr109:
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  loop2:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this.§,8§);
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(§§pop() == 0)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§[!%§(1,false);
                                 addr97:
                                 break loop2;
                                 addr67:
                              }
                              break loop2;
                           }
                           this.§[!%§(0,false);
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 §§goto(addr67);
                              }
                              §§goto(addr97);
                           }
                           break loop2;
                           §§goto(addr97);
                     }
                  }
                  return;
               }
               §§goto(addr109);
            }
         }
         §§goto(addr82);
      }
      
      protected function §0<§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(2);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(Number(this.§9!-§.x + _loc1_ * AngryBirdsCustomCanvas.§-p§ * this.§,Z§));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc6_ || _loc3_))
                        {
                           break;
                        }
                        §§push(Number(Math.abs(_loc2_)));
                        loop4:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr99:
                              while(true)
                              {
                                 addr80:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc7_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§push(8);
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc3_);
                                          while(_loc6_)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§push(_loc1_);
                                                   §§push(1);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             _loc5_ = this.static[_loc4_].mClip;
                                             §§push(_loc2_);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() > 1000)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1000);
                                                      addr220:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr221:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                         }
                                                      }
                                                      addr172:
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      this.§;X§(_loc4_);
                                                      while(true)
                                                      {
                                                         addr148:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            _loc3_++;
                                                            if(_loc7_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() <= this.§9!B§)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc5_.alpha <= 0.5)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                                   {
                                                      _loc5_.alpha = 1 - _loc2_ / 1000;
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr148);
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                          continue loop5;
                                          if(!(_loc7_ && this))
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ || _loc1_))
                        {
                           continue;
                        }
                        §§push(int(§§pop()));
                        if(_loc7_ && this)
                        {
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        if(_loc6_)
                        {
                           if(false)
                           {
                              §§goto(addr80);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr99);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      protected function §>Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§`!4§();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§,%§ = false;
               while(_loc4_)
               {
                  this.§,8§ = this.§%!6§;
                  if(!_loc3_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc1_:MovieClip = §0q§.getItemByName("Button_Next_Left").mClip;
            var _loc2_:MovieClip = §0q§.getItemByName("Button_Next_Right").mClip;
            if(_loc4_)
            {
               if(this.§,8§ != 1)
               {
                  this.§&j§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§,3§);
                  §§push(this.§&j§);
                  do
                  {
                     §§pop().onComplete = this.§?!8§;
                     §§push(this.§&j§);
                  }
                  while(_loc3_);
                  
                  §§pop().play();
                  if(_loc4_ || this)
                  {
                     _loc2_.mouseEnabled = true;
                     if(!(_loc4_ || _loc2_))
                     {
                        loop4:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.mouseEnabled = true;
                              while(_loc3_ && _loc2_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§"!%§);
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop4;
                                    }
                                    addr163:
                                    while(true)
                                    {
                                       §§pop().onComplete = this.§5=§;
                                       continue loop7;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr54:
                              return;
                              addr123:
                           }
                           else
                           {
                              addr171:
                           }
                           while(true)
                           {
                              this.§"!%§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§,3§);
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr171);
         }
      }
      
      private function §3!F§(param1:int) : §^'§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:XML = null;
         var _loc2_:Class = §[!D§.§8!N§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         if(_loc6_ || param1)
         {
            _loc3_.Button_IconBackground.gotoAndStop(0);
            if(_loc6_)
            {
               _loc3_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
            }
         }
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         do
         {
            _loc4_.@MouseUp = "LevelSelection" + param1;
         }
         while(!_loc6_);
         
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         while(true)
         {
            _loc4_.@MouseOver = "OverLevelSelection" + param1;
            loop2:
            while(true)
            {
               _loc4_.@MouseOut = "OutLevelSelection" + param1;
               while(true)
               {
                  addr85:
                  while(true)
                  {
                     _loc4_.@scaleH = "TRUE";
                     if(_loc7_)
                     {
                        break;
                     }
                     continue loop2;
                  }
               }
            }
            if(!_loc6_)
            {
               continue;
            }
            if(false)
            {
               §§goto(addr85);
            }
            var _loc5_:§^'§ = new §^'§(_loc4_,§0q§.container,_loc3_);
            if(!(_loc7_ && _loc2_))
            {
               this.static.push(_loc5_);
               addr179:
               if(param1 > this.§9!B§)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr179);
                     }
                     this.§;X§(param1);
                     addr174:
                  }
                  §§goto(addr174);
               }
               return _loc5_;
            }
            §§goto(addr174);
         }
      }
      
      private function §?z§(param1:int, param2:int, param3:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 4;
         if(_loc6_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§pop();
                           addr176:
                           while(true)
                           {
                              §§push(param3);
                              addr147:
                              while(true)
                              {
                                 continue loop12;
                              }
                              continue loop12;
                           }
                        }
                        addr175:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(_loc4_);
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(param2);
                              loop5:
                              while(_loc6_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param3);
                                       loop7:
                                       while(true)
                                       {
                                          if(!(_loc6_ || param2))
                                          {
                                             continue loop5;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(param1);
                                             §§push(0);
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr83);
                                                      }
                                                      addr72:
                                                   }
                                                   break;
                                                }
                                                break loop6;
                                             }
                                             continue;
                                          }
                                          §§push(2);
                                          while(true)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                _loc4_ = §§pop();
                                                addr116:
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      break loop7;
                                                   }
                                                   addr130:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(!_loc5_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         break loop7;
                                                      }
                                                      break;
                                                   }
                                                   continue loop0;
                                                   addr83:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         addr93:
                                                         break loop7;
                                                      }
                                                      if(!(_loc5_ && this))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                }
                                                addr116:
                                             }
                                             break;
                                             addr26:
                                             if(!(_loc5_ && param3))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param3)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop2;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr147);
                                          §§goto(addr116);
                                       }
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr26);
                                          }
                                          else
                                          {
                                             §§goto(addr83);
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr116);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr130);
                              }
                              continue loop2;
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         §§push(this.§21§);
         if(!(_loc3_ && _loc3_))
         {
            if(§§pop() is §[!9§)
            {
               addr95:
               this.§21§.set();
            }
            this.§21§ = null;
            clearInterval(this.§ try§);
            do
            {
               this.§`!P§();
               super.deActivate();
            }
            while(!(_loc4_ || _loc2_));
            
            this.§#!%§();
            while(true)
            {
               while(true)
               {
                  this.§,%§ = false;
                  do
                  {
                     this.§;;§ = null;
                  }
                  while(_loc3_ && _loc1_);
                  
                  if(_loc4_)
                  {
                     if(true)
                     {
                        var _loc1_:int = 0;
                        loop4:
                        while(_loc1_ < this.static.length)
                        {
                           _loc2_ = this.static[_loc1_].mClip;
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.scaleX = 1;
                           }
                           loop5:
                           while(true)
                           {
                              addr132:
                              while(true)
                              {
                                 _loc2_.scaleY = 1;
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                     continue;
                     return;
                  }
                  break;
               }
            }
         }
         §§goto(addr95);
      }
      
      private function §#!%§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§5`§.length)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     addr49:
                     if(_loc2_)
                     {
                        break;
                     }
                     addr84:
                     while(true)
                     {
                        this.§5`§[_loc1_].stop();
                        addr89:
                        while(true)
                        {
                           this.§5`§[_loc1_] = null;
                        }
                        §§goto(addr49);
                     }
                  }
                  while(_loc2_ || this)
                  {
                  }
                  §§goto(addr89);
               }
               continue;
               addr47:
            }
            else if(this.§5`§[_loc1_] != null)
            {
               §§goto(addr84);
            }
            while(true)
            {
               _loc1_++;
               §§goto(addr47);
            }
         }
      }
      
      private function §8!"§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!K§ = §`!K§.§5!<§(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               return;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§0<§();
            this.§,Z§ = §0q§.height / AngryBirdsCustomCanvas.§5!9§;
            while(true)
            {
               this.§"3§();
            }
            addr100:
         }
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  if(mNextState.length > 0)
                  {
                     return §'!#§.STATE_STATUS_COMPLETED;
                  }
                  return §'!#§.STATE_STATUS_RUNNING;
               }
               if(_loc4_)
               {
                  §§push(_loc2_);
                  break;
               }
               §§goto(addr100);
            }
            break;
         }
         return §§pop();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!_loc12_)
         {
            if(!this.§,%§)
            {
               if(!(_loc12_ && this))
               {
                  addr46:
                  §§push(param2);
                  if(!(_loc12_ && param1))
                  {
                     §§push("LEVELSELECTION");
                     if(!_loc12_)
                     {
                        if(§§pop().indexOf(§§pop()) >= 0)
                        {
                           addr62:
                           _loc4_ = param2.split("LEVELSELECTION");
                           addr61:
                           addr60:
                           if(_loc13_ || param3)
                           {
                              §§push(int(int(_loc4_[1])));
                              loop0:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold");
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       §§push(§§pop() > this.§9!B§);
                                       addr345:
                                       continue loop0;
                                       if(!(_loc12_ && param2))
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc13_ || param2)
                                          {
                                             if(!(_loc12_ && param2))
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           var _loc11_:* = _loc4_[0];
                           if(_loc13_)
                           {
                              §§push("OUT");
                              if(_loc13_)
                              {
                                 if(§§pop() === _loc11_)
                                 {
                                    if(!_loc12_)
                                    {
                                       §§push(0);
                                       if(!_loc13_)
                                       {
                                          addr437:
                                       }
                                    }
                                    else
                                    {
                                       addr457:
                                       §§push(3);
                                       if(!_loc12_)
                                       {
                                          addr460:
                                       }
                                    }
                                    addr465:
                                    loop13:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr328:
                                          if(!_loc7_)
                                          {
                                             addr330:
                                             if(!_loc6_)
                                             {
                                                addr331:
                                                §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                                             }
                                             if(this.§5`§[_loc5_] != null)
                                             {
                                                this.§5`§[_loc5_].stop();
                                             }
                                             this.§5`§[_loc5_] = §3C§.§>o§.§<t§(§0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                                                "scaleX":this.§,Z§,
                                                "scaleY":this.§,Z§
                                             },null,0.5,§3C§.§ !1§);
                                             this.§5`§[_loc5_].play();
                                          }
                                          break;
                                       case 1:
                                          if(!_loc7_)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                                                }
                                                if(this.§5`§[_loc5_] == null)
                                                {
                                                   continue;
                                                }
                                                this.§5`§[_loc5_].stop();
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             this.§5`§[_loc5_].play();
                                             addr206:
                                          }
                                          break;
                                       case 2:
                                          §§push(_loc7_);
                                          if(!(_loc12_ && this))
                                          {
                                             if(!§§pop())
                                             {
                                                addr188:
                                                if(!_loc6_)
                                                {
                                                   addr190:
                                                   §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr330);
                                          break;
                                       case 3:
                                          §§push(_loc7_);
                                          if(!_loc12_)
                                          {
                                             if(§§pop())
                                             {
                                                this.§class§(_loc5_);
                                                if(_loc13_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr83);
                                                   }
                                                }
                                                break;
                                             }
                                             if(_loc13_ || param3)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc12_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!(_loc12_ && this))
                                                         {
                                                            §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                                                            if(_loc13_ || param1)
                                                            {
                                                               if(_loc13_ || param1)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §[!7§.playSound("Menu_Confirm");
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     break loop13;
                                                                     addr118:
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr118);
                                                }
                                                else
                                                {
                                                   §§goto(addr328);
                                                }
                                             }
                                             §§goto(addr330);
                                             §§goto(addr402);
                                          }
                                          §§goto(addr188);
                                    }
                                    super.uiInteractionHandler(param1,param2,param3);
                                    if(!(_loc12_ && param1))
                                    {
                                       _loc11_ = param2;
                                       §§push("ONFACEBOOKUP");
                                       if(_loc13_)
                                       {
                                          §§push(_loc11_);
                                          if(!_loc12_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc13_ || param1))
                                                   {
                                                      addr692:
                                                   }
                                                }
                                                else
                                                {
                                                   addr633:
                                                   §§push(1);
                                                   if(!_loc13_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("ONCREDITSOVER");
                                                if(!(_loc12_ && param2))
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc13_ || this)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr633);
                                                      }
                                                      else
                                                      {
                                                         §§push("ONCREDITSUP");
                                                         if(!_loc12_)
                                                         {
                                                            addr640:
                                                            §§push(_loc11_);
                                                            if(!(_loc12_ && this))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc12_ && param3))
                                                                  {
                                                                     §§goto(addr709);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr667:
                                                                     addr709:
                                                                     loop14:
                                                                     switch(2)
                                                                     {
                                                                        case 0:
                                                                           §!D§.§46§.§<!E§("ABPhila");
                                                                           if(!_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break;
                                                                        case 1:
                                                                           break;
                                                                        case 2:
                                                                           mNextState = §,!#§.§-A§;
                                                                           if(!_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break;
                                                                        case 3:
                                                                           §§push(this.§[!%§(1,false));
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr519:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc12_ && param3)
                                                                                 {
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc12_ && this))
                                                                              {
                                                                                 addr513:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr513);
                                                                           break;
                                                                        case 4:
                                                                           §§goto(addr519);
                                                                        case 5:
                                                                           _loc8_ = §0q§.getItemByName("MovieClip_SoundsOff").mClip;
                                                                           _loc9_ = §0q§.getItemByName("Button_Sound").mClip;
                                                                           §§push(this.§[!%§(0,false));
                                                                           if(_loc13_)
                                                                           {
                                                                              (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                                                                              while(true)
                                                                              {
                                                                                 §§push(AngryBirdsFP11.§5e§());
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 _loc10_ = §§pop();
                                                                                 addr561:
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          AngryBirdsFP11.§6r§(_loc10_);
                                                                                          do
                                                                                          {
                                                                                             §!D§.§#!O§(§!D§.§8T§,int(_loc10_));
                                                                                          }
                                                                                          while(!(_loc13_ || param3));
                                                                                          
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr570);
                                                                                       }
                                                                                       addr570:
                                                                                       addr582:
                                                                                    }
                                                                                    break loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr582);
                                                                     }
                                                                     return;
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr709);
                                                               }
                                                               else
                                                               {
                                                                  §§push("ONMOVESELECTIONRIGHT");
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(!_loc13_)
                                                                     {
                                                                     }
                                                                     addr695:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        addr696:
                                                                        §§push(5);
                                                                        if(_loc13_ || param3)
                                                                        {
                                                                        }
                                                                        §§goto(addr709);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr709);
                                                                        §§push(6);
                                                                     }
                                                                     §§goto(addr709);
                                                                  }
                                                                  addr694:
                                                                  §§goto(addr695);
                                                                  §§push(_loc11_);
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  §§goto(addr667);
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                            else
                                                            {
                                                               §§push("ONMOVESELECTIONLEFT");
                                                               if(!(_loc12_ && param3))
                                                               {
                                                                  addr687:
                                                                  §§push(_loc11_);
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr690:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr692);
                                                                        §§push(4);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr694);
                                                                        §§push("TOGGLESOUND");
                                                                     }
                                                                     §§goto(addr709);
                                                                  }
                                                                  §§goto(addr695);
                                                               }
                                                               §§goto(addr694);
                                                            }
                                                         }
                                                         §§goto(addr694);
                                                      }
                                                   }
                                                   §§goto(addr690);
                                                }
                                                §§goto(addr687);
                                             }
                                             §§goto(addr709);
                                          }
                                          §§goto(addr695);
                                       }
                                       §§goto(addr640);
                                    }
                                    §§goto(addr513);
                                 }
                                 else
                                 {
                                    §§push("OVER");
                                    if(_loc13_)
                                    {
                                       addr425:
                                       if(§§pop() === _loc11_)
                                       {
                                          if(!(_loc12_ && param2))
                                          {
                                             addr434:
                                             §§push(1);
                                             if(!_loc12_)
                                             {
                                                §§goto(addr437);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr457);
                                          }
                                          §§goto(addr465);
                                       }
                                       else
                                       {
                                          §§push("DOWN");
                                          if(!_loc12_)
                                          {
                                             if(§§pop() === _loc11_)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc13_ || param2))
                                                   {
                                                      §§goto(addr460);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr465);
                                             }
                                             else
                                             {
                                                §§push("");
                                             }
                                             §§goto(addr457);
                                          }
                                       }
                                       §§goto(addr457);
                                    }
                                    if(§§pop() === _loc11_)
                                    {
                                       §§goto(addr457);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                    §§goto(addr465);
                                 }
                              }
                              §§goto(addr425);
                           }
                           §§goto(addr434);
                        }
                        §§goto(addr465);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr61);
               }
               §§goto(addr60);
            }
            §§goto(addr709);
         }
         §§goto(addr46);
      }
      
      private function §#%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MovieClip = §0q§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §0q§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§&j§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§,3§);
         }
         else
         {
            this.§"!%§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§,3§);
            while(true)
            {
               §§push(this.§"!%§);
               while(true)
               {
                  §§pop().onComplete = this.§5=§;
                  addr83:
                  §§goto(addr110);
               }
            }
         }
         §§push(this.§&j§);
         do
         {
            §§pop().onComplete = this.§?!8§;
            §§push(this.§&j§);
         }
         while(!_loc4_);
         
         §§pop().play();
         _loc2_.mouseEnabled = false;
         addr110:
         while(true)
         {
            if(_loc3_)
            {
               continue loop0;
            }
            if(_loc4_)
            {
               continue loop1;
            }
         }
      }
      
      private function §5=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"!%§ = null;
         }
      }
      
      private function §?!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§&j§ = null;
         }
      }
   }
}
