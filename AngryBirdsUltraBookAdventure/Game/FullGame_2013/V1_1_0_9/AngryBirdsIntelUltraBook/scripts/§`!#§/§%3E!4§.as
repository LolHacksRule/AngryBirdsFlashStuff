package §`!#§
{
   import §"!i§.LevelManager;
   import §,!h§.§0d§;
   import §,@§.§'!6§;
   import §0b§.§"V§;
   import §2!U§.§0!>§;
   import §2!U§.§3!;§;
   import §2!U§.§=<§;
   import §2!U§.StatePlay;
   import §2m§.§<!?§;
   import §2y§.§7!p§;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §8!H§.§9![§;
   import §9j§.§7!c§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §<-§.§5Z§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §]F§.§^v§;
   import §^!m§.§3v§;
   import §^!m§.§4!i§;
   import §^!m§.§^!S§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §>!4§ extends StatePlay
   {
      
      private static const §36§:Number = -5000.0;
      
      private static const §8$§:Number = 10000.0;
      
      private static const §]!s§:Number = 50;
      
      private static const §^!_§:Number = 0.05;
      
      public static const §>!b§:int = 50;
      
      public static var §`!e§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §36§ = -5 * 1000;
         }
         loop0:
         while(true)
         {
            §8$§ = 10 * 1000;
            while(true)
            {
               §]!s§ = 50;
               while(!(_loc2_ && _loc1_))
               {
                  if(!_loc2_)
                  {
                     §^!_§ = 0.05;
                     while(_loc1_)
                     {
                        §>!b§ = 50;
                        if(!_loc2_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private var §0!J§:Number = -5000.0;
      
      private var §><§:int = 0;
      
      private var §7!b§:Number = 0;
      
      private var § null§:Number = 0;
      
      private var §?!k§:Number;
      
      protected var §[!+§:§'!6§;
      
      private var §"s§:§7!c§;
      
      private var §"§:Boolean = false;
      
      private var §-N§:Boolean = false;
      
      private var §?k§:Number = 0;
      
      private var §2!l§:Number = 0;
      
      private var §=!J§:§^!S§;
      
      public function §>!4§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§5G§) : §3!K§
      {
         return new §0d§(param1);
      }
      
      protected function §;,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§[!+§ = §<t§.§!V§.§2!v§(LevelManager.§`r§(LevelManager.§"L§).name,LevelManager.§"L§);
         }
      }
      
      protected function §[!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§,!s§.§]!J§ as §<t§).§;!T§(LevelManager.§"L§,this.§[!+§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
            while(true)
            {
               §!!K§.§&!v§(§5Z§.§[@§,LevelManager.§"L§);
               loop1:
               while(true)
               {
                  this.§;,§();
                  while(true)
                  {
                     this.§[!;§();
                     continue loop1;
                     addr41:
                     if(_loc1_ || _loc2_)
                     {
                        return;
                        addr58:
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            while(true)
            {
               this.§"s§.activate();
               loop1:
               for(; _loc1_ || _loc1_; if(_loc2_ && this)
               {
                  continue;
               },this.§;!X§(),while(_loc1_)
               {
                  §3v§.§'%§(§'!Q§);
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr68);
               },§§goto(addr82))
               {
                  if(this.§"§)
                  {
                     while(true)
                     {
                        §5!P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
                        addr118:
                        while(true)
                        {
                        }
                     }
                     addr112:
                  }
                  while(true)
                  {
                     §'!Q§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                     addr90:
                     while(_loc1_ || this)
                     {
                        while(true)
                        {
                           this.§?!k§ = 2500;
                           addr82:
                           while(true)
                           {
                              (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§-x§);
                              addr68:
                              while(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr112);
                           }
                        }
                        return;
                     }
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!E§ = true;
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               loop1:
               while(true)
               {
                  §'!Q§.init(§2!z§.§ _§.Views.View_FacebookLevelPlay[0]);
                  do
                  {
                     this.§"s§ = new §7!c§(§'!Q§);
                     continue loop1;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
            }
         }
      }
      
      private function §&D§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§[!+§.data;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(_loc2_.u == param1)
               {
                  if(_loc6_)
                  {
                     if(_loc2_.a)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_.a;
      }
      
      private function §4!1§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(!_loc8_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  continue loop0;
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           _loc3_.push(_loc2_.substr(0,3));
                           if(_loc7_)
                           {
                              §§push(_loc2_);
                              if(_loc7_ || param1)
                              {
                                 §§push(3);
                                 if(_loc8_)
                                 {
                                    addr218:
                                    §§push(§§pop().substr(§§pop(),_loc2_.length - 1));
                                    if(!_loc8_)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                    break loop3;
                                 }
                                 §§push(§§pop().substr(§§pop()));
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc7_ || this)
                                 {
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                              break loop3;
                           }
                           break;
                        }
                        if(_loc7_ || _loc2_)
                        {
                           var _loc5_:int = 0;
                           if(_loc7_ || _loc3_)
                           {
                              var _loc6_:* = _loc3_;
                              if(!_loc7_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(!(_loc8_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc7_)
                                       {
                                          addr182:
                                          §§push(§§pop() + (_loc4_ + ","));
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    continue;
                                 }
                                 §§goto(addr182);
                              }
                           }
                           if(_loc7_ || _loc3_)
                           {
                              break;
                           }
                        }
                        break loop3;
                     }
                     §§push(_loc2_);
                     if(!(_loc8_ && _loc3_))
                     {
                        §§goto(addr218);
                        return 0;
                     }
                     break;
                  }
                  break;
               }
               return §§pop();
            }
            addr121:
            addr60:
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ || this)
            {
               §§push(§§pop().slice(_loc2_.length % 3));
            }
            if(_loc7_ || _loc3_)
            {
               _loc2_ = §§pop();
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
               if(_loc7_ || _loc3_)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr121);
            }
            §§goto(addr126);
         }
         §§goto(addr60);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyUp(param1);
            if(!(_loc3_ && _loc2_))
            {
               addr29:
               if(!AngryBirdsFP11.§?C§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
            }
            var _loc2_:* = param1.keyCode;
            if(_loc4_ || _loc3_)
            {
               if(Keyboard.M === _loc2_)
               {
                  addr79:
                  §§push(0);
                  if(_loc3_)
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
            §§goto(addr79);
         }
         §§goto(addr29);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(§3v§.isOpen);
            if(_loc5_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  addr31:
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        addr40:
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§4!i§.§+!V§());
                           if(!(_loc4_ && this))
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 addr60:
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       addr66:
                                       §§push(this.§"s§.run(param1));
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr77:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr66);
                              }
                              var _loc2_:* = §§pop();
                              if(_loc5_ || param1)
                              {
                                 this.§&_§(param1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop2:
                                          while(!_loc4_)
                                          {
                                             this.§^!>§(param1);
                                             loop3:
                                             while(true)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr299:
                                                   §5!P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§"§ = true;
                                                      addr276:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            break loop13;
                                                         }
                                                         addr289:
                                                         while(true)
                                                         {
                                                            §§push(this.§"§);
                                                            addr291:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break loop13;
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop10:
                                                            while(§§pop())
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  loop11:
                                                                  for(; §§pop(); while(_loc5_ || param1)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr232);
                                                                     §§goto(addr176);
                                                                  })
                                                                  {
                                                                     loop12:
                                                                     while(_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§?!k§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§?!k§ = §§pop();
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    if(mNextState != §=<§.§'!q§)
                                                                                    {
                                                                                       if(mNextState != §0!>§.§'!q§)
                                                                                       {
                                                                                          while(mNextState)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr134:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         return §9![§.STATE_STATUS_COMPLETED;
                                                                                                      }
                                                                                                      addr232:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§-N§);
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            addr176:
                                                                                                            if(!(_loc5_ || this))
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§goto(addr186);
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr187);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         break loop14;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   addr188:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr271:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§-N§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc5_ || _loc2_))
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr134);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 return §9![§.STATE_STATUS_COMPLETED;
                                                                                 addr320:
                                                                              }
                                                                              §§push(this.§?!k§ < 0);
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr187:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr186:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           return §9![§.STATE_STATUS_COMPLETED;
                                                                        }
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  addr337:
                                                                  §§push(super.run(param1));
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  return §9![§.STATE_STATUS_RUNNING;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr271);
                                                      }
                                                   }
                                                   addr305:
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          this.§#&§(param1);
                                          §§goto(addr320);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr60);
               }
               §§goto(addr40);
            }
            §§goto(addr31);
         }
         addr63:
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function §34§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-N§ = true;
         }
         do
         {
            §5!P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
         }
         while(!(_loc3_ || param1));
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§"L§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §5!P§.getScore();
         if(_loc4_ || _loc2_)
         {
            §!!K§.§&!v§(§5Z§.§0O§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§,!s§.§=!I§ as §"V§).§1!;§();
         if(!(_loc5_ && _loc1_))
         {
            §!!K§.§9s§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            if(param1 == 1)
            {
               if(!_loc6_)
               {
                  §§push(§,!s§.§=!I§);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop().slingshot);
                     if(!_loc6_)
                     {
                        if(!§§pop().mDragging)
                        {
                           while(true)
                           {
                              §§push(§,!s§.§=!I§);
                              if(!_loc6_)
                              {
                                 §§pop().camera.stopDragging();
                                 if(!(_loc5_ || param1))
                                 {
                                    if(_loc6_ && param2)
                                    {
                                       loop1:
                                       while(!(_loc5_ || param1))
                                       {
                                          while(true)
                                          {
                                             §5!P§.changeGameState(§3!K§.§5B§);
                                             continue loop1;
                                          }
                                       }
                                       return;
                                    }
                                    continue;
                                 }
                                 if(!(_loc5_ || param2))
                                 {
                                    addr250:
                                    §§push(§,!s§.§=!I§);
                                    break;
                                 }
                                 var _loc4_:* = param2;
                                 if(!_loc6_)
                                 {
                                    §§push("showTutorial");
                                    if(_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && this))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(0);
                                                if(_loc6_)
                                                {
                                                   addr415:
                                                }
                                             }
                                             else
                                             {
                                                addr317:
                                                §§push(2);
                                                if(!_loc5_)
                                                {
                                                   addr448:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(_loc5_ || param3)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(1);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr460);
                                                         }
                                                         §§goto(addr415);
                                                         §§goto(addr460);
                                                      }
                                                      else
                                                      {
                                                         addr445:
                                                         §§push(8);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr448);
                                                         }
                                                         else
                                                         {
                                                            addr455:
                                                            §§goto(addr460);
                                                         }
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(_loc5_)
                                                      {
                                                         addr306:
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                            else
                                                            {
                                                               §§push("CLOSE_TUTORIAL");
                                                               if(_loc5_)
                                                               {
                                                                  addr324:
                                                                  §§push(_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(3);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr452:
                                                                           §§push(9);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr455);
                                                                           }
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("RESTART_LEVEL");
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr342:
                                                                           §§push(_loc4_);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(4);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr460);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr448);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr407:
                                                                                    §§push(7);
                                                                                    if(_loc5_ || param3)
                                                                                    {
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr455);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr460);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("CLOSE_TUTORIAL_POWERUP");
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       addr368:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc6_ && param3))
                                                                                          {
                                                                                             addr376:
                                                                                             §§push(5);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          §§goto(addr460);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("ZOOM_IN");
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr383:
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr386:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(6);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr460);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr445);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push("ZOOM_OUT");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr396:
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr399:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               §§goto(addr407);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr445);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push("ZOOM_IN_RELEASE");
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               addr434:
                                                                                                               §§push(_loc4_);
                                                                                                               if(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§goto(addr445);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr452);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push("ZOOM_OUT_RELEASE");
                                                                                                                  }
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                               addr451:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr460:
                                                                                                                  switch(§§pop())
                                                                                                                  {
                                                                                                                     case 0:
                                                                                                                        §3v§.§;-§(§'!Q§,"ALL",true);
                                                                                                                        §3v§.§'%§(§'!Q§,true);
                                                                                                                        break;
                                                                                                                        addr175:
                                                                                                                        addr166:
                                                                                                                     case 1:
                                                                                                                        mNextState = §8!S§();
                                                                                                                        break;
                                                                                                                        addr160:
                                                                                                                     case 2:
                                                                                                                        §3!;§.§0!1§();
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              mNextState = §3!;§.§'!q§;
                                                                                                                              break;
                                                                                                                              addr132:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr175);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     case 3:
                                                                                                                        §3v§.§6S§();
                                                                                                                        break;
                                                                                                                        addr126:
                                                                                                                     case 4:
                                                                                                                        break;
                                                                                                                     case 5:
                                                                                                                        §3v§.§6S§();
                                                                                                                        break;
                                                                                                                        addr120:
                                                                                                                     case 6:
                                                                                                                        this.§?k§ = §^!_§;
                                                                                                                        addr103:
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              this.§2!l§ = §]!s§;
                                                                                                                              addr89:
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr126);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr132);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr120);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     case 7:
                                                                                                                        §§push(this);
                                                                                                                        §§push(§^!_§);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                        }
                                                                                                                        §§pop().§?k§ = §§pop();
                                                                                                                        if(!(_loc6_ && param2))
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              this.§2!l§ = §]!s§;
                                                                                                                              if(!(_loc6_ && param2))
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || param2)
                                                                                                                                    {
                                                                                                                                       addr36:
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr160);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr103);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr166);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     case 8:
                                                                                                                        this.§?k§ = 0;
                                                                                                                        addr42:
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr89);
                                                                                                                        break;
                                                                                                                     case 9:
                                                                                                                        this.§?k§ = 0;
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr36);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr42);
                                                                                                                           }
                                                                                                                        }
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  §§push(10);
                                                                                                               }
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr460);
                                                                                                      }
                                                                                                      §§goto(addr442);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                          §§push(_loc4_);
                                                                                       }
                                                                                       §§goto(addr452);
                                                                                    }
                                                                                    §§goto(addr399);
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                  }
                                                                  §§goto(addr451);
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                }
                                                §§goto(addr442);
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr460);
                                       }
                                       §§goto(addr434);
                                    }
                                    §§goto(addr324);
                                 }
                                 §§goto(addr376);
                              }
                              break;
                           }
                           addr252:
                           §§push(§§pop().slingshot);
                        }
                        §§goto(addr250);
                     }
                     §§pop().shoot();
                     §§goto(addr254);
                  }
                  §§goto(addr252);
               }
               §§goto(addr250);
            }
            §§goto(addr167);
         }
         §§goto(addr254);
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.initActivation();
         }
         do
         {
            this.§"s§.§9"§ = false;
         }
         while(!_loc2_);
         
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
         if(!(_loc6_ && _loc2_))
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §5!P§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§));
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §9!L§.getValue());
         if(!_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(!_loc6_)
               {
                  addr85:
                  _loc4_ = Math.min(_loc2_,§9!L§.getValue() + param1 * §>!b§);
                  if(!_loc6_)
                  {
                     §9!L§.assign(_loc4_);
                     loop1:
                     while(true)
                     {
                        addr94:
                        while(true)
                        {
                           this.§"s§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr85);
      }
      
      private function §^!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if((§'!Q§.getItemByName("MovieClip_Boom") as §7!p§).§-E§() == "End")
            {
               do
               {
                  §'!Q§.getItemByName("MovieClip_Boom").setVisibility(false);
                  do
                  {
                     (§'!Q§.getItemByName("MovieClip_Boom") as §7!p§).§>Z§("Start");
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc3_ && param1);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            while(true)
            {
               this.§"s§.deActivate();
               loop1:
               while(!_loc1_)
               {
                  §5!P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
                  while(true)
                  {
                     §,!s§.§=!I§.§0!+§();
                     loop3:
                     while(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§6,§();
                              do
                              {
                                 this.§;!X§();
                              }
                              while(_loc1_);
                              
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §6,§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§0!J§ > §8$§)
            {
               if(!_loc4_)
               {
                  addr99:
                  _loc1_ = Math.round(1000 / this.§0!J§ * this.§><§);
               }
               do
               {
                  §§push(LevelManager.§"L§);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  do
                  {
                     _loc3_ = (§,!s§.§]!J§ as §<t§).§?6§();
                     do
                     {
                        §!!K§.§&U§(_loc1_,_loc2_,§<!?§.§@!_§,_loc3_);
                     }
                     while(!_loc5_);
                     
                  }
                  while(_loc4_);
                  
               }
               while(_loc4_ && _loc3_);
               
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §&_§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(this.§0!J§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§0!J§ = §§pop();
            if(_loc4_ || param1)
            {
               §§push(this.§0!J§);
               if(!_loc5_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc4_)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§><§);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc5_ && this))
                           {
                              _loc2_.§><§ = _loc3_;
                           }
                           if(_loc4_ || param1)
                           {
                           }
                           loop6:
                           while(true)
                           {
                              this.§;!X§();
                              loop7:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§ null§);
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§,!s§.§<!S§());
                                             if(_loc4_ || param1)
                                             {
                                                addr104:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop8;
                                                      }
                                                      addr151:
                                                   }
                                                }
                                                addr104:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr149:
                                                         if(§§pop())
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop7;
                                                               §§goto(addr104);
                                                            }
                                                            addr86:
                                                            return;
                                                            addr110:
                                                         }
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr149);
                                                }
                                                addr133:
                                             }
                                             §§goto(addr110);
                                          }
                                          addr95:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                          addr131:
                                       }
                                       §§goto(addr133);
                                    }
                                    addr152:
                                 }
                                 §§goto(addr86);
                              }
                           }
                           addr124:
                        }
                     }
                     §§goto(addr131);
                     §§push(this.§7!b§);
                  }
                  §§goto(addr104);
               }
               §§goto(addr95);
            }
            §§goto(addr124);
         }
         §§goto(addr152);
      }
      
      private function §#&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§?k§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr24:
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§2!l§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§2!l§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §;!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§0!J§ = §36§;
            while(true)
            {
               this.§><§ = 0;
               loop1:
               while(!_loc2_)
               {
                  this.§7!b§ = §,!s§.§!!Q§();
                  while(true)
                  {
                     this.§ null§ = §,!s§.§<!S§();
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §5!w§(param1:§^v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr28:
                  param1.§&T§();
               }
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
