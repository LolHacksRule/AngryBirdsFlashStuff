package §40§
{
   import §"m§.§`!=§;
   import §,!5§.§^g§;
   import §,m§.§'=§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §0X§.§'W§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§4!Z§;
   import §7=§.§ null§;
   import §8u§.§9=§;
   import §9!5§.§#!c§;
   import §9!5§.§'!>§;
   import §9!5§.§17§;
   import §9!5§.StatePlay;
   import §9!y§.§%g§;
   import §9!y§.§5V§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §?!7§.§[I§;
   import §@N§.§2w§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import §true§.§ _§;
   
   public class §-!,§ extends StatePlay
   {
      
      private static const §#d§:Number = -5000.0;
      
      private static const §2!=§:Number = 10000.0;
      
      public static const §%B§:int = 50;
      
      public static var §[l§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §-!,§)
         {
            §#d§ = -5 * 1000;
            while(true)
            {
               §2!=§ = 10 * 1000;
               while(!_loc1_)
               {
                  §%B§ = 50;
                  if(_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §;!$§:Number = -5000.0;
      
      private var §"!a§:int = 0;
      
      private var §`!`§:Number = 0;
      
      private var §;?§:Number = 0;
      
      private var §8S§:Number;
      
      protected var §<!3§:§9=§;
      
      private var §@!N§:§ null§;
      
      private var §]e§:Boolean = false;
      
      private var §'y§:Boolean = false;
      
      private var §#!3§:§%g§;
      
      public function §-!,§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§^g§) : §`!=§
      {
         return new §'=§(param1);
      }
      
      protected function §4!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<!3§ = §@!9§.§;0§.§8!6§(LevelManager.§2!9§(LevelManager.§4Y§).name,LevelManager.§4Y§);
         }
      }
      
      protected function §[R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§ _§.§1s§ as §@!9§).§>!+§(LevelManager.§4Y§,this.§<!3§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.levelStarted();
            while(true)
            {
               §'N§.§var §(§'W§.§9!e§,LevelManager.§4Y§);
               addr85:
               if(_loc1_ && this)
               {
                  continue;
               }
               this.§]e§ = false;
               loop5:
               while(_loc2_)
               {
                  this.§'y§ = false;
                  while(_loc2_ || _loc2_)
                  {
                     §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     while(_loc2_ || _loc2_)
                     {
                        this.§[R§();
                        while(true)
                        {
                           this.§@!N§.levelStarted(this.§<!3§,LevelManager.§4Y§);
                           break loop5;
                        }
                     }
                     while(true)
                     {
                        this.§4!8§();
                        §§goto(addr110);
                     }
                     addr110:
                     addr125:
                  }
               }
               while(!(_loc1_ && this))
               {
                  §§goto(addr85);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr125);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               this.§@!N§.activate();
               loop1:
               while(true)
               {
                  if(this.§]e§)
                  {
                     while(true)
                     {
                        §%!q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
                        addr115:
                        while(true)
                        {
                        }
                     }
                     addr109:
                  }
                  while(true)
                  {
                     §5!P§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                     addr104:
                     while(true)
                     {
                        this.§8S§ = 2500;
                        continue loop1;
                     }
                     §§goto(addr115);
                  }
               }
            }
         }
         loop7:
         while(true)
         {
            (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§^!_§);
            loop8:
            while(true)
            {
               if(_loc1_ || this)
               {
                  this.§0^§();
                  for(; _loc1_; §5V§.§>!4§(§5!P§),if(!_loc2_)
                  {
                     continue loop8;
                  })
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr104);
               }
               break;
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop7;
               }
               §§goto(addr77);
            }
            §§goto(addr115);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<"§ = true;
            while(true)
            {
               §5!P§ = new §'!^§(this);
            }
            addr101:
         }
         loop1:
         while(true)
         {
            §5!P§.init(§[!'§.§+@§.Views.View_FacebookLevelPlay[0]);
            while(true)
            {
               this.§@!N§ = new § null§(§5!P§);
               continue loop1;
               addr47:
               while(!(_loc2_ && this))
               {
                  §1!n§();
                  if(_loc1_)
                  {
                     if(_loc1_)
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §,!%§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<!3§.data)
         {
            if(!_loc5_)
            {
               if(_loc2_.u == param1)
               {
                  if(_loc6_ || this)
                  {
                     if(_loc2_.a)
                     {
                        if(!_loc5_)
                        {
                           return _loc2_.a;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §1!5§(param1:int) : String
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
               if(_loc7_)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(_loc7_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc8_ && this))
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!_loc8_)
                        {
                           var _loc5_:int = 0;
                           if(_loc7_)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_ && this)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() + (_loc4_ + ","));
                                    }
                                 }
                                 _loc2_ = §§pop();
                              }
                           }
                           if(_loc7_)
                           {
                              addr189:
                              §§push(_loc2_);
                              if(!_loc8_)
                              {
                                 addr193:
                                 §§push(§§pop().substr(0,_loc2_.length - 1));
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr202);
                              }
                              break;
                           }
                        }
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        if(!(_loc8_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              §§push(3);
                              if(_loc7_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       if(false)
                                       {
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr189);
                                 }
                                 addr202:
                                 return §§pop();
                              }
                              §§goto(addr193);
                           }
                           break;
                        }
                     }
                     addr201:
                     §§goto(addr193);
                     §§push(_loc2_);
                  }
                  break;
               }
               _loc2_ = §§pop();
               §§goto(addr201);
            }
         }
         §§goto(addr115);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.keyUp(param1);
            if(_loc3_ || _loc3_)
            {
               if(!AngryBirdsFP11.§[!d§)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:* = param1.keyCode;
         if(_loc3_ || param1)
         {
            if(Keyboard.M === _loc2_)
            {
               addr73:
               §§push(0);
               if(_loc4_ && param1)
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
         §§goto(addr73);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(§5V§.isOpen);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(§@M§.§6w§());
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                              }
                              addr62:
                              var _loc2_:Boolean = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§<!u§(param1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§ _§.§!6§.objects.mSardineCanAdded);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§2@§(param1);
                                             addr294:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr291:
                                       }
                                       while(true)
                                       {
                                          if(mNextState != §'!>§.§?h§)
                                          {
                                             if(mNextState == §17§.§?h§)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                loop5:
                                                for(; _loc4_; if(_loc5_ && _loc2_)
                                                {
                                                   continue;
                                                },if(!(_loc5_ && _loc2_))
                                                {
                                                   if(false)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr299);
                                                }
                                                else
                                                {
                                                   §§goto(addr157);
                                                })
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         while(mNextState)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               return §?Y§.STATE_STATUS_COMPLETED;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§'y§);
                                                                     loop20:
                                                                     while(_loc4_ || _loc3_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              loop22:
                                                                              while(§§pop())
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§8S§);
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§push(§§pop() - param1);
                                                                                    }
                                                                                    §§pop().§8S§ = §§pop();
                                                                                    addr225:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             §§push(this.§8S§ < 0);
                                                                                             loop7:
                                                                                             while(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§'y§);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               addr151:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr265:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 this.§]e§ = true;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr294);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        return §?Y§.STATE_STATUS_COMPLETED;
                                                                                                                     }
                                                                                                                     break loop5;
                                                                                                                     addr155:
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr258:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §%!q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
                                                                                                                  §§goto(addr265);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr259:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            addr237:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               break loop7;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§goto(addr155);
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr239);
                                                                                                §§goto(addr237);
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break loop5;
                                                                           }
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     continue;
                                                                     addr195:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr256:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                         }
                                                         addr299:
                                                         §§push(super.run(param1));
                                                         if(_loc4_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         return §?Y§.STATE_STATUS_RUNNING;
                                                         addr71:
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr256);
                                       }
                                       return §?Y§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr62);
                        }
                        addr55:
                        §§push(this.§@!N§.run(param1));
                        if(_loc5_)
                        {
                        }
                        §§goto(addr62);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        return §?Y§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr55);
      }
      
      private function §4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'y§ = true;
            do
            {
               §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
            }
            while(_loc3_);
            
         }
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§4Y§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §%!q§.getScore();
         if(_loc5_ || _loc1_)
         {
            §'N§.§var §(§'W§.§`q§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§ _§.§!6§ as §2w§).§&!y§();
         if(!_loc4_)
         {
            §'N§.§,!y§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("showTutorial");
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(!(_loc6_ || param1))
                        {
                           addr328:
                        }
                     }
                     else
                     {
                        addr211:
                        §§push(2);
                        if(!(_loc6_ || this))
                        {
                           addr316:
                        }
                     }
                  }
                  else
                  {
                     §§push("PAUSE");
                     if(!(_loc5_ && param3))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr333);
                              }
                              else
                              {
                                 addr262:
                                 §§push(4);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§goto(addr333);
                                 }
                                 else
                                 {
                                    §§goto(addr316);
                                 }
                              }
                              §§goto(addr333);
                           }
                           else
                           {
                              §§push("RESTART_LEVEL");
                              if(_loc6_ || this)
                              {
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr211);
                                       }
                                       else
                                       {
                                          addr239:
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                          }
                                          §§goto(addr333);
                                       }
                                    }
                                    else
                                    {
                                       §§push("CLOSE_TUTORIAL");
                                       if(!_loc5_)
                                       {
                                          addr223:
                                          §§push(_loc4_);
                                          if(_loc6_ || this)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   §§goto(addr239);
                                                }
                                                else
                                                {
                                                   addr280:
                                                   §§push(5);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr333);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr328);
                                                   }
                                                }
                                                §§goto(addr333);
                                             }
                                             else
                                             {
                                                §§push("RESTART_LEVEL");
                                                if(!_loc5_)
                                                {
                                                   addr246:
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr254:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            §§goto(addr262);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr280);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("CLOSE_TUTORIAL_POWERUP");
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr280);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr308);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("ZOOM_IN");
                                                                  if(_loc6_)
                                                                  {
                                                                     addr287:
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr290:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              addr308:
                                                                              §§push(6);
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §§goto(addr316);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr320:
                                                                              §§push(7);
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §§goto(addr328);
                                                                              }
                                                                           }
                                                                           §§goto(addr333);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr318:
                                                                           §§push("ZOOM_OUT");
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr320);
                                                            }
                                                            else
                                                            {
                                                               addr333:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §5V§.§%!w§(§5!P§,"ALL",true);
                                                                     §5V§.§>!4§(§5!P§,true);
                                                                     addr120:
                                                                     break;
                                                                     addr128:
                                                                     addr120:
                                                                  case 1:
                                                                     mNextState = §"!U§();
                                                                     addr107:
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr128);
                                                                     break;
                                                                  case 2:
                                                                     §#!c§.§6d§();
                                                                     mNextState = §#!c§.§?h§;
                                                                     addr93:
                                                                     break;
                                                                     addr93:
                                                                     addr99:
                                                                  case 3:
                                                                     §5V§.§=M§();
                                                                     break;
                                                                     addr87:
                                                                  case 4:
                                                                     break;
                                                                  case 5:
                                                                     §5V§.§=M§();
                                                                     addr72:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           addr44:
                                                                           break;
                                                                        }
                                                                        §§goto(addr120);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr93);
                                                                     }
                                                                     break;
                                                                  case 6:
                                                                     §%!q§.doUserZoom(true);
                                                                     addr50:
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr87);
                                                                     }
                                                                     break;
                                                                  case 7:
                                                                     §%!q§.doUserZoom(false);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr44);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr99);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr72);
                                                                           }
                                                                           §§goto(addr93);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr50);
                                                                        }
                                                                     }
                                                               }
                                                               return;
                                                               §§push(8);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr287);
                                             }
                                          }
                                          §§goto(addr290);
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr246);
                           }
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr333);
               }
               §§goto(addr254);
            }
            §§goto(addr223);
         }
         §§goto(addr320);
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.initActivation();
            do
            {
               this.§@!N§.§5!j§ = false;
            }
            while(_loc2_);
            
         }
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
         if(_loc5_ || _loc2_)
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §%!q§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §+e§.getValue());
         if(_loc5_)
         {
            if(§§pop() < _loc2_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr75:
                  _loc4_ = Math.min(_loc2_,§+e§.getValue() + param1 * §%B§);
                  if(!(_loc6_ && param1))
                  {
                     §+e§.assign(_loc4_);
                  }
               }
               while(true)
               {
                  §§goto(addr99);
               }
            }
            addr99:
            while(true)
            {
               this.§@!N§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
               if(_loc5_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §2@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if((§5!P§.getItemByName("MovieClip_Boom") as §[I§).§!!#§() == "End")
            {
               do
               {
                  §5!P§.getItemByName("MovieClip_Boom").setVisibility(false);
                  do
                  {
                     (§5!P§.getItemByName("MovieClip_Boom") as §[I§).§2!?§("Start");
                  }
                  while(_loc2_ && param1);
                  
               }
               while(!(_loc3_ || _loc3_));
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               this.§@!N§.deActivate();
               loop1:
               do
               {
                  §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
                  while(true)
                  {
                     § _§.§!6§.§,2§();
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§2!G§();
                        while(_loc2_ || this)
                        {
                           this.§0^§();
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(_loc1_ && _loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private function §2!G§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§;!$§ > §2!=§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§;!$§ * this.§"!a§);
                  while(true)
                  {
                     §§push(LevelManager.§4Y§);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     loop2:
                     while(_loc5_ || _loc2_)
                     {
                        if(_loc5_)
                        {
                           while(true)
                           {
                              _loc3_ = (§ _§.§1s§ as §@!9§).§6<§();
                              do
                              {
                                 §'N§.§1%§(_loc1_,_loc2_,§^b§.§7h§,_loc3_);
                              }
                              while(!_loc5_);
                              
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §<!u§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(this);
            §§push(this.§;!$§);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§;!$§ = §§pop();
            if(!_loc5_)
            {
               §§push(this.§;!$§);
               if(_loc4_ || _loc2_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc4_)
                        {
                           addr48:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§"!a§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              _loc2_.§"!a§ = _loc3_;
                           }
                           if(!(_loc5_ && _loc3_))
                           {
                              addr146:
                              §§push(this.§`!`§);
                              loop5:
                              while(true)
                              {
                                 §§push(§ _§.§#!t§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop3:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr162);
                                             }
                                             addr161:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§0^§();
                                                }
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   addr162:
                                                   §§goto(addr81);
                                                }
                                                else
                                                {
                                                   addr145:
                                                }
                                             }
                                             addr81:
                                             while(true)
                                             {
                                                §§push(this.§;?§);
                                                if(_loc5_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§ _§.§?!6§());
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc5_ && _loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                              }
                              addr148:
                              addr80:
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr104);
               }
               §§goto(addr148);
            }
            §§goto(addr48);
         }
         §§goto(addr80);
      }
      
      private function §0^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;!$§ = §#d§;
            do
            {
               this.§"!a§ = 0;
               do
               {
                  this.§`!`§ = § _§.§#!t§();
                  do
                  {
                     this.§;?§ = § _§.§?!6§();
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §4;§(param1:§4!Z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  param1.§-!T§();
               }
            }
         }
      }
   }
}
