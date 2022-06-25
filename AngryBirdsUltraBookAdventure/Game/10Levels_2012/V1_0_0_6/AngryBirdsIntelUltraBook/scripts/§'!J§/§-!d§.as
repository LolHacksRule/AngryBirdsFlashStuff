package §'!J§
{
   import §!!K§.§else§;
   import §!;§.§9p§;
   import §#!O§.§9-§;
   import §+0§.§,!E§;
   import §-%§.§+V§;
   import §1!E§.§1!=§;
   import §2!H§.§!q§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §6!Y§.§0!x§;
   import §8!;§.§3;§;
   import §;H§.§#!G§;
   import §;H§.§%!D§;
   import §;H§.§;W§;
   import §;H§.StatePlay;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§#!`§;
   import §?N§.§?1§;
   import §?N§.§]!e§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§%!M§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §-!d§ extends StatePlay
   {
      
      private static const § A§:Number = -5000.0;
      
      private static const §@r§:Number = 10000.0;
      
      public static const § ]§:int = 50;
      
      public static var §6![§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § A§ = -5 * 1000;
            while(true)
            {
               §@r§ = 10 * 1000;
               while(!(_loc1_ && _loc1_))
               {
                  § ]§ = 50;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      private var §"!8§:Number = -5000.0;
      
      private var §5<§:int = 0;
      
      private var §;!w§:Number = 0;
      
      private var §%C§:Number = 0;
      
      private var §'&§:Number;
      
      protected var §@e§:§0!x§;
      
      private var §2!f§:§3;§;
      
      private var §+Z§:Boolean = false;
      
      private var §^L§:Boolean = false;
      
      private var §&1§:§?1§;
      
      public function §-!d§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§'u§) : §+V§
      {
         return new §9p§(param1);
      }
      
      protected function §;v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@e§ = §[!P§.§>#§.§]!q§(LevelManager.§1H§(LevelManager.§%n§).name,LevelManager.§%n§);
         }
      }
      
      protected function §3!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§^!c§.§2!w§ as §[!P§).§;! §(LevelManager.§%n§,this.§@e§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §@!J§.§[!G§(§%!M§.§4U§,LevelManager.§%n§);
               while(true)
               {
                  this.§;v§();
                  while(!(_loc1_ && this))
                  {
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     this.§3!-§();
                     loop3:
                     while(true)
                     {
                        this.§2!f§.levelStarted(this.§@e§,LevelManager.§%n§);
                        do
                        {
                           this.§+Z§ = false;
                           continue loop3;
                        }
                        while(_loc1_);
                        
                        return;
                     }
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr76);
                  }
               }
            }
         }
         §§goto(addr99);
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
               this.§2!f§.activate();
               loop1:
               while(true)
               {
                  if(this.§+Z§)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §[!D§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
                        }
                        addr119:
                     }
                     while(true)
                     {
                        addr91:
                        loop4:
                        for(; _loc1_ || _loc1_; if(!(_loc2_ && _loc1_))
                        {
                           return;
                        })
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           this.§'&§ = 2500;
                           loop5:
                           while(true)
                           {
                              (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§2a§);
                              loop6:
                              do
                              {
                                 this.§'!T§();
                                 while(!_loc2_)
                                 {
                                    §#!`§.§+!q§(§&!m§);
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              while(_loc2_ && _loc1_);
                              
                              continue loop4;
                           }
                        }
                     }
                     addr125:
                  }
                  while(true)
                  {
                     §&!m§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                     §§goto(addr91);
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §?C§ = true;
            loop0:
            while(true)
            {
               §&!m§ = new §4`§(this);
               loop1:
               while(true)
               {
                  §&!m§.init(§ !I§.§3!a§.Views.View_FacebookLevelPlay[0]);
                  loop2:
                  while(true)
                  {
                     this.§2!f§ = new §3;§(§&!m§);
                     loop3:
                     while(_loc2_)
                     {
                        §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
                        loop4:
                        while(!_loc1_)
                        {
                           continue loop1;
                           while(true)
                           {
                              §;!j§();
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §5!P§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§@e§.data;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.u == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  if(_loc2_.a)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_.a;
      }
      
      private function §&!s§(param1:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               if(!(_loc7_ && this))
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(!_loc7_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc8_)
                           {
                              addr135:
                              var _loc5_:int = 0;
                              if(_loc8_ || _loc3_)
                              {
                                 var _loc6_:* = _loc3_;
                                 if(_loc8_)
                                 {
                                    addr194:
                                    if(§§hasnext(_loc6_,_loc5_))
                                    {
                                       §§push(§§nextvalue(_loc5_,_loc6_));
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr170:
                                             §§push(_loc2_);
                                             if(!(_loc7_ && this))
                                             {
                                                addr178:
                                                §§push(§§pop() + (_loc4_ + ","));
                                             }
                                             _loc2_ = §§pop();
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr178);
                                    }
                                    addr197:
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc7_)
                                       {
                                          addr209:
                                          §§push(§§pop().substr(0,_loc2_.length - 1));
                                          if(!_loc8_)
                                          {
                                          }
                                          break loop2;
                                       }
                                       _loc2_ = §§pop();
                                       addr217:
                                       §§push(_loc2_);
                                       break loop2;
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr217);
                        }
                        else
                        {
                           _loc3_.push(_loc2_.substr(0,3));
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc8_)
                              {
                                 §§push(3);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop().substr(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr46:
                                       _loc2_ = §§pop();
                                       if(_loc7_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr46);
                           }
                        }
                        §§goto(addr135);
                     }
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr126);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyUp(param1);
            if(_loc4_)
            {
               if(!AngryBirdsFP11.§@a§)
               {
                  if(_loc4_)
                  {
                     §§goto(addr39);
                  }
               }
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || _loc3_)
               {
                  if(Keyboard.M === _loc2_)
                  {
                     addr69:
                     §§push(0);
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                  }
                  return;
               }
               §§goto(addr69);
            }
         }
         addr39:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §§push(§#!`§.isOpen);
            if(_loc4_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc5_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr44:
                        §§pop();
                        if(_loc4_)
                        {
                           addr47:
                           §§push(§]!e§.§`!V§());
                           if(_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr59:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       return §,!E§.STATE_STATUS_RUNNING;
                                    }
                                 }
                              }
                              addr77:
                              var _loc2_:* = §§pop();
                              if(!_loc5_)
                              {
                                 this.§1!G§(param1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§^!c§.§5!Y§.objects.mSardineCanAdded);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(_loc4_)
                                          {
                                             this.§+I§(param1);
                                             while(true)
                                             {
                                                addr120:
                                                if(!(_loc5_ && this))
                                                {
                                                   return §,!E§.STATE_STATUS_COMPLETED;
                                                }
                                             }
                                          }
                                          continue loop0;
                                          addr309:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(mNextState != §%!D§.§"!s§)
                                          {
                                             if(mNextState != §#!G§.§"!s§)
                                             {
                                                loop5:
                                                while(mNextState)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            return §,!E§.STATE_STATUS_COMPLETED;
                                                         }
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§'&§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().§'&§ = §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(this.§'&§ < 0);
                                                                        loop19:
                                                                        while(!_loc5_)
                                                                        {
                                                                           addr194:
                                                                           §§push(§§pop());
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr203:
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ || this))
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§push(this.§^L§);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr161:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                loop12:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §[!D§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
                                                                                                         addr285:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ && _loc2_)
                                                                                                            {
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            this.§+Z§ = true;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr261:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr262:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr263:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr265:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§^L§);
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             addr278:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr225:
                                                                                                                                    }
                                                                                                                                    §§goto(addr225);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr194);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr311);
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                }
                                                                                                break loop5;
                                                                                                return §,!E§.STATE_STATUS_COMPLETED;
                                                                                                addr174:
                                                                                             }
                                                                                             §§goto(addr262);
                                                                                          }
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    §§goto(addr161);
                                                                                 }
                                                                                 addr204:
                                                                              }
                                                                              §§goto(addr174);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr276:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                         }
                                                      }
                                                      else if(!(_loc5_ && param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   else if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(false)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr285);
                                                         §§goto(addr106);
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   else
                                                   {
                                                      addr113:
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr120);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§push(super.run(param1));
                                                if(!_loc5_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                var _loc3_:* = §§pop();
                                                return §,!E§.STATE_STATUS_RUNNING;
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr276);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr59);
                        }
                        §§push(this.§2!f§.run(param1));
                        if(!_loc5_)
                        {
                           §§goto(addr77);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr77);
            }
            §§goto(addr44);
         }
         §§goto(addr47);
      }
      
      private function §`!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^L§ = true;
         }
         do
         {
            §[!D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
         }
         while(_loc3_ && param1);
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc1_)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§%n§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §[!D§.getScore();
         if(_loc5_ || _loc2_)
         {
            §@!J§.§[!G§(§%!M§.§]-§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§^!c§.§5!Y§ as §9-§).§=!$§();
         if(!_loc4_)
         {
            §@!J§.§+k§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("showTutorial");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr251:
                        §§push(4);
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr327);
                  }
                  else
                  {
                     §§push("PAUSE");
                     if(_loc5_ || param3)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 §§push(1);
                                 if(_loc6_ && param3)
                                 {
                                 }
                              }
                              else
                              {
                                 addr307:
                                 §§push(6);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr315:
                                 }
                              }
                              §§goto(addr327);
                           }
                           else
                           {
                              §§push("RESTART_LEVEL");
                              if(_loc5_)
                              {
                                 addr184:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr195:
                                          §§push(2);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§goto(addr327);
                                          }
                                          else
                                          {
                                             §§goto(addr315);
                                          }
                                       }
                                       else
                                       {
                                          addr218:
                                          §§push(3);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§goto(addr327);
                                          }
                                          else
                                          {
                                             §§goto(addr322);
                                          }
                                       }
                                       §§goto(addr327);
                                    }
                                    else
                                    {
                                       §§push("CLOSE_TUTORIAL");
                                       if(_loc5_ || param1)
                                       {
                                          addr212:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             addr215:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr218);
                                                }
                                                else
                                                {
                                                   §§goto(addr307);
                                                }
                                             }
                                             else
                                             {
                                                §§push("RESTART_LEVEL");
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      addr243:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      else
                                                      {
                                                         §§push("CLOSE_TUTORIAL_POWERUP");
                                                         if(!_loc6_)
                                                         {
                                                            addr258:
                                                            §§push(_loc4_);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§goto(addr327);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr315);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               else
                                                               {
                                                                  §§push("ZOOM_IN");
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        addr289:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr318:
                                                                           if("ZOOM_OUT" !== _loc4_)
                                                                           {
                                                                              addr327:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §#!`§.§]y§(§&!m§,"ALL",true);
                                                                                    §#!`§.§+!q§(§&!m§,true);
                                                                                    break;
                                                                                    addr112:
                                                                                    addr104:
                                                                                 case 1:
                                                                                    mNextState = §"1§();
                                                                                    break;
                                                                                    addr98:
                                                                                 case 2:
                                                                                    §;W§.§&!5§();
                                                                                    mNextState = §;W§.§"!s§;
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                    addr90:
                                                                                 case 3:
                                                                                    §#!`§.§<z§();
                                                                                    addr67:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr112);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr98);
                                                                                    }
                                                                                    break;
                                                                                 case 4:
                                                                                    break;
                                                                                 case 5:
                                                                                    §#!`§.§<z§();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr45:
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 6:
                                                                                    §[!D§.doUserZoom(true);
                                                                                    break;
                                                                                    addr51:
                                                                                 case 7:
                                                                                    §[!D§.doUserZoom(false);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr45);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr90);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr67);
                                                                                          }
                                                                                          §§goto(addr104);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr51);
                                                                                       }
                                                                                    }
                                                                              }
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr212);
                           }
                        }
                        §§goto(addr289);
                     }
                     §§goto(addr212);
                  }
               }
               §§goto(addr243);
            }
            §§goto(addr184);
         }
         §§goto(addr195);
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.initActivation();
         }
         do
         {
            this.§2!f§.§%O§ = false;
         }
         while(_loc2_);
         
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function onHideMightyEagle() : void
      {
      }
      
      override protected function useMightyEagle() : void
      {
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §[!D§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §#!n§.getValue());
         if(!_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(_loc5_ || param1)
               {
                  addr85:
                  _loc4_ = Math.min(_loc2_,§#!n§.getValue() + param1 * § ]§);
                  if(!_loc6_)
                  {
                     §#!n§.assign(_loc4_);
                  }
               }
               while(true)
               {
               }
               addr106:
            }
            while(true)
            {
               this.§2!f§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr106);
            }
            return;
         }
         §§goto(addr85);
      }
      
      private function §+I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if((§&!m§.getItemByName("MovieClip_Boom") as §1!=§).§%U§() == "End")
            {
               do
               {
                  §&!m§.getItemByName("MovieClip_Boom").setVisibility(false);
                  do
                  {
                     (§&!m§.getItemByName("MovieClip_Boom") as §1!=§).§&!3§("Start");
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(_loc2_ && _loc3_);
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            while(true)
            {
               this.§2!f§.deActivate();
               §§goto(addr98);
            }
         }
         addr98:
         while(true)
         {
            §[!D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
            do
            {
               §^!c§.§5!Y§.§"!d§();
               do
               {
                  this.§4e§();
                  do
                  {
                     this.§'!T§();
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc1_ || _loc1_));
            
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §4e§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(_loc4_)
         {
            if(this.§"!8§ > §@r§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§"!8§ * this.§5<§);
                  loop1:
                  while(true)
                  {
                     §§push(LevelManager.§%n§);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        _loc3_ = (§^!c§.§2!w§ as §[!P§).§`m§();
                        loop3:
                        while(!(_loc5_ && this))
                        {
                           continue loop0;
                           while(true)
                           {
                              §@!J§.§8!z§(_loc1_,_loc2_,§else§.§@g§,_loc3_);
                              if(_loc4_ || _loc1_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr26);
         }
         §§goto(addr90);
      }
      
      private function §1!G§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§"!8§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!8§ = §§pop();
            if(!(_loc4_ && param1))
            {
               §§push(this.§"!8§);
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_ || this)
                        {
                           addr49:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§5<§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§5<§ = _loc3_;
                           }
                           if(_loc5_)
                           {
                              addr137:
                              §§push(this.§;!w§);
                              loop6:
                              while(true)
                              {
                                 §§push(§^!c§.§`!F§());
                                 addr141:
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(!§§pop());
                                       loop1:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                addr153:
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§%C§);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§^!c§.§8&§());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     this.§'!T§();
                                                                     addr136:
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr136);
                                                            }
                                                            return;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(!§§pop());
                                                               while(true)
                                                               {
                                                               }
                                                               addr108:
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop6;
                                             }
                                             addr152:
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              addr139:
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr141);
               }
               §§goto(addr139);
            }
         }
         §§goto(addr49);
      }
      
      private function §'!T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!8§ = § A§;
            loop0:
            while(true)
            {
               this.§5<§ = 0;
               while(true)
               {
                  this.§;!w§ = §^!c§.§`!F§();
                  while(!(_loc2_ && this))
                  {
                     continue loop0;
                     this.§%C§ = §^!c§.§8&§();
                     if(!_loc2_)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §9!S§(param1:§!q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  param1.§9!l§();
               }
            }
         }
      }
   }
}
