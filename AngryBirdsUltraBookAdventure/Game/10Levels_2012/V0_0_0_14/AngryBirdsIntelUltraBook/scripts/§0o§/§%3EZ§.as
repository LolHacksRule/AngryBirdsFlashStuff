package §0o§
{
   import § !k§.§%N§;
   import § !k§.§%]§;
   import § !k§.§'!4§;
   import § !k§.StatePlay;
   import § !x§.§4F§;
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§]V§;
   import §+&§.§-!7§;
   import §+k§.§>t§;
   import §,!<§.§3Q§;
   import §-2§.§=!Q§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§@!G§;
   import §5i§.§4!]§;
   import §8!G§.§"D§;
   import §8,§.§+_§;
   import §9!Q§.§&!a§;
   import §9!Q§.§7o§;
   import §9!Q§.§each §;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import §`M§.§&!G§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §>Z§ extends StatePlay
   {
      
      private static const §&!n§:Number = -5000.0;
      
      private static const §+!v§:Number = 10000.0;
      
      public static const §"1§:int = 50;
      
      public static var §[!1§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&!n§ = -5 * 1000;
            while(true)
            {
               §+!v§ = 10 * 1000;
               while(!(_loc1_ && _loc1_))
               {
                  §"1§ = 50;
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
      
      private var §],§:Number = -5000.0;
      
      private var §"3§:int = 0;
      
      private var §,$§:Number = 0;
      
      private var §@!J§:Number = 0;
      
      private var §>H§:Number;
      
      protected var §<§:§>t§;
      
      private var §6O§:§=!Q§;
      
      private var §&!9§:Boolean = false;
      
      private var §;!R§:Boolean = false;
      
      private var §<!4§:§&!a§;
      
      public function §>Z§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§-!7§) : §@!G§
      {
         return new §3Q§(param1);
      }
      
      protected function §,%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§<§ = §[!m§.§8!C§.§"I§(LevelManager.§,m§(LevelManager.§^!F§).name,LevelManager.§^!F§);
         }
      }
      
      protected function §8!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§4!]§.§7!G§ as §[!m§).§ _§(LevelManager.§^!F§,this.§<§);
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
               §]V§.§8![§(§"[§.§%b§,LevelManager.§^!F§);
               while(true)
               {
                  this.§,%§();
                  while(!(_loc1_ && this))
                  {
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     this.§8!<§();
                     loop3:
                     while(true)
                     {
                        this.§6O§.levelStarted(this.§<§,LevelManager.§^!F§);
                        do
                        {
                           this.§&!9§ = false;
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
               this.§6O§.activate();
               loop1:
               while(true)
               {
                  if(this.§&!9§)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           § !a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
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
                           this.§>H§ = 2500;
                           loop5:
                           while(true)
                           {
                              (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§4!3§);
                              loop6:
                              do
                              {
                                 this.§1`§();
                                 while(!_loc2_)
                                 {
                                    §each §.§5!b§(§`-§);
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
                     §`-§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
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
            §[!?§ = true;
            loop0:
            while(true)
            {
               §`-§ = new § C§(this);
               loop1:
               while(true)
               {
                  §`-§.init(dynamic.§[6§.Views.View_FacebookLevelPlay[0]);
                  loop2:
                  while(true)
                  {
                     this.§6O§ = new §=!Q§(§`-§);
                     loop3:
                     while(_loc2_)
                     {
                        §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
                        loop4:
                        while(!_loc1_)
                        {
                           continue loop1;
                           while(true)
                           {
                              §&e§();
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
      
      private function §`O§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§<§.data;
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
      
      private function §[-§(param1:int) : String
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
               if(!AngryBirdsFP11.§2!y§)
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
            §§push(§each §.isOpen);
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
                           §§push(§7o§.§`!h§());
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
                                       return §+_§.STATE_STATUS_RUNNING;
                                    }
                                 }
                              }
                              addr77:
                              var _loc2_:* = §§pop();
                              if(!_loc5_)
                              {
                                 this.§-!U§(param1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§4!]§.§8C§.objects.mSardineCanAdded);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(_loc4_)
                                          {
                                             this.§2%§(param1);
                                             while(true)
                                             {
                                                addr120:
                                                if(!(_loc5_ && this))
                                                {
                                                   return §+_§.STATE_STATUS_COMPLETED;
                                                }
                                             }
                                          }
                                          continue loop0;
                                          addr309:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(mNextState != §%N§.§3F§)
                                          {
                                             if(mNextState != §'!4§.§3F§)
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
                                                            return §+_§.STATE_STATUS_COMPLETED;
                                                         }
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§>H§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().§>H§ = §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(this.§>H§ < 0);
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
                                                                                    §§push(this.§;!R§);
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
                                                                                                         § !a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
                                                                                                         addr285:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ && _loc2_)
                                                                                                            {
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            this.§&!9§ = true;
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
                                                                                                                                    §§push(this.§;!R§);
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
                                                                                                return §+_§.STATE_STATUS_COMPLETED;
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
                                                return §+_§.STATE_STATUS_RUNNING;
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
                        §§push(this.§6O§.run(param1));
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
      
      private function §3!w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!R§ = true;
         }
         do
         {
            § !a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
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
         §§push(LevelManager.§^!F§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = § !a§.getScore();
         if(_loc5_ || _loc2_)
         {
            §]V§.§8![§(§"[§.§,!q§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§4!]§.§8C§ as §"D§).§>!;§();
         if(!_loc4_)
         {
            §]V§.§9!$§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
                                                                                    §each §.§%!S§(§`-§,"ALL",true);
                                                                                    §each §.§5!b§(§`-§,true);
                                                                                    break;
                                                                                    addr112:
                                                                                    addr104:
                                                                                 case 1:
                                                                                    mNextState = §2!u§();
                                                                                    break;
                                                                                    addr98:
                                                                                 case 2:
                                                                                    §%]§.§=>§();
                                                                                    mNextState = §%]§.§3F§;
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                    addr90:
                                                                                 case 3:
                                                                                    §each §.§]!U§();
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
                                                                                    §each §.§]!U§();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr45:
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 6:
                                                                                    § !a§.doUserZoom(true);
                                                                                    break;
                                                                                    addr51:
                                                                                 case 7:
                                                                                    § !a§.doUserZoom(false);
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
            this.§6O§.§;§ = false;
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
         var _loc2_:int = § !a§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§^!F§));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §<+§.getValue());
         if(!_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(_loc5_ || param1)
               {
                  addr85:
                  _loc4_ = Math.min(_loc2_,§<+§.getValue() + param1 * §"1§);
                  if(!_loc6_)
                  {
                     §<+§.assign(_loc4_);
                  }
               }
               while(true)
               {
               }
               addr106:
            }
            while(true)
            {
               this.§6O§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
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
      
      private function §2%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if((§`-§.getItemByName("MovieClip_Boom") as §&!G§).§5v§() == "End")
            {
               do
               {
                  §`-§.getItemByName("MovieClip_Boom").setVisibility(false);
                  do
                  {
                     (§`-§.getItemByName("MovieClip_Boom") as §&!G§).§#!q§("Start");
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
               this.§6O§.deActivate();
               §§goto(addr98);
            }
         }
         addr98:
         while(true)
         {
            § !a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
            do
            {
               §4!]§.§8C§.§[1§();
               do
               {
                  this.§&Y§();
                  do
                  {
                     this.§1`§();
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
      
      private function §&Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(_loc4_)
         {
            if(this.§],§ > §+!v§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§],§ * this.§"3§);
                  loop1:
                  while(true)
                  {
                     §§push(LevelManager.§^!F§);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        _loc3_ = (§4!]§.§7!G§ as §[!m§).§[k§();
                        loop3:
                        while(!(_loc5_ && this))
                        {
                           continue loop0;
                           while(true)
                           {
                              §]V§.§6!Y§(_loc1_,_loc2_,§,!]§.§,?§,_loc3_);
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
      
      private function §-!U§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§],§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§],§ = §§pop();
            if(!(_loc4_ && param1))
            {
               §§push(this.§],§);
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
                           §§push((_loc2_ = this).§"3§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§"3§ = _loc3_;
                           }
                           if(_loc5_)
                           {
                              addr137:
                              §§push(this.§,$§);
                              loop6:
                              while(true)
                              {
                                 §§push(§4!]§.§-m§());
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
                                                   §§push(this.§@!J§);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§4!]§.§@!6§());
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
                                                                     this.§1`§();
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
      
      private function §1`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§],§ = §&!n§;
            loop0:
            while(true)
            {
               this.§"3§ = 0;
               while(true)
               {
                  this.§,$§ = §4!]§.§-m§();
                  while(!(_loc2_ && this))
                  {
                     continue loop0;
                     this.§@!J§ = §4!]§.§@!6§();
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
      
      private function §!!F§(param1:§4F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  param1.§;h§();
               }
            }
         }
      }
   }
}
