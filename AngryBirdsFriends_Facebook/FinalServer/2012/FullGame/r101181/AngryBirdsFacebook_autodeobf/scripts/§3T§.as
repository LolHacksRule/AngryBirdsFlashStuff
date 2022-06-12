package
{
   import § " §.§+!p§;
   import § " §.§3P§;
   import § " §.§9c§;
   import §!!C§.§1"=§;
   import §!!C§.§]!;§;
   import §!§.§&"§;
   import §!§.§'7§;
   import §#!e§.§ <§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'K§.§"!=§;
   import §+N§.§@!]§;
   import §,"2§.§;6§;
   import §-!q§.§ a§;
   import §-!q§.§&O§;
   import §-!q§.§7!m§;
   import §-!q§.§<!f§;
   import §-!q§.§<R§;
   import §-!q§.§=p§;
   import §-"6§.§5E§;
   import §0!G§.§#`§;
   import §1p§.§,O§;
   import §3!7§.§?!F§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §6!B§.§33§;
   import §6!B§.§>!E§;
   import §6!B§.§`!p§;
   import §6c§.§use§;
   import §6o§.§5!C§;
   import §7"@§.§ "%§;
   import §7"@§.§,!D§;
   import §7"@§.§-!I§;
   import §7"@§.§-"$§;
   import §7"@§.§-"2§;
   import §7"@§.§1!J§;
   import §7"@§.§1G§;
   import §7"@§.§2!e§;
   import §7"@§.§2@§;
   import §7"@§.§4!K§;
   import §7"@§.§5!v§;
   import §7"@§.§8"D§;
   import §7"@§.§9!X§;
   import §7"@§.§9<§;
   import §7"@§.§?!3§;
   import §7"@§.§?'§;
   import §7"@§.§@"D§;
   import §7"@§.StateCutScene;
   import §7"@§.StatePlay;
   import §7"@§.§]!K§;
   import §7-§.§,!C§;
   import §8w§.§ !-§;
   import §9"!§.§2K§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §<a§.§?q§;
   import §[!K§.§"`§;
   import §[!K§.§'!W§;
   import §[!K§.§-!@§;
   import §[!K§.§-k§;
   import §[!K§.§4#§;
   import §[!K§.§;+§;
   import §[!K§.§="#§;
   import §[!K§.StateLastWeeksTournamentResults;
   import §]!>§.§"!w§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §3T§ extends AngryBirdsFP11
   {
      
      public static const §'P§:String = "r101181";
      
      private static const §`"$§:String = "AngryBirdsFacebookSettings";
      
      public static const §;b§:String = "/";
      
      protected static var §6!I§:Class;
      
      protected static var §2#§:Class;
      
      protected static var §9!N§:Class;
      
      protected static var §,"=§:Class;
      
      protected static var §@,§:Class;
      
      public static var §if §:§1"=§;
      
      public static var §67§:§3T§;
      
      private static var §"D§:String = "STANDARD";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'P§ = "r101181";
            while(true)
            {
               §`"$§ = "AngryBirdsFacebookSettings";
               while(!_loc1_)
               {
                  §;b§ = "/";
                  loop2:
                  while(true)
                  {
                     §6!I§ = § v§;
                     while(true)
                     {
                        §2#§ = §=!0§;
                        addr97:
                        while(true)
                        {
                           §9!N§ = §[L§;
                           continue loop2;
                        }
                        addr61:
                        if(_loc2_ || _loc2_)
                        {
                           loop7:
                           while(true)
                           {
                              §@,§ = §3F§;
                              addr42:
                              while(_loc2_)
                              {
                                 §"D§ = "STANDARD";
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 addr30:
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    break loop7;
                                 }
                                 addr59:
                                 while(!_loc1_)
                                 {
                                    §§goto(addr61);
                                    §§goto(addr30);
                                 }
                                 §§goto(addr97);
                              }
                              continue loop2;
                           }
                           return;
                           addr68:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      protected var §%![§:§ K§;
      
      public var §7!>§:§&"§;
      
      private var §,j§:§'7§;
      
      private var §"0§:String = null;
      
      private var §9]§:String = "";
      
      private var §!!,§:§?q§;
      
      private var §["4§:§&!7§;
      
      private var §-!i§:Sprite;
      
      private var §<E§:Boolean = false;
      
      public function §3T§(param1:§5E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§§findproperty(§&"D§));
            if(_loc3_ || _loc2_)
            {
               §§push(param1.stage.loaderInfo.parameters.serverVersion);
               if(_loc3_ || this)
               {
                  §§pop().§&"D§ = §§pop() || "[No version from server]";
                  while(true)
                  {
                     §§push(§§findproperty(§76§));
                     if(!(_loc2_ && param1))
                     {
                        §§push(param1.stage.loaderInfo.parameters.serverRoot);
                        if(_loc3_ || param1)
                        {
                           if(!§§pop())
                           {
                              addr81:
                              §§pop();
                              if(!_loc2_)
                              {
                                 if(§4x§)
                                 {
                                    addr86:
                                    §§push("http://head-dot-angrybirds-facebook-dev.appspot.com");
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push("http://angrybirds-facebook-dev.appspot.com");
                                 }
                              }
                              §§goto(addr86);
                           }
                           §§pop().§76§ = §§pop();
                           continue;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr86);
                  }
                  addr136:
               }
            }
            §§goto(addr133);
         }
         §§goto(addr136);
      }
      
      public static function §"3§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push((sUserProgress as §[<§).§4v§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         §§push(§`"$§ + "-");
         if(!(_loc2_ && §3T§))
         {
            return §§pop() + (sUserProgress as §[<§).§4v§;
         }
      }
      
      public static function §[!W§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = String(§,!C§.§;"§.§0!&§).toUpperCase();
         if(_loc3_)
         {
            §§push(§"D§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §&O§.§3!w§ = false;
                        loop3:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop4:
                           while(_loc3_)
                           {
                              §§push(§,!C§.§1!G§);
                              if(!(_loc3_ || §3T§))
                              {
                                 continue loop1;
                              }
                              if(§§pop() != §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§"D§);
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop() == "STANDARD")
                                    {
                                       addr28:
                                       §§push(false);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc2_ && §3T§))
                                       {
                                          §§push(§#6§.§ q§);
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(§-k§.STATE_NAME);
                                                loop8:
                                                while(_loc3_ || _loc1_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().§-![§(§§pop(),new §-k§(false));
                                                      addr414:
                                                      if(_loc3_)
                                                      {
                                                         §§push(§#6§.§ q§);
                                                         while(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(StateLastWeeksTournamentResults.STATE_NAME);
                                                            loop10:
                                                            for(; !_loc2_; if(_loc2_ && _loc1_)
                                                            {
                                                               continue;
                                                            },§§pop().§-![§(§§pop(),new §4#§(false)),§§goto(addr156))
                                                            {
                                                               if(_loc3_ || §3T§)
                                                               {
                                                                  §§pop().§-![§(§§pop(),new StateLastWeeksTournamentResults(false));
                                                                  loop11:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(§#6§.§ q§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(§="#§.STATE_NAME);
                                                                        addr209:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§-![§(§§pop(),new §="#§(false));
                                                                           §§goto(addr213);
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              if(_loc2_ && §3T§)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§4#§.STATE_NAME);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr209);
                                                                                 addr92:
                                                                                 §§push(§'!W§.STATE_NAME);
                                                                                 if(_loc2_ && §3T§)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop().§-![§(§§pop(),new §'!W§(false));
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          addr213:
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          addr156:
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr175:
                                                                                 addr355:
                                                                                 while(_loc3_ || §3T§)
                                                                                 {
                                                                                    §§pop().§-![§(§§pop(),new §-!@§(false));
                                                                                    if(_loc3_ || §3T§)
                                                                                    {
                                                                                       §§push(§#6§.§ q§);
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§pop().§-![§(§§pop(),new § a§(false));
                                                                                 §§goto(addr359);
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr353:
                                                         §§goto(addr355);
                                                         §§push(§-!@§.STATE_NAME);
                                                      }
                                                      §§goto(addr373);
                                                      §§push(§#6§.§ q§);
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§pop().§-![§(§§pop(),new §<!f§(false));
                                                §§goto(addr353);
                                                §§push(§#6§.§ q§);
                                             }
                                          }
                                          addr410:
                                          §§pop().§-![§(§§pop(),new §&O§(false));
                                          §§goto(addr414);
                                       }
                                       else
                                       {
                                          addr406:
                                          §§push(§#6§.§ q§);
                                       }
                                       §§goto(addr410);
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 addr293:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§#6§.§ q§);
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                       continue loop7;
                                       addr164:
                                    }
                                    addr323:
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       addr341:
                                       §§push(§#6§.§ q§);
                                       if(!_loc2_)
                                       {
                                          addr345:
                                          §§pop().§-![§(§4#§.STATE_NAME,new §7!m§(false));
                                          §§push(§#6§.§ q§);
                                          if(!(_loc2_ && §3T§))
                                          {
                                             addr312:
                                             §§push(§'!W§.STATE_NAME);
                                             if(_loc3_ || §3T§)
                                             {
                                                §§pop().§-![§(§§pop(),new §=p§(false));
                                                §§goto(addr323);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr341);
                                          addr349:
                                       }
                                       addr373:
                                       §§push(StateLastWeeksTournamentResults.STATE_NAME);
                                       if(_loc3_)
                                       {
                                          §§pop().§-![§(§§pop(),new §<R§(false));
                                          addr363:
                                          §§push(§#6§.§ q§);
                                          §§push(§="#§.STATE_NAME);
                                          break loop8;
                                          addr381:
                                       }
                                       break loop7;
                                       addr359:
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       §"D§ = _loc1_;
                                       break;
                                       addr337:
                                    }
                                    continue loop3;
                                 }
                                 return true;
                              }
                              §§goto(addr406);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr28);
               }
            }
         }
         §§goto(addr337);
      }
      
      public static function §3!-§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §if § = new §1"=§(§76§,(AngryBirdsFP11.sUserProgress as §[<§).§4v§,(AngryBirdsFP11.sUserProgress as §[<§).userName);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr50);
            }
            §§goto(addr70);
         }
         addr50:
         §§push(§if §);
         if(_loc3_ || _loc2_)
         {
            §§pop().injectData(param1);
            addr70:
            §§push(§if §);
         }
         §§push(§§pop().§%!=§);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc3_ || _loc2_)
               {
                  §+!B§.§3!W§(_loc2_);
               }
            }
         }
      }
      
      protected function §]"%§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Stage3D = null;
         if(_loc7_)
         {
            §>f§.enabled = true;
         }
         var _loc1_:* = 0;
         try
         {
            if(_loc4_ = canvas.stage.stage3Ds[0])
            {
               if(_loc7_)
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                     _loc1_ = §§pop();
                     if(_loc7_ || _loc1_)
                     {
                        addr62:
                        if(_loc1_ == 0)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              §+!B§.§;"-§("no-stage3d");
                              if(!(_loc6_ && _loc1_))
                              {
                                 addr81:
                                 §67§ = this;
                                 if(_loc6_ && _loc1_)
                                 {
                                 }
                                 addr95:
                                 var _loc2_:ContextMenu = new ContextMenu();
                                 if(_loc7_)
                                 {
                                    _loc2_.hideBuiltInItems();
                                    if(_loc7_ || _loc1_)
                                    {
                                       canvas.contextMenu = _loc2_;
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          canvas.stage.addChild(this.§-!i§ = new Sprite());
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §%?§.initialize(canvas.stage);
                                             loop7:
                                             while(true)
                                             {
                                                addr174:
                                                loop1:
                                                while(true)
                                                {
                                                   §%?§.§1>§.addEventListener(§;6§.§;"E§,this.§break§);
                                                   while(true)
                                                   {
                                                      §§push(canvas.stage.loaderInfo.parameters.serverVersion);
                                                      if(_loc6_)
                                                      {
                                                         addr189:
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§push(§§pop());
                                                         break;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr165:
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      this.§!!,§ = new §?q§(_loc3_);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§!!,§.start();
                                                      loop4:
                                                      for(; _loc7_ || _loc3_; if(!(_loc6_ && _loc2_))
                                                      {
                                                         return;
                                                      })
                                                      {
                                                         §>!E§.addEventListener(§`!p§.§5!Q§,this.§8!Y§);
                                                         while(true)
                                                         {
                                                            §>!E§.addEventListener(§33§.§>D§,this.§>F§);
                                                            while(_loc7_)
                                                            {
                                                               §>!E§.addEventListener(§33§.§%!F§,this.§'!-§);
                                                               if(_loc7_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr187:
                                          }
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                §§push("");
                                                break;
                                             }
                                             §§goto(addr174);
                                             §§goto(addr165);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §+!B§.§""1§(§>f§.§^a§);
                              §§goto(addr95);
                           }
                        }
                        addr49:
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr49);
         }
         catch(e:Error)
         {
            §§goto(addr62);
         }
         §§goto(addr81);
      }
      
      private function §8!Y§(param1:§`!p§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §+!B§.§``§(param1.§"4§,param1.errorID);
         }
      }
      
      private function §>F§(param1:§33§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §+!B§.§4"D§(param1.§"4§);
         }
      }
      
      private function §'!-§(param1:§33§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §+!B§.§8V§(param1.§"4§);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §<!_§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && param1))
         {
            if(!param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr55);
               }
            }
            for each(_loc2_ in param1)
            {
               if(_loc5_)
               {
                  §0!!§.§;"§.§[!i§(_loc2_);
               }
            }
            return;
         }
         addr55:
      }
      
      private function §2!n§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§<E§)
            {
               if(!(_loc3_ && param1))
               {
                  §%?§.§?@§(true);
               }
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §5!C§.§9G§(§6!I§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §5!C§.§9G§(§2#§);
         var _loc3_:XML = §5!C§.§9G§(§9!N§);
         if(_loc4_ || _loc3_)
         {
            this.§,b§(_loc2_,_loc1_,["Views","Components"],true);
         }
         do
         {
            this.§,b§(_loc3_,_loc1_,["Views","Components"],true);
         }
         while(!_loc4_);
         
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §5!C§.§9G§(§@,§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_)
         {
            this.§,b§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §5!C§.§9G§(§,"=§);
         if(_loc4_)
         {
            this.§,b§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §9"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§4x§)
            {
               while(true)
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     while(true)
                     {
                        §+!B§.§=>§("userId");
                        addr136:
                        while(true)
                        {
                        }
                     }
                     addr133:
                  }
                  while(true)
                  {
                     if(stage.loaderInfo.parameters.accessToken)
                     {
                        while(true)
                        {
                           if(!stage.loaderInfo.parameters.tokenExpiresIn)
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §+!B§.§=>§("tokenExpiresIn");
                                       while(true)
                                       {
                                          §§goto(addr66);
                                       }
                                    }
                                    addr88:
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr66);
                        }
                        addr80:
                     }
                     §§goto(addr108);
                  }
               }
            }
            addr66:
            loop8:
            while(true)
            {
               this.§7!>§ = new §&"§(stage.loaderInfo.parameters.accessToken);
               while(true)
               {
                  if(_loc1_)
                  {
                     continue loop11;
                  }
                  if(_loc2_)
                  {
                     §"!w§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break loop8;
                           }
                           continue loop0;
                           addr53:
                        }
                        continue loop7;
                     }
                     continue;
                  }
                  addr108:
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        §+!B§.§=>§("accessToken");
                        continue loop0;
                     }
                     §§goto(addr133);
                  }
               }
               continue loop11;
            }
            return;
         }
         §§goto(addr88);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:SharedObject = null;
         if(!_loc4_)
         {
            super.initialize();
            while(true)
            {
               this.§"0§ = stage.loaderInfo.parameters.levelId;
               loop1:
               while(!_loc4_)
               {
                  §9!_§.addEventListener(Event.INIT,this.§+!+§);
                  loop2:
                  while(true)
                  {
                     §9!_§.addEventListener(Event.COMPLETE,this.§0!X§);
                     addr40:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     this.§+$§();
                     if(!_loc4_)
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              this.§9"§();
                              addr33:
                              while(true)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr40);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                    addr57:
                                 }
                              }
                              continue loop2;
                           }
                        }
                        var _loc1_:Boolean = true;
                        try
                        {
                           _loc2_ = SharedObject.getLocal(§`"$§,§;b§);
                           if(_loc5_)
                           {
                              if(_loc2_.data.useSounds != undefined)
                              {
                                 if(!_loc4_)
                                 {
                                    addr106:
                                 }
                                 addr113:
                                 _loc1_ = _loc2_.data.useSounds;
                                 if(!(_loc4_ && this))
                                 {
                                    §§goto(addr137);
                                 }
                              }
                              else
                              {
                                 _loc2_.data.useSounds = true;
                                 if(_loc5_)
                                 {
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr106);
                        }
                        catch(e:Error)
                        {
                           var _loc3_:* = e;
                           addr137:
                           §@i§(_loc1_);
                           if(!(_loc4_ && _loc3_))
                           {
                              §@!]§.addCallback("purchaseComplete",§?!F§.§;"§.§-Y§);
                           }
                           do
                           {
                              §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
                              do
                              {
                                 §@!]§.addCallback("onUrl",this.§2!n§);
                              }
                              while(_loc4_ && _loc2_);
                              
                           }
                           while(!(_loc5_ || this));
                           
                           return;
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr33);
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §+$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§["4§ = new §&!7§(new § do§());
         }
      }
      
      public function §2!c§() : § do§
      {
         return this.§["4§.§?a§;
      }
      
      protected function §<!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%![§ = new § K§(§if §,§76§,(sUserProgress as §[<§).§4v§);
            loop0:
            while(true)
            {
               this.§-!i§.addChild(this.§%![§);
               loop1:
               while(true)
               {
                  §§push(this.§%![§);
                  loop2:
                  while(true)
                  {
                     §§pop().height = stage.stageHeight;
                     loop3:
                     while(true)
                     {
                        §§push(this.§%![§);
                        loop4:
                        while(true)
                        {
                           §§pop().x = stage.stageWidth - 180;
                           loop5:
                           while(true)
                           {
                              §§push(this.§%![§);
                              loop6:
                              while(true)
                              {
                                 §§push(§;6§.§;"E§);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§break§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§%![§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§;6§.§-!&§);
                                          addr276:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§@"9§);
                                          }
                                          addr162:
                                          if(!(_loc2_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(§;6§.§!C§);
                                          loop25:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                while(_loc2_)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.§>!<§);
                                                }
                                                continue loop7;
                                                addr216:
                                             }
                                             if(!_loc1_)
                                             {
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§pop().addEventListener(§§pop(),this.§-!G§);
                                                loop26:
                                                for(; _loc2_; if(!(_loc1_ && _loc1_))
                                                {
                                                   return;
                                                })
                                                {
                                                   §§push(this.§%![§);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(§;6§.§ !H§);
                                                      addr111:
                                                      addr234:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop25;
                                                         }
                                                         if(_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().addEventListener(§§pop(),this.§5"!§);
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc1_ && _loc2_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr191);
                                                                        §§push(this.§%![§);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  continue loop5;
                                                                  addr237:
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc1_ && _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§%![§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§;6§.§4! §);
                                                                     addr98:
                                                                     while(true)
                                                                     {
                                                                        §§pop().addEventListener(§§pop(),this.§8-§);
                                                                        addr101:
                                                                        while(!_loc1_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §§push(this.§%![§);
                                                                              continue loop27;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop29;
                                                                     }
                                                                     addr29:
                                                                     if(!(_loc2_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr36:
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§pop().§-!d§();
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr145:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§%![§);
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr29);
                                                                              §§goto(addr36);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_ && _loc1_)
                                                                              {
                                                                                 addr191:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr200:
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr265:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§;6§.§>!B§);
                                                                                             addr267:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().addEventListener(§§pop(),this.§8+§);
                                                                                                addr270:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§%![§);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr200);
                                                                                          }
                                                                                       }
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          §§push(§;6§.§%!>§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addEventListener(§§pop(),this.§%!2§);
                                                                                             addr261:
                                                                                             addr82:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§%![§);
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(!(_loc2_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§pop().addEventListener(§§pop(),this.§`"-§);
                                                                                             §§goto(addr92);
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr191:
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                           addr92:
                                                                           continue loop9;
                                                                           addr145:
                                                                        }
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        §§goto(addr101);
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr145);
                                                                  continue loop29;
                                                               }
                                                               addr221:
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr265);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.§5"5§);
                                                         §§goto(addr237);
                                                      }
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr267);
                                             §§goto(addr221);
                                          }
                                          §§goto(addr276);
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
         §§goto(addr279);
      }
      
      protected function §+!+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §+!p§.§]"0§(false);
         }
      }
      
      protected function §0!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §+!p§.§]"0§(true);
         }
      }
      
      public function §?D§(param1:String, param2:§]!;§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.§%![§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     addr56:
                     §§push(LevelManager.§^_§(param1).name);
                     if(_loc4_ || this)
                     {
                        addr67:
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push("");
                  }
                  §§pop().§0"=§(§§pop(),param1,param2,param3);
                  §§goto(addr74);
               }
               §§goto(addr67);
            }
            §§goto(addr56);
         }
         addr74:
      }
      
      public function §`!P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%![§.§&!t§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#6§.§6!z§ = new §2K§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            sUserProgress = new §[<§(§76§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[3§(new §;+§(false));
            while(true)
            {
               §[3§(new §-!@§(false));
               while(true)
               {
                  §[3§(new §4#§(false));
                  loop2:
                  while(true)
                  {
                     §[3§(new §="#§(false));
                     while(true)
                     {
                        §[3§(new §'!W§(false));
                        continue loop2;
                        addr237:
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        §[3§(new §2!e§(false));
                        while(true)
                        {
                           §[3§(new §-"$§(false));
                           while(true)
                           {
                              §[3§(new §4!K§(false));
                              while(true)
                              {
                                 §[3§(new §2@§(false));
                                 §§goto(addr202);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         addr202:
         loop13:
         while(true)
         {
            §[3§(new §1G§(false));
            addr186:
            addr272:
            while(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  §[3§(new §5!v§(false));
                  continue loop13;
               }
               continue loop0;
               addr81:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               addr88:
               if(!(_loc1_ && _loc1_))
               {
                  §[3§(new StateLastWeeksTournamentResults(false));
                  addr95:
                  if(!(_loc1_ && _loc1_))
                  {
                     addr42:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           addr51:
                           if(_loc1_ && this)
                           {
                              addr130:
                              loop17:
                              while(_loc2_ || _loc2_)
                              {
                                 §[3§(new §9!X§(false));
                                 while(!(_loc1_ && this))
                                 {
                                    §[3§(new §1!J§(false));
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       §[3§(new §-k§(false));
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(_loc2_)
                                             {
                                                continue loop11;
                                             }
                                             continue loop12;
                                             addr154:
                                          }
                                          §§goto(addr81);
                                          §§goto(addr95);
                                       }
                                       while(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr237);
                                          §§goto(addr88);
                                       }
                                       while(true)
                                       {
                                          §[3§(new §-!I§(false));
                                          while(true)
                                          {
                                             §[3§(new §@"D§(false));
                                             break loop17;
                                             addr58:
                                             if(_loc2_ || _loc2_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       addr230:
                                       §§goto(addr42);
                                    }
                                    continue loop13;
                                 }
                                 continue loop2;
                                 §§goto(addr51);
                              }
                              while(true)
                              {
                                 §[3§(new §]!K§(false));
                                 §§goto(addr230);
                                 §§goto(addr130);
                              }
                              addr130:
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr79);
               }
               §§goto(addr230);
            }
            while(true)
            {
               §[3§(new §?!3§(false));
               §§goto(addr265);
               §§goto(addr186);
            }
         }
         addr72:
      }
      
      override protected function initStateLoad() : §#`§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§4x§)
            {
               if(!(_loc1_ && this))
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §+!B§.§=>§("assetsUrl");
                        if(_loc2_)
                        {
                           addr60:
                           if(stage.loaderInfo.parameters.buildNumber)
                           {
                           }
                        }
                     }
                  }
                  §§goto(addr60);
               }
            }
            return new §,!D§(true,§#`§.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         }
         §§goto(addr60);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc3_ && _loc3_))
         {
            §4!8§ = true;
            loop0:
            do
            {
               §§push(this.§"0§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop13:
                     while(true)
                     {
                        §§push(this.§"0§);
                        addr209:
                        loop12:
                        while(true)
                        {
                           §§push("2000-");
                           loop10:
                           while(true)
                           {
                              if(§§pop().indexOf(§§pop()) <= -1)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(LevelManager.§;!f§(this.§"0§));
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop());
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          loop7:
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(_loc2_);
                                             loop8:
                                             while(_loc4_)
                                             {
                                                if(§§pop() != this.§"0§)
                                                {
                                                   addr143:
                                                   §+!B§.§1"4§(this.§"0§);
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   addr147:
                                                }
                                                while(true)
                                                {
                                                   this.§"0§ = null;
                                                   loop6:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push("2000-");
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(§§pop().indexOf(§§pop()) > -1)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        §=!w§(§-k§.STATE_NAME);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr123:
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     return;
                                                                     addr91:
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            §=!w§(§?'§.STATE_NAME);
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr58);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr120:
                                                                  this.§5O§(_loc2_);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr91);
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         addr58:
                                                         continue loop0;
                                                         addr32:
                                                      }
                                                      §§goto(addr120);
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          return;
                                          addr217:
                                       }
                                       continue loop12;
                                    }
                                    continue loop10;
                                 }
                              }
                              §=!w§(§-k§.STATE_NAME);
                              §§goto(addr217);
                           }
                        }
                     }
                     addr207:
                  }
                  §§goto(addr32);
               }
               §§goto(addr209);
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr207);
      }
      
      public function §5O§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(LevelManager.§;!f§(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  addr95:
                  addr50:
                  while(true)
                  {
                     LevelManager.§-!4§(param1);
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        addr73:
                        if(_loc3_ || _loc3_)
                        {
                           addr80:
                           §=!w§(§;+§.STATE_NAME);
                           break;
                        }
                     }
                     §§goto(addr20);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.setFirstGameState();
         }
         do
         {
            this.§'!#§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §'!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3P§.§'"=§ = new §9c§();
            loop0:
            while(true)
            {
               §3P§.§'"=§.§5!?§();
               loop1:
               while(true)
               {
                  this.§<!0§();
                  loop2:
                  while(true)
                  {
                     §§push(§"!=§.§`J§);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(!_loc1_)
                           {
                              §%?§.§!,§();
                              loop5:
                              while(true)
                              {
                                 addr185:
                                 if(_loc2_ || _loc1_)
                                 {
                                    §%?§.§&S§();
                                    loop9:
                                    while(_loc2_ || _loc2_)
                                    {
                                       (sUserProgress as §[<§).saveTutorialSeen(§[<§.§-!W§);
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§use§.§[!_§);
                                                   addr113:
                                                   addr167:
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(!_loc1_)
                                                         {
                                                            §%?§.§5!M§();
                                                            continue loop10;
                                                         }
                                                         continue loop9;
                                                         addr131:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§,O§.§0"6§);
                                                         if(_loc1_ && this)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  §%?§.§?@§();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ && _loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_ && _loc1_)
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           §§goto(addr185);
                                                                           continue loop18;
                                                                        }
                                                                        continue loop5;
                                                                        addr178:
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§ !-§.§-n§)
                                                                        {
                                                                           do
                                                                           {
                                                                              this.§,j§ = new §'7§();
                                                                              do
                                                                              {
                                                                                 this.§,j§.§#!h§();
                                                                              }
                                                                              while(!(_loc2_ || this));
                                                                              
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           while(_loc1_ && _loc2_);
                                                                           
                                                                           return;
                                                                           addr50:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §%?§.§`B§(§ !-§.§-n§);
                                                                              continue loop18;
                                                                           }
                                                                           §§goto(addr131);
                                                                           §§goto(addr42);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr98:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §%?§.§case §();
                                                                  }
                                                                  addr237:
                                                               }
                                                               while(true)
                                                               {
                                                                  addr158:
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr98);
                                                         }
                                                         §§goto(addr56);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc1_ && this)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(false);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         addr236:
                                                      }
                                                      §§goto(addr158);
                                                      §§goto(addr113);
                                                   }
                                                }
                                             }
                                             addr157:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push((sUserProgress as §[<§).hasTutorialBeenSeen(§[<§.§8l§));
                                                continue loop3;
                                             }
                                             addr212:
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(String(§,!C§.§;"§.§0!&§).toUpperCase() != §,!C§.§1!G§)
                           {
                              §§goto(addr167);
                              §§push((sUserProgress as §[<§).hasTutorialBeenSeen(§[<§.§-!W§));
                           }
                           §§goto(addr212);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(20);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(int(§1M§));
                                       loop11:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             §§push(int(§5K§));
                                             loop13:
                                             while(_loc4_ || _loc3_)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   loop34:
                                                   while(_loc4_ || param1)
                                                   {
                                                      addr125:
                                                      §§push(this.§%![§);
                                                      if(_loc4_)
                                                      {
                                                         addr87:
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().height = §§pop();
                                                               loop35:
                                                               for(; !_loc5_; while(!(_loc5_ && param1))
                                                               {
                                                                  §5K§ = _loc3_;
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop34;
                                                                  }
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        loop25:
                                                                        while(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             addr243:
                                                                                             while(true)
                                                                                             {
                                                                                                §#6§.§^9§(0,0,_loc2_ - 180,_loc3_);
                                                                                                addr170:
                                                                                                while(true)
                                                                                                {
                                                                                                   setViewSize(_loc2_ - 180,_loc3_);
                                                                                                   break loop35;
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             addr151:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr278:
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr175:
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      addr190:
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc5_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(§§pop() / §§pop() > 25 / 12)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§goto(addr151);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                            §§goto(addr190);
                                                                                                         }
                                                                                                         addr330:
                                                                                                      }
                                                                                                   }
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      addr283:
                                                                                                      addr343:
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr297:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     addr246:
                                                                                                                     addr281:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr296:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop39;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr273:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            addr342:
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   §§goto(addr296);
                                                                                                   §§goto(addr175);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop38;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop10;
                                                                                       §§goto(addr243);
                                                                                    }
                                                                                    return;
                                                                                    addr229:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr246);
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        return;
                                                                        addr69:
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  while(_loc4_ || param1)
                                                                  {
                                                                     §§push(this.§%![§);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr115:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop() - 180;
                                                                           continue loop34;
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                  }
                                                                  loop29:
                                                                  for(; !_loc5_; §§goto(addr105))
                                                                  {
                                                                     §§push(this.§%![§);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop29;
                                                                        }
                                                                        §§goto(addr70);
                                                                        §§goto(addr87);
                                                                     }
                                                                  }
                                                                  addr105:
                                                                  §§goto(addr297);
                                                                  addr131:
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §1M§ = _loc2_;
                                                                     continue loop35;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        this.§"!"§(_loc2_,_loc3_);
                                                                        §§goto(addr131);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr115);
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                }
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr281);
                                 }
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr273);
                              }
                           }
                        }
                        §§goto(addr342);
                     }
                  }
               }
               while(!(_loc5_ && param1))
               {
                  §§goto(addr330);
                  §§push(20);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §"!"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §%?§.setViewSize(param1,param2);
         }
      }
      
      protected function §,b§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(_loc12_)
            {
               var _loc9_:int = 0;
               if(!(_loc11_ && param3))
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(_loc12_ || param1)
                     {
                        §§push(param4);
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc11_ && this))
                              {
                                 addr103:
                                 delete param2[_loc5_][_loc6_.name()];
                                 if(!(_loc12_ || this))
                                 {
                                    continue;
                                 }
                              }
                           }
                           param2[_loc5_].appendChild(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
      }
      
      protected function §break§(param1:§;6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.data == null)
            {
               §+!B§.§&!x§();
               while(true)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               while(true)
               {
                  §+!B§.§6!3§();
                  §§goto(addr77);
               }
               addr86:
            }
            §#m§();
            §§goto(addr86);
         }
         §§goto(addr57);
      }
      
      protected function §@"9§(param1:§;6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §%?§.§#"9§();
         }
      }
      
      protected function §8+§(param1:§;6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §%?§.§9$§();
         }
      }
      
      protected function §%!2§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §'!+§();
         }
      }
      
      protected function §5"5§(param1:§;6§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §8%§.uiInteractionHandler(0,"showCredits",null);
         }
      }
      
      protected function §>!<§(param1:§;6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §8%§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §5"!§(param1:§;6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §%?§.§?@§(true);
         }
      }
      
      protected function §8-§(param1:§;6§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §#m§();
         }
         var _loc2_:int = (param1.data as §2!W§).§9!Y§ - 1;
         if(_loc4_)
         {
            §+!B§.§]!I§(_loc2_.toString());
            do
            {
               §@!]§.§9"'§("flashBrag",param1.data.userId,LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§));
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      protected function §`"-§(param1:§;6§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§;!f§(_loc2_));
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc3_ != _loc2_)
            {
               while(true)
               {
                  §+!B§.§1"4§(_loc2_);
                  addr99:
                  while(true)
                  {
                  }
                  addr85:
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  §=!w§(StateCutScene.STATE_NAME);
                  if(_loc4_)
                  {
                     addr71:
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           LevelManager.§-!4§(_loc3_);
                           addr83:
                           while(!_loc5_)
                           {
                              §§goto(addr85);
                           }
                           §§goto(addr99);
                           §§goto(addr71);
                        }
                        addr80:
                     }
                     return;
                     addr73:
                  }
                  §§goto(addr83);
               }
            }
            while(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
            {
               §§goto(addr80);
               §§goto(addr99);
            }
            return;
         }
         §§goto(addr73);
      }
      
      protected function §-!G§(param1:§;6§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || this)
         {
            §§push(null);
            loop0:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                        addr195:
                     }
                     §§pop().§§slot[3] = §§pop();
                     while(_loc4_)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §@i§(!§3>§());
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(§3>§())
                                 {
                                    if(_loc4_)
                                    {
                                       if(§<!W§() != StatePlay.STATE_NAME)
                                       {
                                          §§push(§<!W§() == §@"D§.STATE_NAME);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§<!W§() == §8"D§.STATE_NAME);
                                                         while(!_loc5_)
                                                         {
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            while(§§pop())
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop().§§slot[2] = §3T§.§67§.§2!c§();
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr97:
                                                                           if(!(_loc4_ || this))
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           addr258:
                                                                           addr258:
                                                                           addr218:
                                                                           §§pop().§§slot[3] = SharedObject.getLocal(§`"$§,§;b§);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                           }
                                                                           return;
                                                                           addr258:
                                                                        }
                                                                        addr231:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           addr249:
                                                                           §§pop().§§slot[3].data.useSounds = §9q§;
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr255:
                                                                              §§push(§§newactivation());
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                     addr256:
                                                                     §§pop().§§slot[3].flush();
                                                                  }
                                                                  else
                                                                  {
                                                                     addr160:
                                                                     §#6§.§6!z§.background.§7!a§();
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr97);
                                                            }
                                                            try
                                                            {
                                                               addr210:
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            catch(e:Error)
                                                            {
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr76);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr231);
                           }
                           addr187:
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr256);
      }
      
      public function § k§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = (AngryBirdsFP11.sUserProgress as §[<§).getStarsForLevel(param1,param2);
         §§push(this.§,a§(param2,_loc3_,0,true));
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc5_ && param2))
            {
               (AngryBirdsFP11.sUserProgress as §[<§).§+"&§(param1,_loc4_);
            }
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         §§push(this.§,a§(_loc2_,_loc3_,_loc4_));
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(!(_loc7_ && _loc3_))
            {
               (AngryBirdsFP11.sUserProgress as §[<§).§%"2§(param1,_loc5_);
            }
         }
      }
      
      private function §,a§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:§2!W§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§0#§.§&]§(LevelManager.§'!O§,param1,param2,param3,_loc5_,param4));
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§9!Y§ - 1;
            if(_loc12_ || this)
            {
               §+!B§.§%!+§(_loc8_.toString());
            }
         }
         return _loc6_;
      }
      
      public function get §0#§() : § K§
      {
         return this.§%![§;
      }
      
      public function get §9!Q§() : §?q§
      {
         return this.§!!,§;
      }
      
      public function §'w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!!,§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr53:
                     this.§!!,§.§""§();
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Version: ");
         if(!_loc1_)
         {
            §§push(§§pop() + §&"D§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() + " ");
               if(!_loc1_)
               {
                  addr43:
                  return §§pop() + §'P§;
               }
            }
         }
         §§goto(addr43);
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!(_loc2_ && _loc2_))
         {
            §+!B§.§""1§(§>f§.§]!Q§,_loc1_.toString(),_loc1_);
            while(true)
            {
               this.§<E§ = true;
               while(_loc3_)
               {
                  super.initializeGame();
                  if(!_loc2_)
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.onKeyDown(param1);
            while(true)
            {
               §§push(this.§9]§);
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§9]§ = String.fromCharCode(param1.keyCode);
                        addr116:
                        while(true)
                        {
                           addr70:
                           while(true)
                           {
                              this.§9]§ = this.§9]§.toLowerCase();
                              addr76:
                              §§goto(addr20);
                           }
                        }
                        addr116:
                     }
                     §§goto(addr116);
                  }
                  else
                  {
                     this.§9]§ += String.fromCharCode(param1.keyCode);
                  }
                  while(true)
                  {
                     §§goto(addr70);
                  }
               }
               if(_loc3_ || _loc2_)
               {
                  addr20:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        continue loop5;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get §0+§() : §'7§
      {
         return this.§,j§;
      }
      
      public function §6!l§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%![§.§[!e§(param1);
         }
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §+!B§.§3!o§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §+!B§.§;W§();
         }
      }
   }
}
