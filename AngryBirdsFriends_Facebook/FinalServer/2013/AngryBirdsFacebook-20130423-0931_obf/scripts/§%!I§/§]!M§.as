package §%!I§
{
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §,l§.§ !Q§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§4"7§;
   import §0D§.§ +§;
   import §0D§.§3!R§;
   import §1!t§.§""B§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §8";§.§+d§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §9!n§.LevelManager;
   import §;u§.§&"[§;
   import §;u§.§9!V§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §["6§.§ var§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
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
   
   public class §]!M§ extends §+d§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §>"A§:int = -20;
      
      private static const §6F§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "TournamentState";
            while(true)
            {
               §>"A§ = -20;
               while(_loc2_)
               {
                  §6F§ = 0;
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private var §-#§:Array;
      
      protected var §>j§:§ +§;
      
      protected var §^!&§:§ +§;
      
      protected var §4!j§:§ +§;
      
      private var §!]§:Array;
      
      private var §7K§:§3d§;
      
      protected var §1"§:Array;
      
      protected var §9T§:int = 0;
      
      private var §+";§:Boolean = false;
      
      public function §]!M§(param1:Boolean = false, param2:String = "TournamentState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!]§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
            do
            {
               super(param1,param2);
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public static function §<Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(!(_loc14_ && param3))
            {
               §§push(int(§§pop().length));
               if(_loc14_ && param2)
               {
               }
               addr76:
               §§push(int(§§pop()));
            }
            else
            {
               addr66:
               §§push(int(§§pop().indexOf(".")));
               if(!(_loc14_ && §]!M§))
               {
                  §§goto(addr76);
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc14_)
            {
               §§push(_loc8_);
               if(_loc13_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc13_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && §]!M§))
                        {
                           addr100:
                           §§pop();
                           if(!_loc14_)
                           {
                              addr103:
                              §§push(param3);
                              if(!_loc14_)
                              {
                                 §§push(!§§pop());
                                 if(_loc13_)
                                 {
                                    addr109:
                                    if(§§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          var _loc10_:* = (_loc13_ || param3 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr136:
                                          §§push("");
                                          if(!_loc14_)
                                          {
                                             if(param3)
                                             {
                                                if(!(_loc14_ && param3))
                                                {
                                                   addr191:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(_loc13_ || param2)
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  addr220:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(".");
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             break loop1;
                                                                                          }
                                                                                          addr271:
                                                                                       }
                                                                                       addr302:
                                                                                       break loop3;
                                                                                    }
                                                                                    addr263:
                                                                                 }
                                                                                 break;
                                                                                 addr242:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                           }
                                                                           addr239:
                                                                        }
                                                                        §§goto(addr242);
                                                                        addr224:
                                                                        if(_loc13_ || §]!M§)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc13_)
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr293:
                                                                  if(_loc9_ < (!_loc14_ ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        §§goto(addr224);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         addr283:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr283);
                                                   }
                                                }
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr191);
                                       }
                                       else
                                       {
                                          addr124:
                                          §§push(",");
                                          if(!(_loc14_ && §]!M§))
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr135);
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                    else
                                    {
                                       addr123:
                                       if(param4)
                                       {
                                          §§goto(addr124);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr123);
               }
               §§goto(addr100);
            }
            §§goto(addr103);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr66);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §2"@§ = new §`_§(this);
            while(_loc1_ || _loc2_)
            {
               §2"@§.init(§ "<§.§%I§.Views.View_Tournament[0]);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            this.playThemeMusic();
            loop1:
            do
            {
               (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§^!r§);
               while(!_loc2_)
               {
                  §%"S§.§!C§.§]"Y§("Tournament scores");
                  do
                  {
                     §2"@§.getItemByName("Button_PreviousResults").setVisibility(false);
                     do
                     {
                        this.requestTournamentInfo();
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
                  while(_loc2_);
                  
                  if(_loc1_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_ && this);
            
            return;
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         if(_loc2_)
         {
            _loc1_.§3%§(§;!e§.§^a§);
         }
      }
      
      protected function requestTournamentInfo() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:§7"0§ = null;
         var _loc9_:URLRequest = null;
         if(_loc13_)
         {
            §2"@§.getItemByName("loadingTournament").setVisibility(true);
         }
         var _loc1_:§7"0§ = §2"@§.getItemByName("LevelButton1") as §7"0§;
         var _loc2_:§7"0§ = §2"@§.getItemByName("LevelButton2") as §7"0§;
         var _loc3_:§7"0§ = §2"@§.getItemByName("LevelButton3") as §7"0§;
         var _loc4_:§7"0§ = §2"@§.getItemByName("LevelButton4") as §7"0§;
         var _loc5_:§7"0§ = §2"@§.getItemByName("LevelButton5") as §7"0§;
         var _loc6_:§7"0§ = §2"@§.getItemByName("LevelButton6") as §7"0§;
         var _loc7_:Array = [_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_];
         for each(_loc8_ in _loc7_)
         {
            _loc8_.setVisibility(false);
         }
         (_loc9_ = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/tournamentinit")).method = URLRequestMethod.POST;
         if(_loc13_ || _loc3_)
         {
            _loc9_.contentType = this.§ G§();
            loop1:
            while(true)
            {
               this.§7K§ = new §3d§(null,2);
               loop2:
               while(true)
               {
                  §§push(this.§7K§);
                  loop3:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§9I§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§7K§);
                        while(true)
                        {
                           §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           continue loop1;
                           addr146:
                           if(!(_loc12_ && this))
                           {
                              §§pop().load(_loc9_);
                              if(_loc13_)
                              {
                                 continue loop2;
                              }
                              loop10:
                              while(_loc13_ || _loc3_)
                              {
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§7K§);
                                       if(_loc13_)
                                       {
                                          addr139:
                                          if(!(_loc13_ || _loc2_))
                                          {
                                             while(true)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                   break loop10;
                                                }
                                                break;
                                                §§goto(addr139);
                                             }
                                             continue loop3;
                                             addr184:
                                          }
                                          §§goto(addr146);
                                       }
                                       addr168:
                                       while(true)
                                       {
                                          §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                          continue loop10;
                                       }
                                    }
                                    return;
                                    addr164:
                                    addr180:
                                 }
                                 continue loop4;
                              }
                              while(_loc13_)
                              {
                                 §§goto(addr168);
                                 §§push(this.§7K§);
                                 §§goto(addr171);
                              }
                              addr171:
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.type != §9G§.§33§)
            {
               §9"6§.§>_§();
               if(!_loc3_)
               {
                  addr73:
               }
               return;
            }
            if(!(_loc2_ && param1))
            {
               addr69:
               §9"6§.§>_§(§]!I§.§`'§);
            }
            §§goto(addr73);
         }
         §§goto(addr69);
      }
      
      private function § G§() : String
      {
         return this.§ do§(this.§!]§);
      }
      
      private function § do§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §9I§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Object = null;
         if(_loc5_ || this)
         {
            §2"@§.getItemByName("loadingTournament").setVisibility(false);
            if(!(_loc6_ && _loc3_))
            {
               addr38:
               if(param1.currentTarget.data)
               {
                  addr42:
                  _loc4_ = JSON.parse(param1.currentTarget.data);
                  if(!(_loc6_ && _loc2_))
                  {
                     §3!R§.§&"5§.injectData(_loc4_);
                  }
               }
               §§push(§ var§.§`";§());
               if(_loc5_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc6_ && param1))
               {
                  §§push(_loc2_);
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           addr104:
                           §%"S§.§%P§.§4!f§(§3!R§.§&"5§.§8I§);
                        }
                     }
                     §§push(false);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc6_)
                  {
                     §§push(§3!R§.§&"5§);
                     if(!_loc6_)
                     {
                        if(§§pop().previousTournament)
                        {
                           loop0:
                           while(true)
                           {
                              §§push(§3!R§.§&"5§);
                              addr200:
                              while(true)
                              {
                                 §§push(§§pop().previousTournament == null);
                                 addr203:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr204:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr205:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              loop4:
                              while(true)
                              {
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 this.§3"=§();
                                 while(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr119);
                                       }
                                       addr157:
                                    }
                                    else
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc6_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(!§§pop())
                                             {
                                                addr119:
                                                addr131:
                                             }
                                             continue loop4;
                                             while(true)
                                             {
                                                this.injectData();
                                                if(!_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             return;
                                          }
                                          §§goto(addr203);
                                       }
                                       break;
                                    }
                                    addr191:
                                    while(true)
                                    {
                                       (AngryBirdsFP11.sUserProgress as §#!$§).§"r§(§3!R§.§&"5§.levelScores);
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                        while(true)
                        {
                           §2"@§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
                           §§goto(addr191);
                           §§goto(addr205);
                        }
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr157);
               }
               §§goto(addr104);
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      private function §3"=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§3!R§.§&"5§);
            loop0:
            while(true)
            {
               §§push(§§pop().§%!^§);
               addr113:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr114:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr116:
                     }
                     else
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §9"6§.§["#§(false);
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    addr20:
                                    return;
                                    addr44:
                                 }
                                 addr96:
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr20);
                              addr109:
                           }
                           §§goto(addr96);
                        }
                        §9"6§.§<"T§(§3!R§.§&"5§.§%!^§.§%B§);
                        §§goto(addr109);
                        addr94:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7"0§ = null;
         if(!_loc4_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§>j§);
               if(_loc3_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§^!&§);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§^!&§);
                                 addr66:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr67:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§>j§);
                                             addr95:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                continue loop0;
                                             }
                                          }
                                          addr93:
                                       }
                                    }
                                 }
                                 addr37:
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§4!j§);
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr56:
                                                this.§4!j§.dispose();
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                addr22:
                                                while(true)
                                                {
                                                   this.§1"§ = §3!R§.§&"5§.§8I§;
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr37);
                                                }
                                                else
                                                {
                                                   §§goto(addr67);
                                                }
                                             }
                                          }
                                          §§goto(addr22);
                                       }
                                       §§goto(addr56);
                                    }
                                    continue loop0;
                                    addr46:
                                 }
                                 var _loc1_:int = 0;
                                 addr184:
                                 if(_loc1_ < this.§1"§.length)
                                 {
                                    _loc2_ = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(Boolean(_loc2_));
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             addr182:
                                             §§pop();
                                             §§push((_loc2_.mClip as MovieClip).currentFrameLabel == "Closed");
                                             if(!_loc3_)
                                             {
                                             }
                                             §§goto(addr182);
                                             addr183:
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr183);
                                                }
                                                (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
                                                addr189:
                                                LevelManager.§&"V§ = null;
                                                addr192:
                                                return;
                                                addr175:
                                             }
                                             §§goto(addr175);
                                          }
                                          _loc1_++;
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr66);
                        addr103:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr103);
      }
      
      public function injectData() : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§#!>§ = null;
         var _loc8_:§@"E§ = null;
         var _loc9_:* = null;
         var _loc10_:§@"E§ = null;
         var _loc11_:* = null;
         if(!_loc14_)
         {
            this.§9T§ = getTimer();
         }
         var _loc1_:Array = [];
         §§push(this.setLevelButtons());
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Array = [];
         if(_loc15_ || this)
         {
            this.§-#§ = [];
         }
         var _loc5_:Array = §3!R§.§&"5§.§^E§();
         var _loc12_:int = 0;
         var _loc13_:* = _loc5_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc13_,_loc12_));
            if(_loc15_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc14_ && this))
                  {
                     if(!(_loc14_ && _loc1_))
                     {
                        if(_loc15_)
                        {
                           if(_loc2_ == null)
                           {
                              if(!(_loc14_ && _loc2_))
                              {
                                 §§push((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc9_ = §§pop();
                                 if(!(_loc14_ && this))
                                 {
                                    addr219:
                                    if(_loc10_ = §&k§.§`!]§(_loc9_))
                                    {
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          §§push(_loc10_.name);
                                          if(!(_loc14_ && _loc1_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc14_)
                                             {
                                                addr249:
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
                                       if(!_loc14_)
                                       {
                                          §§goto(addr249);
                                       }
                                    }
                                    _loc2_ = {
                                       §§pop():_loc5_.length + 1,
                                       "u":_loc9_,
                                       "n":_loc11_
                                    };
                                    if(!_loc14_)
                                    {
                                       _loc2_.p = _loc3_;
                                       loop4:
                                       while(true)
                                       {
                                          addr276:
                                          while(true)
                                          {
                                             this.§-#§.push(§1U§.§?$§(_loc2_));
                                             continue loop4;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc4_.push(§1U§.§?$§(_loc2_));
                                       if(_loc15_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr283);
                                    }
                                    addr295:
                                    _loc12_ = 0;
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       _loc13_ = §3!R§.§&"5§.§@!X§();
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc13_,_loc12_));
                                          break loop0;
                                       }
                                       addr329:
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          (§?l§.§ "G§ as §%"S§).§'u§.§]"+§(_loc4_);
                                          addr347:
                                       }
                                       do
                                       {
                                          this.§9?§();
                                          do
                                          {
                                             this.§8P§(_loc2_.r);
                                          }
                                          while(_loc14_);
                                          
                                       }
                                       while(!_loc15_);
                                       
                                       addr328:
                                       addr326:
                                    }
                                    §§goto(addr329);
                                 }
                                 return;
                              }
                              §§goto(addr347);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr329);
                  }
                  §§goto(addr328);
               }
               else
               {
                  _loc6_ = §§nextvalue(_loc12_,_loc13_);
                  if(_loc8_ = §&k§.§`!]§(_loc6_.u))
                  {
                     if(_loc14_)
                     {
                        continue;
                     }
                     if(_loc8_.name)
                     {
                        if(_loc15_)
                        {
                           _loc6_.n = _loc8_.name;
                           if(!(_loc14_ && _loc2_))
                           {
                              addr109:
                              if(_loc6_.n == null)
                              {
                                 if(!_loc14_)
                                 {
                                    addr115:
                                    _loc6_.n = "";
                                    if(!_loc14_)
                                    {
                                       addr120:
                                       if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
                                       {
                                          if(_loc15_)
                                          {
                                             _loc6_.p = _loc3_;
                                             if(_loc15_ || _loc2_)
                                             {
                                                addr140:
                                                _loc2_ = _loc6_;
                                                addr143:
                                                this.§-#§.push(§1U§.§?$§(_loc6_));
                                                if(_loc14_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc4_.push(§1U§.§?$§(_loc6_));
                                          }
                                          continue;
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr109);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc12_,_loc13_);
               if(!(_loc14_ && _loc3_))
               {
                  _loc4_.push(_loc7_);
               }
               continue;
            }
            §§goto(addr329);
         }
      }
      
      private function §,V§(param1:Array) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:§@"E§ = null;
         var _loc5_:* = false;
         var _loc6_:§1U§ = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = §&k§.§]v§();
         var _loc3_:Array = [];
         loop0:
         for each(_loc4_ in _loc2_)
         {
            if(_loc14_ || _loc3_)
            {
               §§push(false);
               if(!_loc13_)
               {
                  _loc5_ = §§pop();
                  if(!_loc13_)
                  {
                     addr63:
                     var _loc11_:int = 0;
                     if(!_loc13_)
                     {
                        for each(_loc6_ in this.§-#§)
                        {
                           if(_loc14_)
                           {
                              if(_loc4_.§5!0§ != _loc6_.userId)
                              {
                                 continue;
                              }
                              if(_loc13_)
                              {
                                 continue;
                              }
                           }
                           _loc5_ = true;
                        }
                     }
                     if(!_loc13_)
                     {
                        addr212:
                        if(_loc5_)
                        {
                           continue;
                        }
                        loop13:
                        while(true)
                        {
                           §§push("");
                           loop11:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              addr215:
                              loop8:
                              while(true)
                              {
                                 §§push(_loc4_.§5!0§);
                                 if(_loc14_)
                                 {
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push("");
                                       if(!_loc14_)
                                       {
                                          continue loop11;
                                       }
                                       _loc8_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc14_)
                                          {
                                             break loop7;
                                          }
                                          continue loop13;
                                       }
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc4_.name);
                                          if(_loc14_ || _loc2_)
                                          {
                                             addr208:
                                             if(_loc14_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      addr210:
                                                      if(!_loc13_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            break loop8;
                                                         }
                                                         §§push(_loc4_.name);
                                                         if(_loc14_ || this)
                                                         {
                                                            addr164:
                                                            §§push(§§pop());
                                                            if(_loc13_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            _loc8_ = §§pop();
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr175);
                                                      }
                                                      addr210:
                                                   }
                                                   loop3:
                                                   while(_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         §§push(§§findproperty(§ !Q§));
                                                         §§push(_loc7_);
                                                         §§push(_loc8_);
                                                         §§push("");
                                                         §§push(§4"7§.§&"5§.§>!Z§(_loc7_));
                                                         if(_loc14_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§pop().push(new §§pop().§ !Q§(§§pop(),§§pop(),§§pop(),§§pop()));
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr106);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                break loop2;
                                             }
                                             addr208:
                                          }
                                          §§goto(addr164);
                                       }
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          §§goto(addr210);
                                       }
                                    }
                                    addr175:
                                    addr192:
                                 }
                                 §§goto(addr208);
                              }
                              while(true)
                              {
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(_loc4_.§5!0§);
                                 }
                                 else
                                 {
                                    §§goto(addr215);
                                 }
                                 §§goto(addr208);
                              }
                           }
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr192);
               }
               §§goto(addr212);
            }
            §§goto(addr63);
         }
      }
      
      protected function setLevelButtons() : int
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:§7"0§ = null;
         var _loc6_:§7"0§ = null;
         var _loc7_:String = null;
         var _loc8_:§#!$§ = null;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         if(!_loc12_)
         {
            this.§1"§ = §3!R§.§&"5§.§8I§;
         }
         var _loc1_:Array = [];
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc13_ || _loc3_))
            {
               break;
            }
            if(§§pop() >= this.§1"§.length)
            {
               break;
            }
            _loc5_ = §2"@§.getItemByName("LevelButton" + (_loc2_ + 1)) as §7"0§;
            if(!_loc12_)
            {
               _loc1_.push(_loc5_);
               if(!_loc12_)
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
            if(_loc13_ || this)
            {
               _loc2_ = §§pop();
               if(!_loc12_)
               {
                  addr97:
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc13_)
                     {
                        if(§§pop() < _loc1_.length)
                        {
                           if((_loc6_ = _loc1_[_loc2_]) == null)
                           {
                              if(!_loc13_)
                              {
                                 while(true)
                                 {
                                    _loc6_.mClip.gotoAndStop("Open");
                                    while(true)
                                    {
                                       _loc6_.setEnabled(true);
                                       loop4:
                                       while(true)
                                       {
                                          _loc6_.mClip.TextField_LevelNum.text.text = _loc2_ + 1 + "";
                                          if(!(_loc13_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                _loc6_.setEnabled(false);
                                                continue loop4;
                                                addr170:
                                             }
                                             addr140:
                                          }
                                          else
                                          {
                                             §§push((_loc8_ = AngryBirdsFP11.sUserProgress as §#!$§).§3"4§(_loc7_));
                                             if(_loc13_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc12_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(!(_loc12_ && _loc1_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc12_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc13_ || this)
                                                               {
                                                                  §§pop();
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     addr462:
                                                                     if(_loc9_ <= 3)
                                                                     {
                                                                        addr464:
                                                                        _loc6_.mClip.LevelSelection_Crown.gotoAndStop(_loc9_);
                                                                        addr469:
                                                                        §§push(_loc8_.§="&§(_loc7_));
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr449:
                                                                           _loc10_ = §§pop();
                                                                           _loc6_.mClip.Textfield_LevelScore.text.text = §<Y§(_loc10_);
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr418:
                                                                              _loc11_ = _loc8_.getStarsForLevel(_loc7_,_loc10_);
                                                                              _loc6_.mClip.MovieClip_Stars.gotoAndStop(_loc11_.toString() + "_stars");
                                                                              addr419:
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr377:
                                                                                 §§push(_loc10_);
                                                                                 §§push(0);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       addr380:
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          _loc6_.mClip.MovieClip_Stars.visible = false;
                                                                                          addr392:
                                                                                          if(_loc13_ || _loc2_)
                                                                                          {
                                                                                             _loc6_.mClip.Textfield_LevelScore.visible = false;
                                                                                             addr364:
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_ || _loc3_)
                                                                                                {
                                                                                                   _loc6_.mClip.GiftboxMovieclip.visible = true;
                                                                                                   addr355:
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      addr252:
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(_loc13_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc13_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc13_ || this)
                                                                                                                  {
                                                                                                                     addr287:
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 addr306:
                                                                                                                                 _loc6_.mClip.GiftboxMovieclip.visible = false;
                                                                                                                                 addr312:
                                                                                                                                 if(!(_loc12_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr252);
                                                                                                                                    }
                                                                                                                                    §§goto(addr469);
                                                                                                                                 }
                                                                                                                                 if(_loc13_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr306);
                                                                                                                                 }
                                                                                                                                 §§goto(addr364);
                                                                                                                              }
                                                                                                                              addr470:
                                                                                                                              _loc2_++;
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr344:
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 _loc6_.mClip.Textfield_LevelScore.visible = true;
                                                                                                                                 §§goto(addr306);
                                                                                                                              }
                                                                                                                              §§goto(addr392);
                                                                                                                           }
                                                                                                                           §§goto(addr355);
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     §§goto(addr469);
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            §§goto(addr449);
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                                §§goto(addr418);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          §§goto(addr449);
                                                                                       }
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                    _loc6_.mClip.MovieClip_Stars.visible = true;
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              addr459:
                                                                              §§goto(addr464);
                                                                           }
                                                                           addr450:
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr462);
                                                                     }
                                                                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(4);
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr418);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr462);
                                                }
                                             }
                                             §§goto(addr449);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr470);
                           }
                           else
                           {
                              _loc6_.setVisibility(true);
                              if(!_loc12_)
                              {
                                 _loc7_ = this.§1"§[_loc2_];
                              }
                           }
                           §§goto(addr195);
                        }
                     }
                     break;
                  }
                  §§goto(addr478);
               }
               §§push(_loc3_);
            }
            addr478:
            return §§pop();
         }
         §§goto(addr97);
      }
      
      private function §0"$§(param1:MouseEvent) : void
      {
      }
      
      private function §8!@§(param1:int) : §1U§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#!>§ = null;
         for each(_loc2_ in this.§-#§)
         {
            if(_loc5_)
            {
               if(_loc2_ is §1U§)
               {
                  if(!(_loc6_ && param1))
                  {
                     if((_loc2_ as §1U§).§'Q§ == param1)
                     {
                        if(_loc5_)
                        {
                           return _loc2_ as §1U§;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §8P§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§-#§.length;
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(1);
               addr336:
               while(§§pop() != §§pop())
               {
                  §§push(_loc2_);
                  continue loop0;
               }
            }
         }
         §§goto(addr337);
      }
      
      protected function §!R§(param1:§1U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  return;
               }
               addr85:
               while(true)
               {
               }
               addr85:
            }
            while(true)
            {
               this.§>j§ = new § +§(param1,1,this.§[O§,this.§?"G§);
               while(!(_loc2_ && _loc3_))
               {
                  §2"@§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§>j§);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               §§goto(addr85);
            }
         }
         §§goto(addr85);
      }
      
      protected function §5"[§(param1:§1U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§^!&§ = new § +§(param1,2,this.§[O§,this.§?"G§);
                  while(!_loc3_)
                  {
                     §2"@§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§^!&§);
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                     }
                  }
                  addr84:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      protected function §!"4§(param1:§1U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§4!j§ = new § +§(param1,3,this.§[O§,this.§?"G§);
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §2"@§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§4!j§);
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_ || param1)
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
         §§goto(addr80);
      }
      
      protected function get §[O§() : String
      {
         return "StarpillarOwn";
      }
      
      protected function get §?"G§() : String
      {
         return "StarpillarEnemy";
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("BACK");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param3)
                     {
                        addr160:
                        §§push(0);
                        if(_loc6_)
                        {
                           addr191:
                        }
                     }
                     else
                     {
                        addr234:
                        §§push(3);
                        if(_loc6_ && param2)
                        {
                           addr298:
                        }
                     }
                  }
                  else
                  {
                     §§push("PREVIOUS_RESULTS");
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr191);
                                 }
                                 else
                                 {
                                    addr371:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          mNextState = §9!V§.STATE_NAME;
                                          break;
                                          addr133:
                                       case 1:
                                          mNextState = StateLastWeeksTournamentResults.STATE_NAME;
                                          break;
                                          addr126:
                                       case 2:
                                          this.§8?§(this.§1"§[0]);
                                          addr116:
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§goto(addr133);
                                          break;
                                       case 3:
                                          this.§8?§(this.§1"§[1]);
                                          break;
                                          addr106:
                                       case 4:
                                          this.§8?§(this.§1"§[2]);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 5:
                                          this.§8?§(this.§1"§[3]);
                                          addr82:
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr106);
                                          break;
                                       case 6:
                                          this.§8?§(this.§1"§[4]);
                                          addr51:
                                          break;
                                          addr72:
                                       case 7:
                                          this.§8?§(this.§1"§[5]);
                                          addr60:
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr116);
                                          break;
                                       case 8:
                                          mNextState = §&"[§.STATE_NAME;
                                          if(!(_loc6_ && this))
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr82);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr72);
                                                }
                                                §§goto(addr51);
                                             }
                                             else
                                             {
                                                §§goto(addr60);
                                             }
                                          }
                                    }
                                    return;
                                    addr354:
                                 }
                              }
                              §§goto(addr371);
                           }
                           else
                           {
                              §§push("LEVEL_1");
                              if(!(_loc6_ && this))
                              {
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr208:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr346:
                                          §§push(7);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§goto(addr354);
                                          }
                                       }
                                       §§goto(addr371);
                                       §§goto(addr371);
                                    }
                                    else
                                    {
                                       §§push("LEVEL_2");
                                       if(_loc5_ || param2)
                                       {
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr234);
                                                }
                                                else
                                                {
                                                   §§goto(addr346);
                                                }
                                             }
                                             else
                                             {
                                                §§push("LEVEL_3");
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(4);
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               §§goto(addr371);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr298);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr358:
                                                            §§push(8);
                                                            if(_loc5_ || param3)
                                                            {
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      else
                                                      {
                                                         §§push("LEVEL_4");
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr287:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     §§push(5);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr298);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr316:
                                                                        §§goto(addr371);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr371);
                                                               }
                                                               else
                                                               {
                                                                  §§push("LEVEL_5");
                                                                  if(!(_loc6_ && param3))
                                                                  {
                                                                     addr307:
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                     }
                                                                     addr328:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§goto(addr346);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr358);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr356:
                                                                        if("showCredits" === _loc4_)
                                                                        {
                                                                           §§goto(addr358);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr371);
                                                                           §§push(9);
                                                                        }
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(6);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr316);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr371);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr371);
                                                            }
                                                            else
                                                            {
                                                               §§push("LEVEL_6");
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§goto(addr328);
                                                                  }
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr307);
                                    }
                                 }
                                 §§goto(addr307);
                              }
                              §§goto(addr356);
                           }
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr356);
                  }
                  §§goto(addr371);
               }
               §§goto(addr287);
            }
            §§goto(addr356);
         }
         §§goto(addr160);
      }
      
      protected function §8?§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            LevelManager.§,!m§(LevelManager.§["S§(param1.toLowerCase()));
         }
         do
         {
            mNextState = §5S§.STATE_NAME;
         }
         while(_loc3_);
         
      }
      
      protected function §9?§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = §3!R§.§&"5§.§^!y§();
         if(!_loc3_)
         {
            §2"@§.setText(_loc1_[0],"DaysLeftTextfield");
         }
         var _loc2_:§4"9§ = §2"@§.getItemByName("DaysLeftTextfield") as §4"9§;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.§-" §.textColor = _loc1_[1];
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     this.§9?§();
                     while(mNextState.length > 0)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           addr85:
                           return _loc2_;
                        }
                     }
                     return §+d§.STATE_STATUS_RUNNING;
                  }
                  while(_loc3_ && param1);
                  
                  return §+d§.STATE_STATUS_COMPLETED;
               }
            }
         }
         §§goto(addr85);
      }
   }
}
