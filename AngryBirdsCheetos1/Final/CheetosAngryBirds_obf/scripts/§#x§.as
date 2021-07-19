package
{
   import § !0§.§<O§;
   import § !G§.§ #§;
   import § !G§.§+!7§;
   import § !G§.§`e§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §%w§.§ p§;
   import §%w§.§,%§;
   import §%w§.§0!6§;
   import §%w§.§>d§;
   import §%w§.§@!V§;
   import §%w§.StateConnecting;
   import §%w§.StateCutScene;
   import §%w§.StatePlay;
   import §%w§.§[!X§;
   import §%w§.§`L§;
   import §&!7§.§,!A§;
   import §-H§.§&c§;
   import §-H§.§@!-§;
   import §1!K§.§;'§;
   import §3!T§.§6t§;
   import §5!M§.§<e§;
   import §8!B§.§[]§;
   import §9!=§.§[!6§;
   import §=A§.§5r§;
   import §?m§.§7?§;
   import §?p§.§@d§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §default§.§%<§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §#x§ extends §<O§
   {
      
      private static var §<p§:Class;
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §;#§:int = 750;
      
      public static const §0h§:int = 500;
      
      public static const §9h§:Boolean = false;
      
      public static const §%X§:int = 3000;
      
      public static var §`!W§:String = "../service/";
      
      public static var §?%§:String = "http://test.angrybirds-cheetos-test.appspot.com/";
      
      public static var §"!3§:String = "/webservices/game/";
      
      public static const §=3§:String = "../mail";
      
      public static var §+r§:String = "initialisesession";
      
      public static var §%!K§:String = "levelstart";
      
      public static var §[0§:String = "purchasepowerup";
      
      public static var §1P§:String = "levelcomplete";
      
      public static var §=1§:String = "updatespotprizewin";
      
      public static var §<!0§:String = "refreshsession";
      
      private static var §!!U§:Class;
      
      private static var §%!@§:Class;
      
      private static var §+!B§:Class;
      
      private static var §4z§:Class;
      
      public static var §[Y§:§[]§ = null;
      
      public static var §;!7§:Boolean = true;
      
      public static var §[!<§:MovieClip = null;
      
      public static var §=!!§:§#x§ = null;
      
      public static var §#t§:Sprite = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<p§ = §4!7§;
            loop0:
            while(true)
            {
               VERSION = "1.0.1.1";
               loop1:
               while(true)
               {
                  §;#§ = 750;
                  loop2:
                  while(true)
                  {
                     §0h§ = 500;
                     loop3:
                     while(true)
                     {
                        §9h§ = false;
                        while(true)
                        {
                           §%X§ = 3000;
                           continue loop1;
                           loop18:
                           while(!(_loc1_ && _loc1_))
                           {
                              §+!B§ = § n§;
                              loop19:
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop18;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §4z§ = §<$§;
                                 while(true)
                                 {
                                    §[Y§ = null;
                                    continue loop0;
                                    addr67:
                                    if(_loc1_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          §=!!§ = null;
                                          while(true)
                                          {
                                             if(_loc2_ || §#x§)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr67);
                                                }
                                                else
                                                {
                                                   addr83:
                                                   while(_loc2_ || _loc1_)
                                                   {
                                                      §[!<§ = null;
                                                      continue loop23;
                                                   }
                                                   while(true)
                                                   {
                                                      §[0§ = "purchasepowerup";
                                                      break loop19;
                                                      §§goto(addr83);
                                                   }
                                                   addr83:
                                                   addr198:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §<!0§ = "refreshsession";
                                             addr167:
                                             while(true)
                                             {
                                                §!!U§ = § !"§;
                                                addr148:
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   if(!(_loc1_ && §#x§))
                                                   {
                                                      §%!@§ = §'l§;
                                                      continue loop18;
                                                   }
                                                   continue loop1;
                                                   if(!(_loc1_ && §#x§))
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          addr172:
                                       }
                                       while(_loc2_)
                                       {
                                          addr179:
                                          if(_loc2_ || §#x§)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                             §=1§ = "updatespotprizewin";
                                             §§goto(addr172);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §"!3§ = "/webservices/game/";
                                                addr222:
                                                while(true)
                                                {
                                                   §=3§ = "../mail";
                                                   continue loop2;
                                                }
                                                §§goto(addr179);
                                             }
                                             addr227:
                                          }
                                       }
                                       while(_loc2_)
                                       {
                                          while(true)
                                          {
                                             §%!K§ = "levelstart";
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr222);
                                       addr177:
                                       addr203:
                                    }
                                    §§goto(addr167);
                                 }
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr37);
                              }
                              while(true)
                              {
                                 §1P§ = "levelcomplete";
                                 §§goto(addr177);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      private var §6L§:§6t§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var § W§:SharedObject;
      
      private var callObject:Object;
      
      public function §#x§(param1:CheetosAngryBirdsCanvas)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var canvas:CheetosAngryBirdsCanvas = param1;
         loop0:
         while(true)
         {
            this.§6L§ = new §6t§();
            loop1:
            while(true)
            {
               Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
               while(true)
               {
                  addr49:
                  while(true)
                  {
                     §"!L§.enabled = true;
                     continue loop1;
                  }
                  addr33:
                  if(_loc4_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §<]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §;!7§ = param1;
            do
            {
               §!!>§.§?^§(§;!7§);
            }
            while(_loc2_);
            
         }
      }
      
      public static function §7!S§() : Boolean
      {
         return §;!7§;
      }
      
      public static function §`! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§!!>§.§-!8§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr94:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §!!>§.playSound("ThemeMusic","Channel_Theme",100);
                           }
                           addr66:
                        }
                        while(true)
                        {
                           if(!(_loc2_ && §#x§))
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr62:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §<!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §#x§)
         {
            §§push(§!!>§.§-!8§("Channel_Theme"));
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr59:
                     §!!>§.§-!8§("Channel_Theme").§ &§();
                  }
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function get §9!E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§ W§)
            {
               if(!_loc2_)
               {
                  return this.§ W§.data.mRememberMeToggled_Credit;
               }
            }
         }
         return false;
      }
      
      public function set §9!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§ W§)
            {
               if(_loc2_ || param1)
               {
                  this.§ W§.data.mRememberMeToggled_Credit = param1;
                  do
                  {
                     this.§ W§.flush();
                  }
                  while(_loc3_);
                  
                  addr65:
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get §]s§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§ W§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr54);
               }
            }
            return false;
         }
         addr54:
         return this.§ W§.data.mRememberMeToggled_CreditCheetosBag;
      }
      
      public function set §]s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§ W§)
            {
               do
               {
                  this.§ W§.data.mRememberMeToggled_CreditCheetosBag = param1;
                  do
                  {
                     this.§ W§.flush();
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(_loc2_ && this);
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      protected function §!F§(param1:ByteArray) : void
      {
      }
      
      private function §'h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§7?§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr162:
                           while(true)
                           {
                              §§push(§7?§.§4!H§);
                              addr127:
                              while(true)
                              {
                                 §§push(§§pop().slingshot);
                                 addr128:
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    addr130:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr131:
                                       while(true)
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr161:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(§7?§.§4!H§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop().slingshot);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop().mDragging);
                                          if(_loc3_ || _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          addr85:
                                          if(!_loc2_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc2_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§7?§.§4!H§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().slingshot);
                                                               addr115:
                                                               while(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§pop().cancelDragging();
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     addr24:
                                                                     while(true)
                                                                     {
                                                                        §`e§.§[P§();
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr128);
                                                            }
                                                            addr114:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr24);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr161);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr115);
                                    }
                                    break;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr127);
                           }
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      private function §;!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §`e§.§8$§();
         }
      }
      
      override protected function initStateLoad() : §@!-§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§@!V§));
         §§push(true);
         §§push(§@!-§.§9!P§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_ || _loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc2_ && _loc2_))
                        {
                           return new §§pop().§@!V§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr76:
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr54);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr52);
      }
      
      private function §,s§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         §§push(stage.stageWidth / §;#§);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(stage.stageHeight / §0h§);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() < _loc3_)
               {
                  if(_loc7_ || _loc2_)
                  {
                     §1C§.scaleX = §1C§.scaleY = _loc2_;
                     if(!(_loc8_ && param1))
                     {
                        §7?§.§6!T§(§1C§.x,§1C§.y,stage.stageWidth,stage.stageWidth * (§0h§ / §;#§));
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              §7?§.§6!T§(§1C§.x,§1C§.y,_loc4_,_loc5_);
                              if(!(_loc8_ && _loc2_))
                              {
                                 break;
                              }
                              loop2:
                              for(; _loc8_; while(true)
                              {
                                 _loc5_ = §§pop();
                                 continue loop2;
                              })
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Number(stage.stageHeight));
                                    if(_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    addr160:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr130:
                        }
                        else
                        {
                           addr92:
                        }
                        return;
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(stage.stageHeight * (§;#§ / §0h§));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr109:
                  }
                  §§goto(addr160);
               }
               else
               {
                  §1C§.scaleX = §1C§.scaleY = _loc3_;
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr109);
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr137);
         }
         §§goto(addr130);
      }
      
      protected function §`J§(param1:FullScreenEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,s§(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               §@d§.§%!O§.§;3§();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §7e§.§[!$§(§5r§.§6! §(this.§6L§.getFileAsString("Chapters.json")));
                     continue loop1;
                     addr43:
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         try
         {
            §,!A§.§9!M§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §+j§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc2_)
         {
            §'^§.§`0§(§"!L§.§?P§,_loc1_.toString(),_loc1_);
            do
            {
               §7?§.§;!E§(§+!7§.§5]§(§+!B§),§+!7§.§5]§(§4z§));
               do
               {
                  §7?§.§9!§(this.§6L§.§%v§,§%<§.§=+§(),this.§!z§);
               }
               while(_loc3_);
               
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §!z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=T§(StateConnecting.§9!P§);
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(§7?§.§4J§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc5_ && this))
                  {
                     addr35:
                     §7?§.§4J§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  if(!§?!1§().isGenericState())
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() != §&c§.STATE_STATUS_COMPLETED)
                           {
                              continue;
                           }
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§ #§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §?!1§().mName);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + " New State = ");
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + §?!1§().mNextState);
                           }
                        }
                        §§pop().log(§§pop());
                        addr127:
                        while(true)
                        {
                           §=T§(§?!1§().mNextState);
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr47);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr35);
      }
      
      override public function getAppWidth() : Number
      {
         return §;#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0h§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §%X§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            if(stage != null)
            {
               if(_loc4_ || this)
               {
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr99:
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     addr120:
                     §§push(§§pop().substr(0,_loc2_));
                     if(!(_loc3_ && _loc1_))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           addr135:
                           if(!(_loc4_ || this))
                           {
                              loop8:
                              while(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       if(§§pop() > 0)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr99);
                                                }
                                                §§goto(addr120);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr160:
                                                while(!_loc3_)
                                                {
                                                   §§push(int(§§pop().indexOf(".")));
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop8;
                                                   }
                                                }
                                                addr171:
                                                while(true)
                                                {
                                                   §§push(§§pop() == null);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr183:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop8;
                                                            }
                                                            addr183:
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      addr181:
                                                   }
                                                   §§goto(addr183);
                                                }
                                             }
                                          }
                                          §§goto(addr135);
                                       }
                                       break;
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr42);
                              }
                              while(!(_loc3_ && _loc2_))
                              {
                                 §§push(_loc1_);
                                 while(true)
                                 {
                                    §§push(§§pop().length > 0);
                                    if(_loc3_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       addr157:
                                       §§goto(addr25);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr183);
                              }
                              while(true)
                              {
                                 §§goto(addr171);
                              }
                              addr218:
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr218);
            }
            addr25:
            while(§§pop())
            {
               continue loop5;
            }
            loop12:
            while(true)
            {
               §§push(VERSION);
               if(!(_loc4_ || this))
               {
                  break;
               }
               if(_loc4_)
               {
                  return §§pop().replace("{svn_version}","local dev build");
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§push("-");
                        if(!_loc3_)
                        {
                           if(§§pop().search(§§pop()) == -1)
                           {
                              if(!(_loc4_ || _loc1_))
                              {
                                 break;
                              }
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(_loc1_);
                                 break loop12;
                              }
                           }
                           else
                           {
                              addr84:
                              _loc1_ = _loc1_.replace("-",".");
                              addr81:
                           }
                           continue;
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr84);
               }
            }
            return §§pop();
         }
         §§goto(addr168);
      }
      
      public function §9!2§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&c§ = §?!1§();
         if(!(_loc2_ && _loc2_))
         {
            if(_loc1_.mName == StateConnecting.§9!P§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr60:
                  §=T§(StateConnecting.§9!P§);
               }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
