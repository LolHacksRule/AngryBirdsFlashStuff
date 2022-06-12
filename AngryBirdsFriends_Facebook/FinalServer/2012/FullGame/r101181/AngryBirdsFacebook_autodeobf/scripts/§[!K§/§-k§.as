package §[!K§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §!"D§.§@!!§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'K§.§"!=§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §3!7§.§?!F§;
   import §4!e§.§-"E§;
   import §4!e§.§^!D§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §7"@§.§9<§;
   import §7"@§.§?'§;
   import §7-§.§,!C§;
   import §7-§.§-"<§;
   import §]!>§.§#"1§;
   import §]!>§.§,;§;
   import §]!>§.§0!!§;
   import §]!>§.§[Q§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §-k§ extends §1-§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §4!S§:int = -20;
      
      private static const §+§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "TournamentState";
         }
         while(true)
         {
            §4!S§ = -20;
            while(_loc2_ || §-k§)
            {
               §+§ = 0;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §`!l§:Array;
      
      protected var §-!j§:§-"<§;
      
      protected var §?n§:§-"<§;
      
      protected var § !§:§-"<§;
      
      private var §-!w§:Array;
      
      private var §<P§:§0]§;
      
      protected var §92§:Array;
      
      protected var §]u§:int = 0;
      
      private var §<!Y§:Boolean = false;
      
      public function §-k§(param1:Boolean = false, param2:String = "TournamentState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-!w§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
            do
            {
               super(param1,param2);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public static function §"!V§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
               if(_loc13_ && param3)
               {
               }
               addr72:
               §§push(int(§§pop()));
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || param2)
               {
                  §§goto(addr72);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc14_)
            {
               §§push(_loc8_);
               if(!_loc13_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!(_loc13_ && param2))
                        {
                           §§pop();
                           if(_loc14_ || §-k§)
                           {
                              §§push(param3);
                              if(!(_loc13_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc13_ && §-k§))
                                 {
                                    addr120:
                                    if(§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          var _loc10_:* = (_loc14_ || param1 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr142:
                                          §§push("");
                                          if(!_loc13_)
                                          {
                                             if(param3)
                                             {
                                                if(!_loc13_)
                                                {
                                                   _loc11_ = 0;
                                                   addr204:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc14_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc14_)
                                                            {
                                                               if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     addr226:
                                                                     do
                                                                     {
                                                                        §§push(_loc5_);
                                                                        break loop2;
                                                                        _loc10_ = §§pop();
                                                                     }
                                                                     while(!(_loc13_ && §-k§));
                                                                     
                                                                     addr309:
                                                                     return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                     addr272:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(".");
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                           if(_loc14_ || param2)
                                                                           {
                                                                              §§goto(addr264);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr309);
                                                                        addr239:
                                                                     }
                                                                     addr238:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr239);
                                                                     }
                                                                  }
                                                                  addr232:
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     §§push(§§pop() + "0");
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc14_ || §-k§)
                                                                        {
                                                                           _loc11_++;
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc7_.substr(0,1) == "-")
                                                                  {
                                                                     addr294:
                                                                     if(_loc9_ < (!(_loc13_ && §-k§) ? §§pop() - 1 : §§pop()))
                                                                     {
                                                                        if(param4)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(",");
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            addr274:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr204);
                                       }
                                       else
                                       {
                                          addr135:
                                          §§push(",");
                                          if(_loc14_)
                                          {
                                             §§goto(addr138);
                                          }
                                          else
                                          {
                                             addr141:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr142);
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
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr135);
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr134);
               }
               §§goto(addr120);
            }
            §§goto(addr142);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr62);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               while(_loc2_ || _loc2_)
               {
                  §6w§.init(§ "A§.§4[§.Views.View_Tournament[0]);
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr65:
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            loop0:
            while(true)
            {
               this.playThemeMusic();
               while(true)
               {
                  (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
                  loop2:
                  while(_loc2_)
                  {
                     §3T§.§67§.§6!l§("Tournament scores");
                     while(true)
                     {
                        §6w§.getItemByName("Button_PreviousResults").setVisibility(false);
                        continue loop0;
                        addr34:
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              return;
                              addr53:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         if(!(_loc2_ && this))
         {
            _loc1_.§"!r§(§&!7§.§3V§);
         }
      }
      
      protected function requestTournamentInfo() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§^!D§ = null;
         var _loc7_:URLRequest = null;
         if(_loc10_)
         {
            §6w§.getItemByName("loadingTournament").setVisibility(true);
         }
         var _loc1_:§^!D§ = §6w§.getItemByName("LevelButton1") as §^!D§;
         var _loc2_:§^!D§ = §6w§.getItemByName("LevelButton2") as §^!D§;
         var _loc3_:§^!D§ = §6w§.getItemByName("LevelButton3") as §^!D§;
         var _loc4_:§^!D§ = §6w§.getItemByName("LevelButton4") as §^!D§;
         var _loc5_:Array = [_loc1_,_loc2_,_loc3_,_loc4_];
         for each(_loc6_ in _loc5_)
         {
            _loc6_.setVisibility(false);
         }
         (_loc7_ = §-!l§.§%""§(AngryBirdsFP11.§76§ + "/tournamentinit")).method = URLRequestMethod.POST;
         if(_loc10_ || _loc2_)
         {
            _loc7_.contentType = this.§6!q§();
            while(true)
            {
               this.§<P§ = new §0]§(null,2);
               addr179:
               if(_loc11_ && _loc2_)
               {
                  continue;
               }
               §§push(this.§<P§);
               loop9:
               for(; _loc10_ || _loc3_; §§push(this.§<P§),if(!(_loc10_ || this))
               {
                  continue;
               },§§goto(addr127))
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc10_ || this))
                        {
                           break;
                        }
                        continue loop9;
                     }
                     addr172:
                     addr212:
                     while(!(_loc11_ && _loc1_))
                     {
                        §§goto(addr179);
                     }
                     while(true)
                     {
                        §§push(this.§<P§);
                        break loop9;
                        §§goto(addr172);
                     }
                  }
                  loop4:
                  while(true)
                  {
                     §§push(this.§<P§);
                     addr190:
                     loop5:
                     while(!(_loc11_ && this))
                     {
                        §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        §§goto(addr212);
                        if(!(_loc10_ || _loc2_))
                        {
                           continue;
                        }
                        §§pop().load(_loc7_);
                        if(!_loc11_)
                        {
                           if(!_loc11_)
                           {
                              return;
                           }
                           addr229:
                           while(true)
                           {
                              §§push(this.§<P§);
                              break loop5;
                           }
                        }
                        else
                        {
                           §§goto(addr154);
                        }
                     }
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§7I§);
                        continue loop4;
                        §§goto(addr190);
                     }
                  }
                  addr154:
               }
               while(true)
               {
                  §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  §§goto(addr172);
                  §§goto(addr144);
               }
               addr144:
            }
         }
         §§goto(addr229);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type != §+!D§.§25§)
            {
               §%?§.§6!7§();
               if(_loc2_)
               {
                  if(!_loc2_)
                  {
                     addr48:
                     §%?§.§6!7§(§-d§.§]x§);
                     addr52:
                  }
                  return;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr48);
      }
      
      private function §6!q§() : String
      {
         return this.§-W§(this.§-!w§);
      }
      
      private function §-W§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §7I§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Object = null;
         if(_loc6_ || _loc2_)
         {
            §6w§.getItemByName("loadingTournament").setVisibility(false);
            if(!_loc5_)
            {
               if(param1.currentTarget.data)
               {
                  addr38:
                  _loc4_ = JSON.parse(param1.currentTarget.data);
                  if(_loc6_ || this)
                  {
                     §,!C§.§;"§.injectData(_loc4_);
                  }
               }
               §§push(§"!=§.§super§());
               if(_loc6_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc6_ || param1)
               {
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §%?§.§!,§();
                           addr111:
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 §3T§.§if §.§ !;§(§,!C§.§;"§.§-&§);
                                 while(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §?!F§.§;"§.§-Y§();
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             break loop10;
                                          }
                                          continue loop10;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop9;
                              }
                           }
                        }
                     }
                     §§push(false);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc6_ || this)
                  {
                     §§push(§,!C§.§;"§);
                     if(_loc6_)
                     {
                        if(§§pop().previousTournament)
                        {
                           while(true)
                           {
                              §§push(§,!C§.§;"§);
                              addr205:
                              while(true)
                              {
                                 §§push(§§pop().previousTournament == null);
                                 if(!_loc5_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 addr211:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr212:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr203:
                        }
                        while(true)
                        {
                           §6w§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
                           loop3:
                           while(true)
                           {
                              (AngryBirdsFP11.sUserProgress as §[<§).§;!i§(§,!C§.§;"§.levelScores);
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc5_)
                                 {
                                    this.injectData();
                                    continue;
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr212);
               }
               §§goto(addr111);
            }
         }
         §§goto(addr38);
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^!D§ = null;
         if(_loc3_ || _loc1_)
         {
            super.deActivate();
            while(true)
            {
               §§push(this.§-!j§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§-!j§);
                        addr97:
                        while(true)
                        {
                           §§pop().dispose();
                           addr98:
                           while(true)
                           {
                           }
                        }
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(this.§?n§);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr77:
                              this.§?n§.dispose();
                           }
                           while(true)
                           {
                           }
                           addr88:
                        }
                        while(true)
                        {
                           §§push(this.§ !§);
                           if(_loc3_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§ !§);
                                          addr63:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                          }
                                       }
                                       addr61:
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                                 addr64:
                              }
                              while(true)
                              {
                                 this.§92§ = §,!C§.§;"§.§-&§;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr64);
                              }
                              if(!_loc4_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc1_:int = 0;
                                 addr179:
                                 if(_loc1_ < this.§92§.length)
                                 {
                                    _loc2_ = §6w§.getItemByName("LevelButton" + (_loc1_ + 1)) as §^!D§;
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(_loc2_));
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             addr177:
                                             §§pop();
                                             §§push((_loc2_.mClip as MovieClip).currentFrameLabel == "Closed");
                                             if(!_loc3_)
                                             {
                                             }
                                             §§goto(addr177);
                                             addr178:
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§&h§);
                                                if(_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr178);
                                                   }
                                                   addr184:
                                                   LevelManager.§+!;§ = null;
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          _loc1_++;
                                          if(!(_loc4_ && this))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr177);
                                             }
                                             §§goto(addr179);
                                          }
                                          addr187:
                                          return;
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 §§goto(addr88);
                              }
                           }
                           §§goto(addr63);
                        }
                        continue;
                     }
                     §§goto(addr77);
                  }
                  continue;
               }
               §§goto(addr97);
            }
         }
         §§goto(addr61);
      }
      
      public function injectData() : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§#"1§ = null;
         var _loc8_:§@!5§ = null;
         var _loc9_:* = null;
         var _loc10_:§@!5§ = null;
         var _loc11_:* = null;
         if(!_loc15_)
         {
            this.§]u§ = getTimer();
         }
         var _loc1_:Array = [];
         §§push(this.setLevelButtons());
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Array = [];
         if(!_loc15_)
         {
            this.§`!l§ = [];
         }
         var _loc5_:Array = §,!C§.§;"§.§#!3§();
         var _loc12_:int = 0;
         var _loc13_:* = _loc5_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc13_,_loc12_));
            if(_loc14_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     if(_loc14_)
                     {
                        if(_loc14_)
                        {
                           if(_loc2_ == null)
                           {
                              if(_loc14_ || this)
                              {
                                 §§push((AngryBirdsFP11.sUserProgress as §[<§).§4v§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc9_ = §§pop();
                                 if(!(_loc15_ && this))
                                 {
                                    if(_loc10_ = §1z§.§@Z§(_loc9_))
                                    {
                                       if(!_loc15_)
                                       {
                                          §§push(_loc10_.name);
                                          if(_loc14_ || this)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                addr253:
                                                §§push(§§pop());
                                             }
                                          }
                                          _loc11_ = §§pop();
                                       }
                                       §§push("r");
                                    }
                                    else
                                    {
                                       §§push("You");
                                       if(!(_loc15_ && _loc2_))
                                       {
                                          §§goto(addr253);
                                       }
                                    }
                                    _loc2_ = {
                                       §§pop():_loc5_.length + 1,
                                       "u":_loc9_,
                                       "n":_loc11_
                                    };
                                    if(!_loc15_)
                                    {
                                       _loc2_.p = _loc3_;
                                       loop1:
                                       while(true)
                                       {
                                          addr285:
                                          while(true)
                                          {
                                             this.§`!l§.push(§[Q§.§!!t§(_loc2_));
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc4_.push(§[Q§.§!!t§(_loc2_));
                                       if(_loc14_ || _loc1_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr292);
                                    }
                                    addr304:
                                    _loc12_ = 0;
                                    if(_loc14_ || _loc3_)
                                    {
                                       _loc13_ = §,!C§.§;"§.§=!V§();
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc13_,_loc12_));
                                          break loop0;
                                       }
                                       addr338:
                                       if(_loc14_)
                                       {
                                          (§#6§.§ q§ as §3T§).§0#§.§[!L§(_loc4_);
                                          loop5:
                                          while(true)
                                          {
                                             this.§5!H§();
                                             addr374:
                                             while(true)
                                             {
                                                this.§,!o§(_loc2_.r);
                                                if(_loc14_)
                                                {
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             §§goto(addr370);
                                          }
                                          addr351:
                                          addr382:
                                       }
                                       addr370:
                                       return;
                                       addr337:
                                       addr335:
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr304);
                        }
                        §§goto(addr374);
                     }
                     §§goto(addr338);
                  }
                  §§goto(addr337);
               }
               else
               {
                  _loc6_ = §§nextvalue(_loc12_,_loc13_);
                  if(_loc8_ = §1z§.§@Z§(_loc6_.u))
                  {
                     if(!_loc15_)
                     {
                        if(_loc8_.name)
                        {
                           if(!(_loc15_ && _loc1_))
                           {
                              _loc6_.n = _loc8_.name;
                              if(!(_loc14_ || this))
                              {
                                 continue;
                              }
                              addr108:
                              if(_loc6_.n == null)
                              {
                                 if(!_loc15_)
                                 {
                                    _loc6_.n = "";
                                    if(!(_loc14_ || _loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 addr144:
                                 _loc2_ = _loc6_;
                                 this.§`!l§.push(§[Q§.§!!t§(_loc6_));
                                 if(!(_loc15_ && _loc2_))
                                 {
                                    addr160:
                                    _loc4_.push(§[Q§.§!!t§(_loc6_));
                                 }
                                 continue;
                              }
                              if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
                              {
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    _loc6_.p = _loc3_;
                                    if(!_loc15_)
                                    {
                                       §§goto(addr144);
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr144);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr108);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc12_,_loc13_);
               if(!(_loc15_ && _loc1_))
               {
                  _loc4_.push(_loc7_);
               }
               continue;
            }
            §§goto(addr338);
         }
      }
      
      private function §!S§(param1:Array) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:§@!5§ = null;
         var _loc5_:* = false;
         var _loc6_:§[Q§ = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = §1z§.§^"4§();
         var _loc3_:Array = [];
         loop0:
         for each(_loc4_ in _loc2_)
         {
            if(_loc14_ || this)
            {
               §§push(false);
               if(_loc14_)
               {
                  _loc5_ = §§pop();
                  if(!_loc13_)
                  {
                     addr63:
                     var _loc11_:int = 0;
                     if(_loc14_ || _loc2_)
                     {
                        for each(_loc6_ in this.§`!l§)
                        {
                           if(_loc14_)
                           {
                              if(_loc4_.§4v§ != _loc6_.userId)
                              {
                                 continue;
                              }
                              if(_loc13_ && param1)
                              {
                                 continue;
                              }
                           }
                           _loc5_ = true;
                        }
                     }
                     if(_loc14_ || param1)
                     {
                        addr227:
                        if(_loc5_)
                        {
                           continue;
                        }
                        loop12:
                        while(true)
                        {
                           §§push("");
                           loop5:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(_loc4_.§4v§);
                                 if(!_loc13_)
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc13_)
                                       {
                                          continue loop12;
                                       }
                                       §§push(_loc4_.§4v§);
                                    }
                                 }
                                 addr221:
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr222:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       addr223:
                                       while(true)
                                       {
                                          if(!_loc13_)
                                          {
                                             break loop6;
                                          }
                                          continue loop6;
                                       }
                                       continue loop11;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push("");
                                 if(!(_loc13_ && param1))
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           _loc8_ = §§pop();
                           addr210:
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_.name);
                              if(!(_loc13_ && param1))
                              {
                                 if(_loc14_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          if(!_loc13_)
                                          {
                                             if(!_loc13_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_.name);
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         addr188:
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr189:
                                                            loop9:
                                                            while(true)
                                                            {
                                                               addr121:
                                                               addr148:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  §§push(§§findproperty(§,;§));
                                                                  §§push(_loc7_);
                                                                  §§push(_loc8_);
                                                                  §§push("");
                                                                  §§push(§0!!§.§;"§.§;">§(_loc7_));
                                                                  if(_loc14_ || this)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  §§pop().push(new §§pop().§,;§(§§pop(),§§pop(),§§pop(),§§pop()));
                                                                  if(_loc14_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         addr188:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   §§goto(addr188);
                                                }
                                                addr176:
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr188);
                           }
                           addr155:
                           while(false)
                           {
                              §§goto(addr210);
                              §§goto(addr148);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr155);
               }
               §§goto(addr227);
            }
            §§goto(addr63);
         }
      }
      
      protected function setLevelButtons() : int
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:§^!D§ = null;
         var _loc6_:§^!D§ = null;
         var _loc7_:String = null;
         var _loc8_:§[<§ = null;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         if(_loc13_)
         {
            this.§92§ = §,!C§.§;"§.§-&§;
         }
         var _loc1_:Array = [];
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc12_)
            {
               break;
            }
            if(§§pop() >= this.§92§.length)
            {
               break;
            }
            _loc5_ = §6w§.getItemByName("LevelButton" + (_loc2_ + 1)) as §^!D§;
            if(!(_loc12_ && _loc1_))
            {
               _loc1_.push(_loc5_);
               if(_loc13_)
               {
                  _loc2_++;
               }
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:Boolean = false;
         if(!_loc12_)
         {
            §§push(0);
            if(!_loc12_)
            {
               _loc2_ = §§pop();
               if(!_loc12_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc12_ && _loc3_))
                     {
                        while(true)
                        {
                           if(§§pop() >= _loc1_.length)
                           {
                              addr497:
                              §§push(_loc3_);
                              break loop1;
                           }
                           if((_loc6_ = _loc1_[_loc2_]) == null)
                           {
                              if(!(_loc13_ || _loc2_))
                              {
                                 _loc7_ = this.§92§[_loc2_];
                                 if(_loc12_)
                                 {
                                    continue loop1;
                                 }
                                 if(!§,!C§.§;"§.isLevelOpen(_loc7_))
                                 {
                                    _loc6_.mClip.gotoAndStop("Closed");
                                    if(_loc13_)
                                    {
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          addr175:
                                          while(true)
                                          {
                                             _loc6_.setEnabled(false);
                                             addr151:
                                             while(true)
                                             {
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   addr485:
                                                   _loc2_++;
                                                   continue loop1;
                                                }
                                                addr191:
                                                while(true)
                                                {
                                                   _loc6_.setEnabled(true);
                                                }
                                                §§goto(addr485);
                                             }
                                          }
                                          addr147:
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          _loc6_.mClip.TextField_LevelNum.text.text = _loc2_ + 1 + "";
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          if(_loc13_ || _loc2_)
                                          {
                                             if(!_loc12_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr147);
                                                }
                                                else
                                                {
                                                   §§push((_loc8_ = AngryBirdsFP11.sUserProgress as §[<§).§4!N§(_loc7_));
                                                   if(_loc13_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc12_)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc13_ || this)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(3);
                                                                              addr477:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 addr478:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr479:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_.mClip.LevelSelection_Crown.gotoAndStop(_loc9_);
                                                                                          addr484:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr479:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc6_.mClip.LevelSelection_Crown.gotoAndStop(4);
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr474:
                                                                                    }
                                                                                    addr442:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_.§<U§(_loc7_));
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr454);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc6_.mClip.gotoAndStop("Open");
                                                   continue loop3;
                                                }
                                                addr187:
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr187);
                                 addr120:
                              }
                              §§goto(addr485);
                           }
                           else
                           {
                              _loc6_.setVisibility(true);
                              if(_loc13_ || _loc1_)
                              {
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr175);
                        }
                        addr494:
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr497);
            }
            §§goto(addr494);
         }
         §§goto(addr497);
      }
      
      private function §&h§(param1:MouseEvent) : void
      {
      }
      
      private function §#9§(param1:int) : §[Q§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§#"1§ = null;
         for each(_loc2_ in this.§`!l§)
         {
            if(!_loc5_)
            {
               if(_loc2_ is §[Q§)
               {
                  if(_loc6_)
                  {
                     if((_loc2_ as §[Q§).§9!Y§ == param1)
                     {
                        if(_loc6_ || this)
                        {
                           return _loc2_ as §[Q§;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §,!o§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§`!l§.length;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(1);
               addr391:
               while(§§pop() != §§pop())
               {
                  §§push(_loc2_);
                  continue loop0;
               }
               addr392:
               addr395:
               addr386:
               this.§&">§(null);
               this.§1j§(this.§#9§(param1));
               addr379:
               if(!_loc4_)
               {
                  §§goto(addr392);
               }
               addr379:
               this.§3"3§(null);
               addr30:
               return;
            }
         }
         §§goto(addr323);
      }
      
      protected function §&">§(param1:§[Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 != null)
            {
               do
               {
                  this.§-!j§ = new §-"<§(param1,1,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
                  do
                  {
                     §6w§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§-!j§);
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §1j§(param1:§[Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§?n§ = new §-"<§(param1,2,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        §6w§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§?n§);
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §3"3§(param1:§[Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(_loc2_ || this)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr70);
               }
               addr89:
            }
            while(true)
            {
               this.§ !§ = new §-"<§(param1,3,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
               addr70:
               addr48:
               do
               {
                  if(_loc2_ || _loc3_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§6w§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§ !§), _loc3_ && param1);
               
               return;
               §§goto(addr89);
            }
         }
         §§goto(addr48);
      }
      
      protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarOwn";
      }
      
      protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarEnemy";
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param1))
         {
            §§push("BACK");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(0);
                        if(_loc5_ && param1)
                        {
                           addr183:
                        }
                     }
                     else
                     {
                        addr287:
                        §§push(5);
                        if(!_loc5_)
                        {
                           addr290:
                        }
                        else
                        {
                           addr302:
                        }
                     }
                  }
                  else
                  {
                     §§push("PREVIOUS_RESULTS");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr183);
                                 }
                                 else
                                 {
                                    addr307:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          mNextState = §?'§.STATE_NAME;
                                          break;
                                          addr120:
                                       case 1:
                                          mNextState = StateLastWeeksTournamentResults.STATE_NAME;
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 2:
                                          this.§8"'§(this.§92§[0]);
                                          break;
                                          addr103:
                                       case 3:
                                          this.§8"'§(this.§92§[1]);
                                          break;
                                          addr93:
                                       case 4:
                                          this.§8"'§(this.§92§[2]);
                                          addr74:
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                addr41:
                                                break;
                                             }
                                             §§goto(addr103);
                                          }
                                          else
                                          {
                                             §§goto(addr93);
                                          }
                                          break;
                                       case 5:
                                          this.§8"'§(this.§92§[3]);
                                          if(!(_loc5_ && this))
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                break;
                                             }
                                             §§goto(addr120);
                                          }
                                          break;
                                       case 6:
                                          mNextState = §9<§.STATE_NAME;
                                          if(_loc6_ || param2)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr74);
                                             }
                                             §§goto(addr41);
                                          }
                                    }
                                    return;
                                    addr211:
                                 }
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §§goto(addr287);
                              }
                           }
                           else
                           {
                              §§push("LEVEL_1");
                              if(!(_loc5_ && param2))
                              {
                                 addr192:
                                 §§push(_loc4_);
                                 if(_loc6_ || param2)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr211);
                                          }
                                          else
                                          {
                                             §§goto(addr302);
                                          }
                                       }
                                       else
                                       {
                                          addr226:
                                          §§push(3);
                                          if(!(_loc6_ || param2))
                                          {
                                             addr257:
                                          }
                                          §§goto(addr307);
                                       }
                                       §§goto(addr307);
                                    }
                                    else
                                    {
                                       §§push("LEVEL_2");
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr307);
                                             }
                                             else
                                             {
                                                §§push("LEVEL_3");
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc5_)
                                                   {
                                                      addr246:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(4);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr257);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      else
                                                      {
                                                         §§push("LEVEL_4");
                                                         if(!_loc5_)
                                                         {
                                                            addr261:
                                                            §§push(_loc4_);
                                                            if(_loc6_ || param3)
                                                            {
                                                               addr269:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     §§goto(addr287);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr294:
                                                                     §§push(6);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§goto(addr302);
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr292:
                                                                  §§push("showCredits");
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            if(§§pop() !== §§pop())
                                                            {
                                                               §§goto(addr307);
                                                               §§push(7);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr261);
                                             }
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr292);
                                    }
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr307);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr307);
               }
               §§goto(addr246);
            }
            §§goto(addr192);
         }
         §§goto(addr287);
      }
      
      protected function §8"'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            LevelManager.§-!4§(LevelManager.§;!f§(param1.toLowerCase()));
         }
         do
         {
            mNextState = §;+§.STATE_NAME;
         }
         while(_loc3_);
         
      }
      
      protected function §5!H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = §,!C§.§;"§.§0!V§();
         if(_loc4_)
         {
            §6w§.setText(_loc1_[0],"DaysLeftTextfield");
         }
         var _loc2_:§-"E§ = §6w§.getItemByName("DaysLeftTextfield") as §-"E§;
         if(!(_loc3_ && this))
         {
            _loc2_.§5!=§.textColor = _loc1_[1];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§5!H§();
                     §§goto(addr98);
                  }
               }
            }
            §§goto(addr110);
         }
         addr98:
         while(mNextState.length > 0)
         {
            if(_loc4_ || param1)
            {
               if(!(_loc3_ && param1))
               {
                  if(!_loc3_)
                  {
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
                  addr110:
                  return _loc2_;
               }
               continue;
            }
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
   }
}
