package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§=!#§;
   import §?!7§.§?!x§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class § B§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelSelectionState";
      
      protected static const §=C§:Number = 0.5;
      
      public static var §`]§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || § B§)
         {
            §?h§ = "LevelSelectionState";
         }
         while(true)
         {
            §=C§ = 0.5;
            while(!(_loc1_ && § B§))
            {
               §`]§ = "";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §]!X§:Boolean = false;
      
      protected var §=!4§:§8;§;
      
      protected var §+A§:§8;§;
      
      protected var §7"§:MovieClip;
      
      protected var §%3§:Array;
      
      protected var §#!o§:Array;
      
      protected var §^!h§:int = 0;
      
      protected var §4]§:int = 0;
      
      protected var §;!q§:int = 0;
      
      protected var §=![§:Boolean = false;
      
      protected var §8_§:§4!Z§ = null;
      
      protected var §=h§:Dictionary;
      
      protected var §^G§:Array;
      
      protected var § !<§:Array;
      
      protected var §#x§:§,!_§;
      
      protected var §!!<§:Number = 0;
      
      public function § B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            do
            {
               this.initView();
            }
            while(_loc2_ && _loc1_);
            
         }
         while(true)
         {
            §§push(this.§+A§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§#!o§ = [];
                  }
                  do
                  {
                     this.§%3§ = [];
                  }
                  while(_loc2_);
                  
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  continue;
               }
               §§push(this.§+A§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5!P§ = new §'!^§(this);
         }
         while(true)
         {
            §5!P§.init(§[!'§.§+@§.Views.View_LevelSelection[0]);
            while(_loc1_ || _loc2_)
            {
               this.§+A§ = §5!P§.getItemByName("Container_LevelRepeaters") as §8;§;
               do
               {
                  this.§=!4§ = §5!P§.getItemByName("Container_LevelSelection") as §8;§;
               }
               while(!(_loc1_ || this));
               
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§ _§.§!6§);
               loop1:
               while(true)
               {
                  §§pop().clearLevel();
                  addr220:
                  while(!_loc1_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function §6i§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§#!o§.length > 1)
            {
               while(true)
               {
                  if(param1.keyCode != Keyboard.LEFT)
                  {
                     if(param1.keyCode != Keyboard.RIGHT)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        this.§0>§();
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     addr76:
                     if(!_loc2_)
                     {
                        break;
                        addr78:
                     }
                     continue;
                  }
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr84);
                     }
                     this.§^z§();
                  }
                  §§goto(addr76);
               }
               return;
            }
            addr84:
            return;
         }
         §§goto(addr78);
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§1G§();
                     loop1:
                     while(_loc4_)
                     {
                        this.§#!P§();
                        loop2:
                        while(!_loc3_)
                        {
                           while(mNextState.length > 0)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 return §?Y§.STATE_STATUS_COMPLETED;
                              }
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(!(_loc4_ || this))
                              {
                                 continue loop1;
                              }
                              §§goto(addr32);
                              continue loop2;
                           }
                           return §?Y§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr93);
      }
      
      protected function §1G§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(this.§%3§);
               if(_loc3_ || _loc1_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§;!q§);
                           if(!_loc4_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this.§^!h§);
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop4:
                                       while(_loc3_)
                                       {
                                          §§push(this.§^!h§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§;!q§);
                                             loop11:
                                             while(§§pop() <= §§pop())
                                             {
                                                §§push(this.§^!h§);
                                                if(!_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(this.§;!q§);
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         this.§4]§ = this.§;!q§;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        this.§#x§.§"!h§(this.§^G§[this.§4]§].red,this.§^G§[this.§4]§].green,this.§^G§[this.§4]§].blue);
                                                                        addr71:
                                                                        while(_loc4_ && this)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              addr94:
                                                                              while(true)
                                                                              {
                                                                                 this.§!!<§ = this.§+A§.x;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_ && _loc1_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr251:
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             addr305:
                                                                                             addr409:
                                                                                             addr410:
                                                                                             _loc2_ = 0;
                                                                                             while(true)
                                                                                             {
                                                                                                addr303:
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   addr528:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr470:
                                                                                                      addr485:
                                                                                                      addr488:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§push(this.§%3§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         addr489:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                            addr492:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               _loc2_++;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               addr482:
                                                                                                            }
                                                                                                            addr526:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§%3§);
                                                                                             break loop1;
                                                                                             addr408:
                                                                                             addr301:
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.updatePageNumber(_loc1_);
                                                                                             addr236:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
                                                                                                   addr461:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.updatePageNumber(_loc1_);
                                                                                                      addr448:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop19:
                                                                                                         do
                                                                                                         {
                                                                                                            §§push(this.§+A§);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(-§§pop().x);
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§#!o§);
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     loop22:
                                                                                                                     while(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                        loop23:
                                                                                                                        while(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr443:
                                                                                                                                    §§push(this.§!!<§);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                       §§push(-§§pop());
                                                                                                                                    }
                                                                                                                                    if(_loc4_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(this.§#!o§);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr520:
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr538:
                                                                                                                                                   §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                                break loop23;
                                                                                                                                             }
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          addr537:
                                                                                                                                          §§goto(addr538);
                                                                                                                                          §§push(_loc1_);
                                                                                                                                       }
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       break loop22;
                                                                                                                                    }
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 addr501:
                                                                                                                                 if(!(_loc3_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr537);
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    addr524:
                                                                                                                                    continue loop19;
                                                                                                                                    addr535:
                                                                                                                                 }
                                                                                                                                 §§goto(addr520);
                                                                                                                                 §§push(this.§#!o§);
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr408);
                                                                                                                              }
                                                                                                                              addr229:
                                                                                                                              _loc1_++;
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                           §§goto(addr524);
                                                                                                                        }
                                                                                                                        §§goto(addr542);
                                                                                                                        §§push(§§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr524);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr533:
                                                                                                               §§push(-§§pop().x);
                                                                                                            }
                                                                                                            §§goto(addr535);
                                                                                                         }
                                                                                                         while(!§§pop());
                                                                                                         
                                                                                                         §§goto(addr526);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr469:
                                                                                             }
                                                                                             §§goto(addr229);
                                                                                          }
                                                                                          §§goto(addr482);
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          if(!(_loc3_ || this))
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ || _loc1_))
                                                                                             {
                                                                                                this.§;!q§ = _loc1_;
                                                                                                break loop4;
                                                                                             }
                                                                                             addr476:
                                                                                             this.§4]§ = this.§;!q§ - 1;
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             _loc2_++;
                                                                                             addr322:
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          §§goto(addr461);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr144:
                                                                                       addr226:
                                                                                    }
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr71);
                                                                                 }
                                                                                 §§goto(addr94);
                                                                              }
                                                                              addr291:
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%3§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                continue;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             addr466:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    addr465:
                                                                                 }
                                                                                 addr328:
                                                                                 break;
                                                                              }
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr489);
                                                                              addr319:
                                                                              addr25:
                                                                           }
                                                                           §§goto(addr410);
                                                                        }
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           this.§;!q§ = _loc1_;
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr528);
                                                                     }
                                                                  }
                                                                  §§goto(addr492);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr409);
                                                }
                                                §§goto(addr303);
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§4]§ = this.§;!q§ + 1;
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr544);
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                       }
                                       §§goto(addr465);
                                       §§push(this.§%3§);
                                    }
                                    §§goto(addr25);
                                 }
                              }
                              break;
                           }
                           §§goto(addr213);
                        }
                        addr474:
                        if(§§pop() >= this.§%3§.length)
                        {
                           §§goto(addr476);
                        }
                        §§goto(addr485);
                     }
                     else
                     {
                        §§push(this.§+A§);
                     }
                     §§goto(addr533);
                  }
                  §§goto(addr474);
               }
               break;
            }
            while(true)
            {
               if(§§pop() >= §§pop().length)
               {
                  §§goto(addr309);
               }
               else
               {
                  §§push(this.§%3§);
               }
               §§goto(addr328);
               §§goto(addr305);
            }
            §§goto(addr229);
         }
      }
      
      protected function §#!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§#!o§.length)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(Number(Math.abs(_loc2_)));
                           loop2:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() > 1000)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(1000);
                                          addr189:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr190:
                                             while(!_loc3_)
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue loop1;
                                                }
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop2;
                                          }
                                          addr163:
                                          loop6:
                                          while(true)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop4;
                                             }
                                             §§push(this.§#!o§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                   addr181:
                                                   while(true)
                                                   {
                                                      addr112:
                                                      while(true)
                                                      {
                                                         §§push(this.§#!o§);
                                                         loop10:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            loop11:
                                                            for(; §§pop()[§§pop()].mClip.alpha >= 1; if(!(_loc4_ || _loc2_))
                                                            {
                                                               continue;
                                                            },if(!(_loc4_ || _loc2_))
                                                            {
                                                               continue loop8;
                                                            },(§§pop()[§§pop()] as §9j§).setEnabled(true),§§goto(addr94))
                                                            {
                                                               §§push(this.§#!o§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(_loc1_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     (§§pop()[§§pop()] as §9j§).setEnabled(false);
                                                                     loop13:
                                                                     while(_loc4_ || this)
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           _loc1_++;
                                                                           addr51:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              addr94:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    break loop11;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  addr133:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr133);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ || _loc1_))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr132);
                                                               §§push(this.§#!o§);
                                                               §§goto(addr94);
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr210);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(Math.abs(this.§#!o§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                       {
                                          §§goto(addr163);
                                       }
                                       §§goto(addr112);
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr190);
                              }
                           }
                        }
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr51);
               }
               else
               {
                  §§push(Number(this.§+A§.x + this.§#!o§[_loc1_].x));
               }
               §§goto(addr230);
            }
            §§goto(addr189);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§5!P§.stage)
            {
               while(true)
               {
                  §5!P§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6i§);
                  addr102:
                  while(true)
                  {
                  }
               }
               addr95:
            }
            while(true)
            {
               super.deActivate();
               loop2:
               while(_loc2_)
               {
                  this.§&p§();
                  loop3:
                  while(!_loc1_)
                  {
                     (§5!P§.getItemByName("Button_Back") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_ && _loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
                  §§goto(addr95);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr102);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8_§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8_§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        loop4:
                        while(true)
                        {
                           this.§8_§ = null;
                           addr58:
                           addr67:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr67:
                           while(true)
                           {
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  super.cleanup();
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr58);
                  §§goto(addr67);
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr67);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr218:
                        while(true)
                        {
                           §§push(param3 is §=!#§);
                           addr186:
                           while(!_loc5_)
                           {
                           }
                           continue loop0;
                        }
                     }
                     addr217:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push((param3 as §=!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    addr203:
                                    while(_loc6_ || param3)
                                    {
                                       §§push((param3 as §=!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                       if(_loc5_ && param3)
                                       {
                                          continue loop8;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§goto(addr186);
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr129);
                                       }
                                       addr127:
                                    }
                                    §§goto(addr174);
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function §0>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            § !Q§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§=![§)
               {
                  if(!_loc4_)
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§^!h§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && _loc1_))
                     {
                        _loc1_.§^!h§ = _loc2_;
                     }
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§8!T§(this.§^!h§);
               }
               addr79:
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §^z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            § !Q§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§=![§)
               {
                  if(_loc3_)
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§^!h§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§^!h§ = _loc2_;
                     }
                     if(_loc3_)
                     {
                        addr75:
                        this.§8!T§(this.§^!h§);
                     }
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr75);
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!_loc10_)
         {
            this.§^G§ = [];
            loop0:
            while(true)
            {
               this.§ !<§ = [];
               loop1:
               while(true)
               {
                  this.§^!h§ = LevelManager.§`!-§(LevelManager.§>!§).§-!F§;
                  addr66:
                  while(true)
                  {
                     addr48:
                     while(true)
                     {
                        this.§4]§ = this.§^!h§;
                        addr53:
                        while(_loc9_)
                        {
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;!q§ = this.§^!h§;
            if(_loc9_)
            {
               if(!_loc10_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr48);
               }
               §§goto(addr66);
            }
            §§goto(addr53);
         }
         var _loc2_:§4n§ = LevelManager.§`!-§(LevelManager.§>!§);
         var _loc3_:* = Number(0);
         loop6:
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§]!"§(_loc2_.pageIndexes[_loc3_]);
            if(!(_loc10_ && this))
            {
               §§push(this.§^G§);
               while(true)
               {
                  §§pop().push(_loc2_.§9!R§(_loc3_));
                  while(true)
                  {
                     §§push(this.§ !<§);
                     if(_loc10_ && _loc2_)
                     {
                        break;
                     }
                     §§pop().push(_loc2_.§]!C§(_loc3_));
                     loop9:
                     while(_loc9_)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_));
                           loop11:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc10_ && this))
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc10_)
                                          {
                                             addr117:
                                             §§push(Number(§§pop()));
                                          }
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          _loc3_ = §§pop();
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                while(false)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop6;
                                                addr125:
                                             }
                                             continue loop9;
                                          }
                                          continue;
                                       }
                                       continue loop11;
                                    }
                                    §§goto(addr117);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr125);
         }
         if(!_loc10_)
         {
            this.§#x§ = new §,!_§(this.§^G§[this.§^!h§].red,this.§^G§[this.§^!h§].green,this.§^G§[this.§^!h§].blue,1);
            if(_loc9_)
            {
               §5!P§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§#x§);
               if(!_loc10_)
               {
                  addr211:
                  if(_loc2_.§-!p§)
                  {
                     if(_loc9_)
                     {
                        addr216:
                        _loc6_ = new (_loc5_ = §%!G§.§^!B§(_loc2_.§-!p§))();
                        if(!_loc10_)
                        {
                           §5!P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                           if(_loc9_)
                           {
                              addr242:
                              if(_loc2_.§%V§)
                              {
                                 if(_loc9_ || _loc1_)
                                 {
                                 }
                                 addr288:
                                 this.§?`§();
                                 if(_loc9_ || _loc1_)
                                 {
                                    if(§`]§ == StateCutScene.§?h§)
                                    {
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          §`]§ = "";
                                          loop15:
                                          while(true)
                                          {
                                             this.§8!T§(this.§;!q§);
                                             addr333:
                                             while(true)
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   break loop15;
                                                }
                                                continue loop15;
                                             }
                                          }
                                          addr298:
                                          return;
                                          addr355:
                                          addr340:
                                       }
                                       §§goto(addr355);
                                    }
                                    else
                                    {
                                       this.§8!T§(this.§^!h§,true);
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          §§goto(addr333);
                                       }
                                       §§goto(addr298);
                                    }
                                 }
                                 §§goto(addr298);
                              }
                              else
                              {
                                 §5!P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                 §§goto(addr288);
                              }
                           }
                           _loc8_ = new (_loc7_ = §%!G§.§^!B§(_loc2_.§%V§))();
                           if(!(_loc10_ && _loc2_))
                           {
                              §5!P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§goto(addr288);
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr340);
                        }
                        §§goto(addr288);
                     }
                  }
                  else
                  {
                     §5!P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                  }
                  §§goto(addr242);
               }
            }
            §§goto(addr216);
         }
         §§goto(addr211);
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§4n§) : Number
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!G§.§^!B§(this.§ !<§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc15_ && param1))
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(!_loc15_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc14_ || param2))
               {
                  break;
               }
               _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(_loc14_ || this)
               {
                  §§push(_loc11_);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc15_ && this))
                                    {
                                       _loc13_.@MouseUp = _loc10_;
                                    }
                                    while(true)
                                    {
                                       addr195:
                                       loop10:
                                       while(!(_loc15_ && param3))
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          loop11:
                                          while(true)
                                          {
                                             if(!_loc15_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop10;
                                             addr129:
                                             if(_loc14_ || param2)
                                             {
                                                if(false)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                      do
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc14_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc7_ = §§pop();
                                                      }
                                                      while(!(_loc14_ || param2));
                                                      
                                                      if(!_loc15_)
                                                      {
                                                         if(_loc14_ || param3)
                                                         {
                                                            §§goto(addr129);
                                                         }
                                                         else
                                                         {
                                                            addr166:
                                                            while(true)
                                                            {
                                                               _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                            }
                                                            addr166:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc14_ || param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr242:
                                                         while(true)
                                                         {
                                                            §§push(AngryBirdsFP11.§[!d§);
                                                            break loop11;
                                                         }
                                                      }
                                                   }
                                                   addr138:
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc13_.@scaleOnMouseOver = "True";
                                    §§goto(addr195);
                                 }
                              }
                           }
                           addr224:
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr242);
                        }
                     }
                  }
               }
               §§goto(addr166);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(_loc14_ || this)
         {
            §§push(param1);
            loop16:
            while(true)
            {
               §§push(§§pop().length == 15);
               addr361:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop16;
                     }
                     addr363:
                  }
                  else
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              _loc8_.@name = "Repeater_LevelSelection15";
                           }
                           loop21:
                           while(true)
                           {
                              addr306:
                              loop22:
                              while(true)
                              {
                                 _loc8_.@button = this.§ !<§[param2];
                                 loop23:
                                 while(_loc14_)
                                 {
                                    _loc8_.@enabled = "True";
                                    loop25:
                                    while(true)
                                    {
                                       addr280:
                                       addr365:
                                       while(true)
                                       {
                                          _loc8_.@buttonSelectionType = "NO_SELECTION";
                                          while(_loc14_ || param2)
                                          {
                                             if(!(_loc15_ && param1))
                                             {
                                                if(!_loc15_)
                                                {
                                                   _loc8_.@fromLibrary = "true";
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      continue loop25;
                                                   }
                                                   continue;
                                                }
                                                continue loop21;
                                             }
                                             continue loop22;
                                          }
                                          continue loop23;
                                       }
                                       var _loc9_:§?!x§;
                                       (_loc9_ = new §?!x§(_loc8_,this.§+A§,null,null)).§8!2§(_loc5_);
                                       if(_loc14_)
                                       {
                                          _loc9_.setVisibility(true);
                                          while(true)
                                          {
                                             _loc9_.x += param3;
                                             while(_loc14_)
                                             {
                                                this.§+A§.addComponent(_loc9_);
                                                loop30:
                                                while(!(_loc15_ && this))
                                                {
                                                   this.§#!o§.push(_loc9_);
                                                   while(true)
                                                   {
                                                      §§push(param3);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() + AngryBirdsFP11.§>!2§);
                                                         if(_loc14_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         param3 = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop30;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr407);
                                    }
                                 }
                                 continue loop16;
                              }
                           }
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        while(true)
                        {
                           §§goto(addr306);
                        }
                     }
                     addr349:
                  }
               }
            }
         }
         §§goto(addr305);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc8_ || param1)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     addr119:
                     loop2:
                     while(true)
                     {
                        _loc6_.isOpen = param2;
                        addr123:
                        loop3:
                        while(!_loc9_)
                        {
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           loop9:
                           while(true)
                           {
                              _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                              addr197:
                              while(true)
                              {
                                 _loc6_.MovieClip_Feather.mouseEnabled = false;
                                 addr168:
                                 while(true)
                                 {
                                    if(!(_loc8_ || this))
                                    {
                                       while(true)
                                       {
                                          _loc6_.gotoAndStop("Open");
                                          addr209:
                                          while(true)
                                          {
                                             _loc6_.MovieClip_MEInUse.visible = false;
                                             addr203:
                                             while(true)
                                             {
                                                §§push(AngryBirdsFP11.sUserProgress);
                                                addr189:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr190:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                                      addr191:
                                                      while(true)
                                                      {
                                                         if(§§pop() != 100)
                                                         {
                                                            _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                                            break loop3;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                addr162:
                                                addr140:
                                                _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             }
                                          }
                                       }
                                       addr206:
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc8_ || this)
                           {
                              if(!(_loc8_ || param1))
                              {
                                 §§goto(addr197);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr168);
                        }
                     }
                  }
                  addr134:
               }
               §§goto(addr206);
            }
         }
         §§goto(addr203);
      }
      
      protected function §?`§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§#!o§.length == 1)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(_loc5_ || _loc2_)
         {
            this.§=h§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§#!o§.length)
         {
            _loc1_ = §%!G§.§^!B§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_)
            {
               _loc2_.x = AngryBirdsFP11.§>!2§ / 2 + _loc3_ - this.§#!o§.length * _loc2_.width / 2;
               while(true)
               {
                  _loc2_.y = (§5!P§.getItemByName("Button_Next") as §5!I§).y - _loc2_.height / 2;
                  loop3:
                  while(!(_loc6_ && _loc1_))
                  {
                     loop4:
                     while(true)
                     {
                        this.§=!4§.mClip.addChild(_loc2_);
                        loop5:
                        while(!_loc6_)
                        {
                           this.§=h§[_loc2_] = _loc4_;
                           loop6:
                           while(!(_loc6_ && this))
                           {
                              this.§%3§.push(_loc2_);
                              loop7:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(_loc3_);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(Number(§§pop() + _loc2_.width));
                                    }
                                    _loc3_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             do
                                             {
                                                _loc2_.buttonMode = true;
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop7;
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr174:
                                 if(!_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 addr222:
                                 while(true)
                                 {
                                    _loc2_.gotoAndStop("Selected");
                                    break loop6;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc4_ != this.§^!h§)
                                 {
                                    _loc2_.gotoAndStop("UnSelected");
                                    continue loop3;
                                 }
                                 §§goto(addr222);
                              }
                           }
                           while(true)
                           {
                              (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = _loc2_.x;
                              addr216:
                              while(true)
                              {
                                 (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).y = _loc2_.y - _loc2_.height;
                                 break loop5;
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           this.updatePageNumber(_loc4_);
                           §§goto(addr174);
                        }
                     }
                  }
               }
            }
            §§goto(addr240);
         }
         if(_loc5_ || this)
         {
            §§push(this.§#!o§.length * _loc2_.width);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() / 2);
               if(_loc5_ || _loc1_)
               {
                  addr293:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc5_)
                  {
                     addr300:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     (§5!P§.getItemByName("Button_Next") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
                  }
                  loop16:
                  while(true)
                  {
                     (§5!P§.getItemByName("Button_Prev") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
                     while(true)
                     {
                        (§5!P§.getItemByName("Button_Next") as §5!I§).x = (§5!P§.getItemByName("Button_Next") as §5!I§).x + (_loc3_ + 10);
                        loop18:
                        while(!_loc6_)
                        {
                           while(true)
                           {
                              (§5!P§.getItemByName("Button_Prev") as §5!I§).x = (§5!P§.getItemByName("Button_Prev") as §5!I§).x - (_loc3_ + 10);
                              if(!(_loc6_ && _loc1_))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop16;
                              }
                              continue loop18;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr300);
            }
            §§goto(addr293);
         }
         §§goto(addr370);
      }
      
      protected function §&p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§#x§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr38);
            }
            §§pop().clean();
         }
         addr38:
         if(_loc2_ || _loc1_)
         {
            §§push(this.§#x§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= this.§%3§.length)
            {
               loop1:
               while(_loc2_ || this)
               {
                  this.§%3§ = [];
                  while(_loc2_ || _loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§+A§);
                        if(_loc2_ || this)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§#!o§ = [];
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           §§push(this.§+A§);
                        }
                        §§pop().mClip.removeChildAt(0);
                     }
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           addr173:
                           loop4:
                           while(true)
                           {
                              §§push(this.§=!4§);
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              addr157:
                              addr123:
                              while(§§pop().mClip.contains(this.§%3§[_loc1_]))
                              {
                                 continue loop4;
                              }
                              _loc1_++;
                              continue loop0;
                           }
                           §§pop().mClip.removeChild(this.§%3§[_loc1_]);
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr123);
               }
               while(true)
               {
                  this.§%3§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
                  §§goto(addr173);
               }
            }
            else
            {
               §§push(this.§=!4§);
            }
            §§goto(addr157);
         }
      }
      
      protected function §4"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§=![§)
            {
               if(!_loc2_)
               {
                  addr39:
                  this.§8!T§(this.§=h§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      protected function §'@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§=![§)
            {
               if(!_loc2_)
               {
                  mNextState = § B§.§?h§;
               }
            }
         }
      }
      
      protected function §8!T§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§=![§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(§§pop() <= this.§#!o§.length - 1)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           while(true)
                           {
                              if(!(_loc7_ || param1))
                              {
                                 break loop1;
                              }
                              §§push(0);
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr126:
                                 while(true)
                                 {
                                    if(_loc6_ && param2)
                                    {
                                       while(true)
                                       {
                                       }
                                       addr156:
                                    }
                                 }
                              }
                           }
                           addr117:
                        }
                        addr88:
                        while(true)
                        {
                           this.§^!h§ = param1;
                           addr92:
                           while(_loc7_ || param2)
                           {
                              continue loop0;
                           }
                           §§goto(addr117);
                        }
                        addr180:
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = this.§#!o§[param1].x + this.§+A§.x;
                        var _loc5_:*;
                        §§push(_loc5_ = Number(Math.abs(_loc4_)));
                        if(_loc7_)
                        {
                           §§push(§§pop() / 1024);
                           if(!(_loc6_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc7_ || param2)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr229:
                                       addr228:
                                       §§push(§§pop() * §=C§);
                                       if(_loc6_)
                                       {
                                       }
                                       addr233:
                                       _loc5_ = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(this.§8_§);
                                          while(true)
                                          {
                                             if(§§pop() != null)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§push(this.§8_§);
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr358:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr357:
                                                }
                                                §§goto(addr358);
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop18:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§8_§ = §,!b§.§<d§.§>a§(this.§+A§,{"x":_loc3_},null,_loc5_,§,!b§.§4t§);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(this.§8_§);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§pop().onComplete = this.§ !2§;
                                                            loop21:
                                                            while(_loc7_ || this)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              this.§ !2§();
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§+A§.x = _loc3_;
                                                                                 continue loop22;
                                                                              }
                                                                              addr339:
                                                                           }
                                                                        }
                                                                        addr286:
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr339);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr358);
                                    }
                                    §§goto(addr233);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr229);
                     }
                  }
                  §§goto(addr125);
               }
               while(true)
               {
                  §§push(this.§#!o§);
                  if(_loc7_ || param2)
                  {
                     §§push(§§pop().length - 1);
                     if(!_loc6_)
                     {
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param1 = §§pop();
                           §§goto(addr156);
                        }
                        addr155:
                     }
                     else
                     {
                        addr179:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr163:
                     §§push(-§§pop()[param1].x);
                     if(_loc7_)
                     {
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function § !2§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§%3§.length)
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§=![§ = false;
                        loop2:
                        while(_loc3_ || this)
                        {
                           LevelManager.§`!-§(LevelManager.§>!§).§-!F§ = this.§^!h§;
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              loop3:
                              while(true)
                              {
                                 this.updatePageNumber(_loc1_);
                                 addr110:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§%3§);
                                       addr134:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr135:
                                          while(true)
                                          {
                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr72:
                                 _loc1_++;
                                 break loop2;
                              }
                              addr125:
                           }
                           else
                           {
                              addr88:
                              if(_loc2_ && _loc3_)
                              {
                                 while(true)
                                 {
                                    (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
                                    §§goto(addr125);
                                 }
                                 addr138:
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr138);
                        }
                        continue;
                        addr64:
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr64);
               }
               else
               {
                  addr129:
                  if(_loc1_ != this.§^!h§)
                  {
                     §§push(this.§%3§);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr88);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr132);
            }
            §§goto(addr129);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).§"E§.text = LevelManager.§`!-§(LevelManager.§>!§).pageIndexes[param1];
         }
      }
   }
}
