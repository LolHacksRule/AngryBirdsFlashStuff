package
{
   import §!J§.§[&§;
   import §%!$§.§=m§;
   import §&! §.§%!Q§;
   import §,!D§.§5E§;
   import §0v§.§##§;
   import §1h§.§9!1§;
   import §4!6§.§,Y§;
   import §<!+§.§[!!§;
   import §<!U§.§ !#§;
   import §<!U§.§0"§;
   import §<!U§.§5!5§;
   import §<!U§.§6l§;
   import §<!U§.§<K§;
   import §<!U§.StateConnecting;
   import §<!U§.StateCutScene;
   import §<!U§.StatePlay;
   import §<!U§.§^!§;
   import §<o§.§2%§;
   import §?7§.§&!5§;
   import §?P§.§;y§;
   import §?w§.§!&§;
   import §@,§.§"j§;
   import §@,§.§4h§;
   import §@,§.§8!#§;
   import §[!#§.§6v§;
   import §]2§.§[4§;
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
   import §return§.§#!D§;
   
   public class §,l§ extends §2%§
   {
      
      private static var §;C§:Class;
      
      public static const VERSION:String = "0.0.0.10";
      
      public static const §"L§:int = 750;
      
      public static const §#S§:int = 500;
      
      public static const §!N§:Boolean = false;
      
      public static const §`!?§:int = 3000;
      
      public static var §2r§:String = "../service/";
      
      public static var §]y§:String = "http://dev-1.angrybirds-cheetos.appspot.com/";
      
      public static var §'g§:String = "/webservices/game/";
      
      public static const §%!§:String = "../mail";
      
      public static var §2!!§:String = "initialisesession";
      
      public static var §1!Q§:String = "levelstart";
      
      public static var §9p§:String = "purchasepowerup";
      
      public static var §#!8§:String = "levelcomplete";
      
      public static var §]!N§:String = "updatespotprizewin";
      
      public static var §""§:String = "refreshsession";
      
      private static var §!H§:Class;
      
      private static var §[2§:Class;
      
      private static var §=!&§:Class;
      
      private static var §<%§:Class;
      
      public static var §3!,§:§9!1§ = null;
      
      public static var §`!D§:Boolean = true;
      
      public static var §4o§:MovieClip = null;
      
      public static var §,?§:§,l§ = null;
      
      public static var §@d§:Sprite = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,l§))
         {
            §;C§ = §7!H§;
            while(true)
            {
               VERSION = "0.0.0.10";
               loop1:
               while(true)
               {
                  §"L§ = 750;
                  addr275:
                  while(true)
                  {
                     §#S§ = 500;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr239);
      }
      
      private var § ?§:§;y§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §#!5§:SharedObject;
      
      private var callObject:Object;
      
      public function §,l§(param1:CheetosAngryBirdsCanvas)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var canvas:CheetosAngryBirdsCanvas = param1;
         while(true)
         {
            this.§ ?§ = new §;y§();
            loop1:
            while(_loc4_)
            {
               Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
               loop2:
               while(true)
               {
                  addr37:
                  while(true)
                  {
                     §%!Q§.enabled = true;
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function §6!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §`!D§ = param1;
            do
            {
               §=m§.§=!J§(§`!D§);
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §3n§() : Boolean
      {
         return §`!D§;
      }
      
      public static function §'!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§=m§.§,'§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr90:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §=m§.playSound("ThemeMusic","Channel_Theme",100);
                        }
                        if(_loc2_ || §,l§)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr53:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            §§push(§=m§.§,'§("Channel_Theme"));
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop().§9y§());
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(_loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  §§goto(addr90);
               }
               §§goto(addr53);
            }
            else
            {
               §§goto(addr88);
            }
         }
      }
      
      public static function §<A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§=m§.§,'§("Channel_Theme"));
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr55:
                     §=m§.§,'§("Channel_Theme").§,w§();
                  }
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function get §+d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#!5§)
            {
               if(!_loc2_)
               {
                  §§goto(addr43);
               }
            }
            return false;
         }
         addr43:
         return this.§#!5§.data.mRememberMeToggled_Credit;
      }
      
      public function set §+d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§#!5§)
            {
               do
               {
                  this.§#!5§.data.mRememberMeToggled_Credit = param1;
                  do
                  {
                     this.§#!5§.flush();
                  }
                  while(_loc2_ && this);
                  
               }
               while(!_loc3_);
               
               addr66:
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get §#! §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§#!5§)
            {
               if(!_loc2_)
               {
                  §§goto(addr48);
               }
            }
            return false;
         }
         addr48:
         return this.§#!5§.data.mRememberMeToggled_CreditCheetosBag;
      }
      
      public function set §#! §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§#!5§)
            {
               if(_loc2_)
               {
                  this.§#!5§.data.mRememberMeToggled_CreditCheetosBag = param1;
                  do
                  {
                     this.§#!5§.flush();
                  }
                  while(!(_loc2_ || this));
                  
                  addr70:
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §=Y§(param1:ByteArray) : void
      {
      }
      
      private function §2,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(§[&§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr174:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc2_ && this)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§[&§.§&!'§);
                                    if(!(_loc2_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().slingshot);
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(§§pop().mDragging);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc3_)
                                                      {
                                                         §§push(§[&§.§&!'§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().slingshot);
                                                            addr104:
                                                            while(true)
                                                            {
                                                               §§pop().cancelDragging();
                                                               addr105:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr112:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr112:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§[&§.§&!'§);
                                                                        break loop9;
                                                                     }
                                                                     addr177:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(_loc2_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         return;
                                                         addr46:
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §"j§.§ g§();
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§goto(addr39);
                                                      }
                                                      §§goto(addr105);
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr46);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                continue loop0;
                                             }
                                             addr117:
                                          }
                                          §§goto(addr104);
                                       }
                                       break;
                                    }
                                    §§goto(addr103);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr117);
                                 }
                              }
                              addr158:
                           }
                           §§goto(addr97);
                        }
                        continue;
                        addr148:
                     }
                     while(true)
                     {
                        §§pop();
                     }
                     §§goto(addr177);
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      private function § I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"j§.§0l§();
         }
      }
      
      private function §,!$§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         §§push(stage.stageWidth / §"L§);
         if(_loc8_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(stage.stageHeight / §#S§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() < _loc3_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     addr71:
                     §;0§.scaleX = §;0§.scaleY = _loc2_;
                     if(!_loc7_)
                     {
                        §[&§.§7!V§(§;0§.x,§;0§.y,stage.stageWidth,stage.stageWidth * (§#S§ / §"L§));
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr127);
                        }
                        else
                        {
                           §§push(stage.stageHeight * (§"L§ / §#S§));
                           if(_loc8_ || _loc2_)
                           {
                              addr190:
                              §§push(Number(§§pop()));
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr192:
                              loop3:
                              while(true)
                              {
                                 §§push(Number(stage.stageHeight));
                                 if(_loc8_ || _loc2_)
                                 {
                                    addr158:
                                    _loc5_ = §§pop();
                                    while(_loc7_ && this)
                                    {
                                       continue loop3;
                                       §§goto(addr158);
                                    }
                                    while(true)
                                    {
                                       §[&§.§7!V§(§;0§.x,§;0§.y,_loc4_,_loc5_);
                                       if(_loc8_ || _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                                 continue;
                                 addr159:
                                 addr127:
                                 return;
                              }
                           }
                           addr125:
                        }
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr166);
               }
               else
               {
                  §;0§.scaleX = §;0§.scaleY = _loc3_;
                  if(_loc8_)
                  {
                     §§goto(addr125);
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr190);
         }
         §§goto(addr71);
      }
      
      protected function §7!"§(param1:FullScreenEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!$§(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               §#!D§.§!!L§.§5!W§();
               while(true)
               {
                  addr37:
                  addr28:
                  while(true)
                  {
                     §[!!§.§4;§(§5E§.§,§(this.§ ?§.getFileAsString("Chapters.json")));
                     continue loop0;
                  }
                  if(!(_loc4_ && this))
                  {
                     while(false)
                     {
                        §§goto(addr37);
                     }
                     try
                     {
                        §,Y§.§[[§("flashIsReady");
                     }
                     catch(e:Error)
                     {
                     }
                     return;
                     addr35:
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      private function §%k§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc2_ || this)
         {
            §%!Q§.§4$§(§%!Q§.§+!9§,_loc1_.toString(),_loc1_);
            while(true)
            {
               §[&§.§"F§(§8!#§.§9C§(§=!&§),§8!#§.§9C§(§<%§));
               while(_loc2_ || _loc1_)
               {
                  §[&§.§<!5§(this.§ ?§.§#!J§,§&!5§.§^!G§(),this.§?i§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §?i§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §[!K§(StateConnecting.§`O§);
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            §§push(§[&§.§?!§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  addr43:
                  if(!(_loc4_ && param1))
                  {
                     §§push(§[&§.§?!§);
                  }
                  §§push(super.updateState(param1));
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     if(!§2! §().isGenericState())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr96:
                           while(§§pop() == §[4§.STATE_STATUS_COMPLETED)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(§4h§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §2! §().mName);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + " New State = ");
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + §2! §().mNextState);
                                    }
                                 }
                                 §§pop().log(§§pop());
                              }
                              do
                              {
                                 §[!K§(§2! §().mNextState);
                              }
                              while(!_loc5_);
                              
                              if(!(_loc4_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        addr95:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        §§goto(addr96);
                     }
                     return §§pop();
                  }
                  §§goto(addr95);
               }
               §§goto(addr43);
            }
            §§pop().update(param1);
         }
         §§goto(addr43);
      }
      
      override public function getAppWidth() : Number
      {
         return §"L§;
      }
      
      override public function getAppHeight() : Number
      {
         return §#S§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §`!?§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            if(stage != null)
            {
               loop0:
               while(true)
               {
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_);
                        loop3:
                        for(; _loc3_; while(_loc3_ || this)
                        {
                           §§goto(addr161);
                           §§push(int(§§pop().indexOf(".")));
                           §§goto(addr90);
                        })
                        {
                           §§push(§§pop() == null);
                           if(!(_loc4_ && this))
                           {
                              §§push(!§§pop());
                              if(_loc3_ || _loc1_)
                              {
                                 addr184:
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr187:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          §§goto(addr129);
                                       }
                                    }
                                    addr186:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          continue loop0;
                                       }
                                       addr162:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             if(§§pop() > 0)
                                             {
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr90:
                                                      §§push(_loc1_);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().substr(0,_loc2_));
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         addr117:
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue;
                                                      }
                                                      addr129:
                                                      §§goto(addr29);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr117);
                                             }
                                             break;
                                          }
                                          addr161:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop15;
                                          }
                                       }
                                       §§goto(addr48);
                                    }
                                    §§goto(addr29);
                                 }
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr184);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr29:
            while(true)
            {
               §§push(§§pop().length > 0);
               if(_loc4_)
               {
                  continue loop4;
               }
            }
            loop10:
            while(true)
            {
               §§push(VERSION);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push("-");
                        addr70:
                        while(true)
                        {
                           §§push(§§pop().replace(§§pop(),"."));
                        }
                        addr67:
                     }
                  }
                  loop13:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop14:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push("-");
                              if(!_loc3_)
                              {
                                 continue loop13;
                              }
                              if(§§pop().search(§§pop()) == -1)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(_loc1_);
                                       break loop14;
                                    }
                                    continue;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr67);
                           }
                           break loop14;
                        }
                     }
                  }
               }
               return §§pop();
            }
            return §§pop().replace("{svn_version}","local dev build");
         }
         §§goto(addr162);
      }
      
      public function §^!=§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[4§ = §2! §();
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_.mName == StateConnecting.§`O§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  §[!K§(StateConnecting.§`O§);
               }
            }
         }
      }
   }
}
