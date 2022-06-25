package §2!U§
{
   import §!!j§.§!!9§;
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §2y§.§54§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §40§.§1!g§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §<-§.§5Z§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §]!y§
   {
      
      public static const §'!q§:String = "StatePlay";
      
      public static const §>!b§:int = 50;
      
      protected static const §;z§:String = "MightyEagleButtonVisible";
      
      protected static const §5!0§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §]A§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!q§ = "StatePlay";
            while(true)
            {
               §>!b§ = 50;
               loop1:
               while(true)
               {
                  §;z§ = "MightyEagleButtonVisible";
                  addr71:
                  while(true)
                  {
                     §5!0§ = "MightyEagleButtonPrepareHide";
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected var §9!L§:§2B§;
      
      protected var § !G§:§^v§;
      
      protected var §"!Y§:String;
      
      protected var §<5§:Boolean;
      
      private var §]K§:Vector.<int>;
      
      private var §5" §:Boolean;
      
      private var §=!O§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!L§ = new §2B§();
            loop0:
            while(true)
            {
               this.§]K§ = new Vector.<int>(32);
               loop1:
               while(true)
               {
                  super(param1,param2);
                  loop2:
                  while(true)
                  {
                     this.§]K§[3] = 5000;
                     while(true)
                     {
                        this.§]K§[7] = 5000;
                        loop4:
                        while(_loc3_ || param1)
                        {
                           this.§]K§[8] = 5000;
                           loop5:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 this.§]K§[9] = 5000;
                                 do
                                 {
                                    this.§]K§[12] = 5000;
                                 }
                                 while(!_loc3_);
                                 
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §'!Q§ = new §&!G§(this);
            do
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_LevelPlay[0]);
            }
            while(_loc1_ && _loc2_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §-s§() : void
      {
      }
      
      private function §#!p§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (§'!Q§.getItemByName("TextField_METimer") as §54§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"f§();
            while(true)
            {
               super.levelStarted();
               loop1:
               while(true)
               {
                  if(!§'!Q§.getItemByName("Button_MightyEagle"))
                  {
                     while(true)
                     {
                        §§push(§-!Q§);
                        §§push("LevelStartsBirdsMilitary");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() + (1 + int(Math.random() * 2)));
                        }
                        §§pop().§#3§(§§pop());
                        do
                        {
                           this.initActivation();
                        }
                        while(!_loc2_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                     addr32:
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
            }
         }
         while(true)
         {
            §'!Q§.getItemByName("Button_MightyEagle").setVisibility(true);
            §§goto(addr86);
         }
      }
      
      protected function §"f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!Q§.§4!$§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!Q§.getItemByName("TextField_METimer").setVisibility(false);
            do
            {
               §'!Q§.getItemByName("Container_MEScore").setVisibility(false);
               do
               {
                  §'!Q§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  do
                  {
                     §'!Q§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  }
                  while(_loc1_ && this);
                  
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(_loc1_);
            
         }
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!L§.assign(0);
            while(true)
            {
               this.updateCurrentScore(0);
               loop1:
               while(_loc2_ || this)
               {
                  this.initMightyEagleButton();
                  loop2:
                  while(true)
                  {
                     this.§"!Y§ = §;z§;
                     loop3:
                     while(_loc2_)
                     {
                        this.§ !G§ = null;
                        do
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        while(this.§<5§ = false, !(_loc2_ || _loc2_));
                        
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               (§'!Q§.getItemByName("Button_Pause") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr103:
               while(true)
               {
                  this.deactivateMightyEagleButton();
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §'""§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc5_ || _loc1_)
         {
            if(!this.§5" §)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(0);
                  loop0:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr231:
                     addr218:
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc4_ && _loc1_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     loop21:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc1_))
                        {
                           if(§§pop() >= this.§]K§.length)
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr163:
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr167:
                                          §§push(§§pop() % 1000);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop7:
                                             while(!§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break loop8;
                                                      }
                                                      §§push(int(_loc1_ / 1000) == 25);
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(!§§pop());
                                                               break loop7;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            this.§5" § = true;
                                                            addr148:
                                                            while(true)
                                                            {
                                                               §5Z§.§&!v§(§5Z§.§8!D§,LevelManager.§"L§);
                                                               addr118:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ && _loc1_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  addr178:
                                                                  while(true)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§=!O§);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop3:
                                                               for(; !(_loc4_ && _loc3_); if(_loc4_ && _loc2_)
                                                               {
                                                                  continue;
                                                               })
                                                               {
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(int(getTimer()));
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  loop4:
                                                                  while(_loc5_ || _loc1_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(getTimer() - _loc3_);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(§§pop() >= 1000)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr144);
                                                         §§goto(addr145);
                                                      }
                                                      addr144:
                                                   }
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   _loc2_++;
                                                   §§goto(addr178);
                                                   addr189:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr144);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr189);
                                          }
                                          addr183:
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr189);
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc1_);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr163);
                     }
                  }
               }
               §§goto(addr231);
            }
            §§goto(addr60);
         }
         §§goto(addr218);
      }
      
      protected function §2!D§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §5!P§.getScore();
         §§push(this.§9!L§.getValue());
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§5" §);
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              addr104:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        this.§=!O§ = true;
                     }
                     break;
                  }
                  return;
                  addr79:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§!!9§.isOpen);
            while(true)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr65:
               }
               loop2:
               while(true)
               {
                  §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        (§'!Q§.getItemByName("Container_MEScore") as §^! §).setVisibility(true);
                        addr51:
                        while(true)
                        {
                        }
                        addr25:
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        addr32:
                        if(_loc4_)
                        {
                           while(false)
                           {
                              continue loop2;
                           }
                           §§push(super.run(param1));
                           if(!(_loc3_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc2_);
                              loop7:
                              while(true)
                              {
                                 if(§§pop() == §9![§.STATE_STATUS_RUNNING)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.updateCurrentScore(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§"!Y§);
                                          while(true)
                                          {
                                             §§push(§;z§);
                                             addr264:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr265:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr268:
                                                            while(_loc4_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§,!s§.§=!I§);
                                                                  addr242:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().objects.isPigsAlive());
                                                                     addr244:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr267:
                                                      }
                                                      while(true)
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  this.prepareHideMightyEagleButton();
                                                                  addr259:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr257:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§"!Y§);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(§;z§);
                                                                  addr219:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop23:
                                                                     while(_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           for(; !_loc3_; while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr195);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr112);
                                                                                       }
                                                                                       §§goto(addr123);
                                                                                    }
                                                                                 }
                                                                                 addr108:
                                                                              }
                                                                              addr81:
                                                                              return §9![§.STATE_STATUS_RUNNING;
                                                                           })
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr229:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break loop25;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr195:
                                                                                 continue loop21;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§,!s§.§=!I§);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().slingshot.mSlingShotState);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      addr286:
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   §§goto(addr242);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr257);
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   this.hideMightyEagleButton();
                                                                                                   addr123:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr259);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr229);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr81);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 §§goto(addr244);
                                                                              }
                                                                              §§goto(addr286);
                                                                              §§push(_loc2_);
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr267);
                                                                        §§goto(addr268);
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§push(§5!0§);
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr219);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr285);
                              }
                           }
                           §§goto(addr275);
                           addr34:
                        }
                        else
                        {
                           §§goto(addr65);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§'""§();
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr32);
               }
            }
            return §9![§.STATE_STATUS_RUNNING;
         }
         §§goto(addr34);
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!Y§ = §5!0§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentState(§-0§.§6!q§);
            while(true)
            {
               (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               loop1:
               while(_loc1_)
               {
                  §§push(this.§ !G§);
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        loop3:
                        while(true)
                        {
                           this.§ !G§ = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_MightyEagle").mClip,{
                              "scaleX":1,
                              "scaleY":1
                           },null,0.5);
                           while(!_loc2_)
                           {
                              while(true)
                              {
                              }
                              if(!(_loc2_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        this.§"!Y§ = §]A§;
                        loop6:
                        while(true)
                        {
                           §§push(this.§ !G§);
                           loop7:
                           while(true)
                           {
                              §§pop().onComplete = this.onHideMightyEagle;
                              addr69:
                              while(_loc1_)
                              {
                                 continue loop7;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ !G§ = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§ !G§.play();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§"!Y§ = §]A§;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§,!s§.§=!I§.objects.mMightyEagleAdded)
            {
               if(!_loc2_)
               {
                  §§push(§0!>§.§'!q§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr30:
                  return §=<§.§'!q§;
               }
               return §§pop();
            }
         }
         §§goto(addr30);
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      override public function getLoserState() : String
      {
         return §>!"§.§'!q§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.keyDown(param1);
         }
         loop0:
         do
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               §§push(82);
               if(_loc4_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr79:
                     §§push(0);
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     §3!;§.§0!1§();
                     if(!_loc3_)
                     {
                        mNextState = this.§[!Q§();
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        continue;
                     }
               }
            }
            §§goto(addr79);
         }
         while(false);
         
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§,!s§.§?C§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc4_)
               {
                  §§push(49);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc3_ && param1)
                           {
                              addr231:
                           }
                        }
                        else
                        {
                           addr237:
                           §§push(6);
                           if(!(_loc3_ && this))
                           {
                              addr245:
                           }
                        }
                        §§goto(addr250);
                     }
                     else
                     {
                        §§push(50);
                        if(_loc4_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    addr153:
                                 }
                              }
                              else
                              {
                                 addr187:
                                 §§push(4);
                                 if(_loc3_ && param1)
                                 {
                                    §§goto(addr231);
                                 }
                                 else
                                 {
                                    addr195:
                                 }
                              }
                           }
                           else
                           {
                              §§push(51);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(2);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§goto(addr153);
                                       }
                                       else
                                       {
                                          addr157:
                                          if(§§pop() === _loc2_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                addr166:
                                                §§push(3);
                                                if(_loc3_ && param1)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr213:
                                                §§push(5);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§goto(addr231);
                                                }
                                             }
                                             §§goto(addr250);
                                          }
                                          else
                                          {
                                             §§push(53);
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr183:
                                                if(§§pop() === _loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr187);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(54);
                                                   if(_loc4_ || this)
                                                   {
                                                      addr204:
                                                      if(§§pop() === _loc2_)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr237);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(55);
                                                         if(!_loc3_)
                                                         {
                                                            addr235:
                                                            if(§§pop() === _loc2_)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            else
                                                            {
                                                               addr250:
                                                               loop1:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     break;
                                                                  case 1:
                                                                     break;
                                                                  case 2:
                                                                     break;
                                                                  case 3:
                                                                  case 4:
                                                                     §3!;§.§0!1§();
                                                                     mNextState = §3!;§.§'!q§;
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr43:
                                                                        break;
                                                                     }
                                                                     break;
                                                                     addr75:
                                                                  case 5:
                                                                     §3!;§.§9!G§();
                                                                     while(true)
                                                                     {
                                                                        mNextState = §3!;§.§'!q§;
                                                                        if(!_loc4_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr75);
                                                                        }
                                                                        §§goto(addr43);
                                                                     }
                                                                     break;
                                                                  case 6:
                                                               }
                                                               return;
                                                               §§push(7);
                                                            }
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                }
                                                §§goto(addr231);
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 else
                                 {
                                    §§push(52);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr235);
                     }
                  }
                  §§goto(addr195);
               }
               §§goto(addr166);
               addr65:
            }
            §§goto(addr250);
         }
         §§goto(addr65);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param3 is §[!i§)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§'!o§.LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(§'!o§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc6_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          §7n§.§3F§();
                                       }
                                       else
                                       {
                                          §§goto(addr143);
                                       }
                                    }
                                    break;
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        if(!(_loc5_ && this))
                        {
                           §7n§.§@1§();
                           addr143:
                           break;
                           addr143:
                        }
                        §§goto(addr143);
                        §§goto(addr143);
                     }
                  }
               }
               §§goto(addr143);
            }
            var _loc4_:* = param2;
            if(!(_loc5_ && param3))
            {
               §§push("CLOSE_TUTORIAL");
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!(_loc6_ || param3))
                           {
                              addr267:
                           }
                        }
                        else
                        {
                           addr259:
                           §§push(3);
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr267);
                           }
                        }
                     }
                     else
                     {
                        §§push("PAUSE");
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                           if(!(_loc5_ && this))
                           {
                              addr185:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       addr274:
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              else
                              {
                                 §§push("RESTART_LEVEL");
                                 if(!(_loc5_ && param3))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || param2)
                                    {
                                       addr213:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§goto(addr279);
                                             }
                                             else
                                             {
                                                §§goto(addr274);
                                             }
                                          }
                                          else
                                          {
                                             addr271:
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr274);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr279);
                                       }
                                       else
                                       {
                                          §§push("MIGHTY_EAGLE");
                                          if(_loc6_ || this)
                                          {
                                             addr233:
                                             §§push(_loc4_);
                                             if(_loc6_ || this)
                                             {
                                                addr241:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr271);
                                                   }
                                                }
                                                else
                                                {
                                                   addr269:
                                                   §§push("FULLSCREEN_BUTTON");
                                                   §§push(_loc4_);
                                                }
                                                §§goto(addr271);
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr271);
                                             }
                                             else
                                             {
                                                addr279:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §!!9§.§6S§();
                                                      break;
                                                      addr80:
                                                   case 1:
                                                      mNextState = this.§8!S§();
                                                      break;
                                                      addr74:
                                                   case 2:
                                                      §3!;§.§0!1§();
                                                      addr52:
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr34:
                                                            mNextState = §3!;§.§'!q§;
                                                            if(!(_loc5_ && this))
                                                            {
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr74);
                                                      }
                                                      break;
                                                   case 3:
                                                      break;
                                                   case 4:
                                                      AngryBirdsFP11.§'!g§.§]8§();
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr52);
                                                         }
                                                         §§goto(addr34);
                                                      }
                                                }
                                                return;
                                                §§push(5);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr269);
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr269);
                              }
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr279);
                  }
                  §§goto(addr185);
               }
               §§goto(addr233);
            }
            §§goto(addr259);
         }
         §§goto(addr143);
      }
      
      protected function §8!S§() : String
      {
         return §@!A§.§'!q§;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §,!s§.§=!I§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§));
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §'!Q§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            while(true)
            {
               this.§<5§ = true;
               while(!_loc2_)
               {
                  this.hideMightyEagleButton();
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                     addr68:
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2!D§();
         }
      }
   }
}
