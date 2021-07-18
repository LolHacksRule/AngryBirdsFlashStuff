package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§%!M§;
   import §0"$§.§+!@§;
   import §0"$§.§7!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §8!O§.§]!n§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §4!9§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelSelectionState";
      
      protected static const §+p§:Number = 0.5;
      
      public static var §#!p§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-!q§ = "LevelSelectionState";
            while(true)
            {
               §+p§ = 0.5;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §#!p§ = "";
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      protected var § u§:Boolean = false;
      
      protected var §'-§:§"!a§;
      
      protected var §&3§:§"!a§;
      
      protected var §`?§:MovieClip;
      
      protected var §#$§:Array;
      
      protected var §62§:Array;
      
      protected var §+A§:int = 0;
      
      protected var §]!@§:int = 0;
      
      protected var §6!x§:int = 0;
      
      protected var §4q§:Boolean = false;
      
      protected var §>!@§:§0]§ = null;
      
      protected var §>!s§:Dictionary;
      
      protected var §1!"§:Array;
      
      protected var §7W§:Array;
      
      protected var §7!k§:§,!e§;
      
      protected var §!b§:Number = 0;
      
      public function §4!9§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            do
            {
               this.§;-§();
            }
            while(!(_loc2_ || this));
            
         }
         loop1:
         while(true)
         {
            §§push(this.§&3§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§62§ = [];
                     while(!(_loc1_ && this))
                     {
                        this.§#$§ = [];
                        if(_loc2_ || this)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_);
                  
                  return;
               }
               §§push(this.§&3§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §;-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?P§ = new §2W§(this);
            loop0:
            while(true)
            {
               §?P§.init(§#"0§.§+#§.Views.View_LevelSelection[0]);
               while(true)
               {
                  this.§&3§ = §?P§.getItemByName("Container_LevelRepeaters") as §"!a§;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§'-§ = §?P§.getItemByName("Container_LevelSelection") as §"!a§;
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§&!"§.§1!D§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§&!"§.§1!D§);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().§"!Q§(false);
                     while(true)
                     {
                        this.§1!;§();
                        loop4:
                        for(; !(_loc2_ && param1); if(_loc2_ && this)
                        {
                           continue;
                        },if(§?P§.stage)
                        {
                           if(!(_loc2_ && param1))
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §?P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!5§);
                                       addr65:
                                       if(!_loc3_)
                                       {
                                          §§goto(addr159);
                                       }
                                       §§goto(addr25);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr65);
                        },§§goto(addr25))
                        {
                           §6!!§.singleton.§"!<§();
                           loop5:
                           while(true)
                           {
                              if(this.§62§.length == 1)
                              {
                                 while(true)
                                 {
                                    (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(false);
                                 }
                                 addr182:
                              }
                              else
                              {
                                 (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(true);
                                 while(true)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop0;
                                    }
                                    (§?P§.getItemByName("Button_Next") as §;§).setVisibility(true);
                                    while(true)
                                    {
                                       (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).setVisibility(true);
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                this.§!b§ = this.§&3§.x;
                                                continue loop8;
                                                addr159:
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop5;
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                 }
                                 addr143:
                              }
                              while(true)
                              {
                                 (§?P§.getItemByName("Button_Next") as §;§).setVisibility(false);
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      protected function §0!5§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.keyCode != Keyboard.LEFT)
            {
               if(param1.keyCode == Keyboard.RIGHT)
               {
                  if(_loc2_)
                  {
                     this.§`!>§();
                  }
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr19);
                     }
                     else
                     {
                        addr65:
                        this.§<0§();
                     }
                     §§goto(addr19);
                  }
               }
               addr19:
               return;
            }
         }
         §§goto(addr65);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.update(param1);
         }
         while(true)
         {
            this.§,"+§();
            while(!_loc3_)
            {
               this.§]!c§();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §,"+§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(_loc4_)
            {
               §§push(this.§#$§);
               if(_loc4_ || _loc1_)
               {
                  if(_loc4_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              §§push(this.§6!x§);
                              if(!(_loc3_ && this))
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.§+A§);
                                    if(_loc4_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop2:
                                          for(; !(_loc3_ && _loc1_); if(_loc3_ && _loc1_)
                                          {
                                             continue;
                                          },if(!(_loc3_ && _loc1_))
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            this.§]!@§ = this.§6!x§ - 1;
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr565);
                                                      }
                                                      §§goto(addr483);
                                                   }
                                                   §§goto(addr449);
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr267);
                                          },§§goto(addr315))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§+A§);
                                                   loop10:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(this.§6!x§);
                                                      while(true)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            §§push(this.§+A§);
                                                            if(!_loc4_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.§6!x§);
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               this.§]!@§ = this.§6!x§;
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        this.§7!k§.§?!8§(this.§1!"§[this.§]!@§].red,this.§1!"§[this.§]!@§].green,this.§1!"§[this.§]!@§].blue);
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 addr87:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§!b§ = this.§&3§.x;
                                                                                    if(!(_loc4_ || _loc3_))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       continue loop7;
                                                                                       addr165:
                                                                                    }
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr242:
                                                                                    addr122:
                                                                                    loop4:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       addr236:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§]!@§ = this.§6!x§ + 1;
                                                                                          break loop4;
                                                                                       }
                                                                                    }
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§#$§[_loc1_].x;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr482:
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       this.§=K§(_loc1_);
                                                                                       while(true)
                                                                                       {
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§&3§);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§push(-§§pop().x);
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§62§);
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      loop20:
                                                                                                      while(!(_loc3_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr407:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr410:
                                                                                                                        _loc2_ = 0;
                                                                                                                        addr323:
                                                                                                                        §§push(_loc2_);
                                                                                                                        break loop1;
                                                                                                                        addr411:
                                                                                                                        addr409:
                                                                                                                     }
                                                                                                                     _loc1_++;
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr449:
                                                                                                                     §§push(this.§!b§);
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr372:
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§62§);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr544:
                                                                                                                           }
                                                                                                                           §§push(this.§62§);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc3_ && _loc1_)
                                                                                                                              {
                                                                                                                                 addr525:
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    break loop20;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr525);
                                                                                                                        §§push(this.§62§);
                                                                                                                     }
                                                                                                                     §§goto(addr372);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr557:
                                                                                                                     §§push(§§pop() >= §§pop()[_loc1_].x);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        break loop21;
                                                                                                                     }
                                                                                                                     addr564:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr565:
                                                                                                                        §§push(this.§!b§);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr523);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                               if(_loc3_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr407);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr531:
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  addr533:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr483:
                                                                                                                     addr492:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                     if(§§pop() >= this.§#$§.length)
                                                                                                                     {
                                                                                                                        addr496:
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           this.§6!x§ = _loc1_;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this.§#$§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 addr479:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                    §§goto(addr482);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr478:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr483);
                                                                                                                              }
                                                                                                                              §§goto(addr496);
                                                                                                                              addr506:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr501:
                                                                                                                     }
                                                                                                                     addr512:
                                                                                                                     §§push(this.§#$§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        addr513:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                           addr516:
                                                                                                                           _loc2_++;
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         §§goto(addr557);
                                                                                                      }
                                                                                                      §§goto(addr531);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr542:
                                                                                                §§push(-§§pop().x);
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                       }
                                                                                       addr454:
                                                                                    }
                                                                                    §§goto(addr535);
                                                                                    §§goto(addr87);
                                                                                 }
                                                                                 addr342:
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                                 addr26:
                                                                              }
                                                                              §§goto(addr516);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§goto(addr492);
                                                   }
                                                   §§goto(addr536);
                                                   addr231:
                                                }
                                                addr332:
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(this.§#$§);
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                  addr315:
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     §§goto(addr501);
                                                                  }
                                                                  (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§#$§[_loc1_].x;
                                                                  this.§=K§(_loc1_);
                                                                  §§goto(addr407);
                                                                  addr267:
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            addr351:
                                                            if(_loc4_)
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                               _loc2_++;
                                                               §§goto(addr342);
                                                               addr356:
                                                            }
                                                            §§goto(addr513);
                                                         }
                                                         §§goto(addr512);
                                                      }
                                                      §§goto(addr478);
                                                   }
                                                   addr350:
                                                   §§goto(addr351);
                                                   §§push(_loc2_);
                                                }
                                                §§goto(addr356);
                                             }
                                             §§goto(addr315);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr26);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr410);
                              }
                              §§goto(addr231);
                           }
                           addr329:
                           this.§6!x§ = _loc1_;
                           §§goto(addr332);
                        }
                        §§goto(addr242);
                     }
                     else
                     {
                        §§push(this.§&3§);
                     }
                     §§goto(addr542);
                  }
                  §§goto(addr492);
               }
               if(§§pop() >= §§pop().length)
               {
                  §§goto(addr329);
               }
               §§goto(addr350);
               §§push(this.§#$§);
            }
            while(true)
            {
               §§goto(addr327);
               §§goto(addr410);
            }
            §§goto(addr407);
         }
      }
      
      protected function §]!c§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§62§.length)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(this.§62§);
                           loop2:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop3:
                              while(true)
                              {
                                 §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§62§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          while(true)
                                          {
                                             if(§§pop()[§§pop()].mClip.alpha < 1)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§62§);
                                                      break;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop() > 1000)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(1000);
                                                                  addr180:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr181:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr182:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr179:
                                                            }
                                                            while(true)
                                                            {
                                                               if(Math.abs(this.§62§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                                               {
                                                                  break loop5;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  continue loop11;
                                                               }
                                                               addr214:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr215:
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§62§);
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc1_);
                                                if(_loc3_)
                                                {
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   (§§pop()[§§pop()] as §7!a§).setEnabled(true);
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc1_++;
                                                               addr50:
                                                               loop17:
                                                               while(_loc4_ && this)
                                                               {
                                                                  while(!_loc4_)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr215);
                                                                     continue loop17;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                }
                                                else
                                                {
                                                   addr125:
                                                   if(_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   (§§pop()[§§pop()] as §7!a§).setEnabled(false);
                                                }
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr50);
               }
               else
               {
                  §§push(Number(this.§&3§.x + this.§62§[_loc1_].x));
               }
               §§goto(addr214);
            }
            §§goto(addr180);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§?P§.stage)
            {
               loop0:
               while(true)
               {
                  §?P§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!5§);
                  addr101:
                  addr73:
                  while(true)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§,""§();
                           while(true)
                           {
                              (§?P§.getItemByName("Button_Back") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              while(!(_loc1_ && this))
                              {
                                 §&" §.resetPreviousLevel();
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break loop4;
                                       }
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        return;
                        addr80:
                     }
                     continue loop0;
                  }
                  §§goto(addr101);
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr73);
               §§goto(addr101);
            }
         }
         §§goto(addr80);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!@§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr76:
                     this.§>!@§.stop();
                     addr77:
                     while(true)
                     {
                        this.§>!@§ = null;
                        addr51:
                        while(true)
                        {
                        }
                     }
                     addr77:
                  }
                  §§goto(addr77);
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2.length > 0);
            if(_loc5_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr201:
                     while(true)
                     {
                        §§pop();
                        addr202:
                        while(true)
                        {
                           §§push(param3 is §%!M§);
                        }
                     }
                     addr201:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              §§push((param3 as §%!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr192:
                                       while(true)
                                       {
                                          §§push((param3 as §%!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                          if(_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                    addr191:
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr118);
                                       }
                                       addr116:
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr82);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr201);
         }
         §§goto(addr116);
      }
      
      protected function §`!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §'!c§.§3!f§("Menu_Confirm");
            if(_loc3_ || _loc3_)
            {
               addr33:
               if(!this.§4q§)
               {
                  if(_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§+A§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc1_)
                     {
                        _loc1_.§+A§ = _loc2_;
                     }
                     if(_loc3_ || this)
                     {
                        this.§&"#§(this.§+A§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      protected function §<0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §'!c§.§3!f§("Menu_Confirm");
            if(_loc3_ || _loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr90);
         }
         addr33:
         if(!this.§4q§)
         {
            if(_loc3_ || this)
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§+A§);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_.§+A§ = _loc2_;
               }
               if(!(_loc4_ && _loc3_))
               {
                  addr90:
                  this.§&"#§(this.§+A§);
               }
            }
         }
      }
      
      public function §1!;§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!(_loc9_ && _loc1_))
         {
            this.§1!"§ = [];
            if(_loc10_)
            {
               this.§7W§ = [];
            }
         }
         var _loc2_:§3%§ = §&" §.getEpisode(§&" §.currentEpisode);
         if(_loc10_ || _loc1_)
         {
            this.§+A§ = _loc2_.currentPage;
         }
         while(true)
         {
            while(true)
            {
               this.§]!@§ = this.§+A§;
               do
               {
                  this.§6!x§ = this.§+A§;
               }
               while(!_loc10_);
               
               if(!(_loc10_ || _loc3_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc3_:* = Number(0);
               loop3:
               while(_loc3_ < _loc2_.§4!5§)
               {
                  _loc4_ = _loc2_.§>!N§(_loc3_);
                  if(!(_loc9_ && _loc1_))
                  {
                     §§push(this.§1!"§);
                     while(true)
                     {
                        §§pop().push(_loc2_.§,U§(_loc3_));
                        loop5:
                        while(true)
                        {
                           §§push(this.§7W§);
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§pop().push(_loc2_.§1!#§(_loc3_));
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§<" §(_loc4_,_loc3_,_loc1_,_loc2_));
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr150:
                                    while(_loc10_)
                                    {
                                       continue loop5;
                                    }
                                    addr159:
                                    continue loop6;
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc9_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       if(!(_loc10_ || this))
                                       {
                                          continue loop8;
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc10_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr150);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr159);
               }
               if(_loc10_)
               {
                  this.§7!k§ = new §,!e§(this.§1!"§[this.§+A§].red,this.§1!"§[this.§+A§].green,this.§1!"§[this.§+A§].blue,1);
                  if(_loc10_)
                  {
                     §?P§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§7!k§);
                     if(_loc10_)
                     {
                        addr226:
                        if(_loc2_.§&!p§)
                        {
                           if(_loc9_ && this)
                           {
                           }
                           addr272:
                           if(_loc2_.§@"%§)
                           {
                              if(_loc10_)
                              {
                                 addr277:
                                 _loc8_ = new (_loc7_ = §<V§.§"!,§(_loc2_.§@"%§))();
                                 if(_loc10_)
                                 {
                                    §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                    if(_loc10_)
                                    {
                                       addr303:
                                       this.§?m§();
                                       if(_loc10_ || _loc3_)
                                       {
                                          if(§#!p§ == StateCutScene.§-!q§)
                                          {
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                §#!p§ = "";
                                                this.§&"#§(this.§6!x§);
                                                addr365:
                                             }
                                             §§goto(addr365);
                                          }
                                          else
                                          {
                                             this.§&"#§(this.§+A§,true);
                                             if(_loc10_ || this)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr313);
                                             }
                                          }
                                          addr313:
                                          return;
                                          addr312:
                                       }
                                       §§goto(addr365);
                                    }
                                 }
                                 §§goto(addr312);
                              }
                           }
                           else
                           {
                              §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                           }
                           §§goto(addr303);
                        }
                        else
                        {
                           §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           §§goto(addr272);
                        }
                     }
                     _loc6_ = new (_loc5_ = §<V§.§"!,§(_loc2_.§&!p§))();
                     if(!(_loc9_ && _loc1_))
                     {
                        §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                        if(!(_loc9_ && this))
                        {
                           §§goto(addr272);
                        }
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr272);
               }
               §§goto(addr226);
            }
         }
      }
      
      protected function §<" §(param1:Array, param2:int, param3:Number, param4:§3%§) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §<V§.§"!,§(this.§7W§[param2]);
         var _loc7_:Number = 0;
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc14_)
            {
               §§push(§6!!§.singleton.§<!S§.userProgress.§]!g§(_loc10_));
               if(!(_loc14_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc14_ && param1)
               {
                  break;
               }
            }
            _loc12_ = this.§@X§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc15_)
            {
               §§push(_loc11_);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 _loc13_.@MouseUp = _loc10_;
                                 loop9:
                                 while(_loc15_)
                                 {
                                    while(true)
                                    {
                                       _loc13_.@scaleOnMouseOver = "True";
                                       while(true)
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          addr191:
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             if(!(_loc15_ || this))
                                             {
                                                break;
                                             }
                                             addr154:
                                             if(!(_loc14_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   continue;
                                                }
                                                addr120:
                                                loop14:
                                                while(true)
                                                {
                                                   _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                   addr126:
                                                   while(_loc15_ || param3)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop12;
                                                   }
                                                   addr180:
                                                   while(true)
                                                   {
                                                      continue loop14;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             addr200:
                                             while(true)
                                             {
                                                if(_loc15_ || param1)
                                                {
                                                   if(_loc15_ || param2)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      break loop12;
                                                   }
                                                   break;
                                                }
                                                addr244:
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop9;
                                                }
                                                §§goto(addr154);
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                          if(!(_loc15_ || this))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc12_.MovieClip_Stars.mouseEnabled = false;
                                             §§goto(addr180);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr200);
                                 }
                              }
                           }
                           §§goto(addr192);
                        }
                        addr232:
                     }
                     §§goto(addr244);
                  }
               }
            }
            §§goto(addr176);
         }
         _loc8_ = <Repeater/>;
         if(!(_loc14_ && param1))
         {
            §§push(param1);
            loop18:
            while(§§pop().length != 15)
            {
               §§push(param1);
               if(_loc14_)
               {
                  continue;
               }
               if(§§pop().length != 12)
               {
                  _loc8_.@name = "Repeater_LevelSelection";
                  loop19:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        _loc8_.@button = this.§7W§[param2];
                        loop21:
                        while(!_loc14_)
                        {
                           while(true)
                           {
                              _loc8_.@enabled = "True";
                              loop27:
                              for(; !(_loc14_ && param3); if(_loc14_ && param3)
                              {
                                 continue;
                              },if(_loc15_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr285);
                                 }
                                 var _loc9_:§7!a§;
                                 (_loc9_ = new §7!a§(_loc8_,this.§&3§,null,null)).§=p§(_loc5_);
                                 if(_loc15_)
                                 {
                                    _loc9_.setVisibility(true);
                                    loop30:
                                    while(true)
                                    {
                                       _loc9_.x += param3;
                                       loop31:
                                       while(true)
                                       {
                                          this.§&3§.§<!f§(_loc9_);
                                          while(true)
                                          {
                                             this.§62§.push(_loc9_);
                                             while(!(_loc14_ && param3))
                                             {
                                                continue loop30;
                                                while(true)
                                                {
                                                   param3 = §§pop();
                                                   if(!(_loc15_ || this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop31;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param3);
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(§§pop() + §6!!§.§+g§);
                                    }
                                    §§goto(addr392);
                                 }
                              })
                              {
                                 while(true)
                                 {
                                    _loc8_.@buttonSelectionType = "NO_SELECTION";
                                    while(!(_loc14_ && param3))
                                    {
                                       if(_loc15_)
                                       {
                                          _loc8_.@fromLibrary = "true";
                                          if(!(_loc14_ && param3))
                                          {
                                             continue loop27;
                                          }
                                          continue;
                                       }
                                       addr340:
                                       while(true)
                                       {
                                          if(!(_loc15_ || param2))
                                          {
                                             break loop18;
                                          }
                                          continue loop20;
                                       }
                                    }
                                    continue loop21;
                                 }
                              }
                              addr355:
                              while(true)
                              {
                                 continue loop20;
                              }
                           }
                        }
                        continue loop19;
                     }
                  }
               }
               while(true)
               {
                  _loc8_.@name = "Repeater_LevelSelection12";
                  §§goto(addr340);
               }
            }
            while(true)
            {
               _loc8_.@name = "Repeater_LevelSelection15";
               §§goto(addr355);
            }
         }
         §§goto(addr320);
      }
      
      protected function §@X§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc9_ || param1)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     _loc6_.gotoAndStop("Open");
                     addr218:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        addr212:
                        while(true)
                        {
                           §§push(§6!!§.singleton);
                           addr186:
                           while(true)
                           {
                              §§push(§§pop().§<!S§);
                              addr187:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 addr188:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr189:
                                    while(true)
                                    {
                                       §§push(§§pop().§2p§(§§pop()));
                                       addr190:
                                       while(§§pop() == 100)
                                       {
                                          while(true)
                                          {
                                             _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                             addr196:
                                             while(true)
                                             {
                                                _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                addr182:
                                                while(true)
                                                {
                                                   addr131:
                                                   while(true)
                                                   {
                                                      addr126:
                                                      while(true)
                                                      {
                                                         _loc6_.isOpen = param2;
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr171:
                                       addr176:
                                       _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                       while(true)
                                       {
                                          _loc6_.MovieClip_Feather.mouseEnabled = false;
                                          §§goto(addr171);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr215:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        if(_loc8_)
                        {
                           §§goto(addr176);
                        }
                        §§goto(addr126);
                     }
                  }
                  addr137:
               }
               addr152:
               while(true)
               {
                  if(_loc9_ || param1)
                  {
                     if(_loc9_ || param1)
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr212);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr196);
               }
            }
            addr214:
         }
         while(true)
         {
            §§push(param2);
            if(_loc9_ || param1)
            {
               if(!§§pop())
               {
                  break;
               }
               continue;
            }
            §§goto(addr214);
         }
         return _loc6_;
      }
      
      protected function §?m§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc6_ || _loc1_)
         {
            if(this.§62§.length == 1)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(_loc6_)
         {
            this.§>!s§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§62§.length)
         {
            _loc1_ = §<V§.§"!,§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc5_)
            {
               _loc2_.x = §6!!§.§+g§ / 2 + _loc3_ - this.§62§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc2_.height / 2;
                  while(true)
                  {
                     if(_loc4_ != this.§+A§)
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              this.§'-§.mClip.addChild(_loc2_);
                              loop5:
                              while(true)
                              {
                                 this.§>!s§[_loc2_] = _loc4_;
                                 addr173:
                                 loop6:
                                 while(true)
                                 {
                                    this.§#$§.push(_loc2_);
                                    while(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(Number(§§pop() + _loc2_.width));
                                       }
                                       _loc3_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"%§);
                                                      while(_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue;
                                                      addr121:
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = _loc2_.x;
                                                      addr227:
                                                      addr233:
                                                      while(true)
                                                      {
                                                         (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).y = _loc2_.y - _loc2_.height;
                                                      }
                                                      addr233:
                                                      while(true)
                                                      {
                                                         _loc2_.gotoAndStop("Selected");
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                while(_loc6_)
                                                {
                                                   this.§=K§(_loc4_);
                                                   break loop8;
                                                }
                                                §§goto(addr233);
                                             }
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          continue loop4;
                                       }
                                       addr99:
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          _loc4_++;
                                          if(!(_loc5_ && this))
                                          {
                                             continue loop6;
                                          }
                                          addr97:
                                          while(_loc6_)
                                          {
                                             §§goto(addr99);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr227);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr233);
                     if(!(_loc5_ && this))
                     {
                        while(false)
                        {
                           while(true)
                           {
                              _loc2_.buttonMode = true;
                              §§goto(addr97);
                           }
                           §§goto(addr173);
                        }
                        continue loop0;
                        addr91:
                     }
                  }
               }
            }
            §§goto(addr91);
         }
         if(_loc6_ || this)
         {
            §§push(this.§62§.length * _loc2_.width);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() / 2);
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!(_loc5_ && this))
                  {
                     addr311:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc6_ || this)
                  {
                     (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
                  }
                  while(true)
                  {
                     (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
                     §§goto(addr378);
                  }
               }
            }
            §§goto(addr311);
         }
         addr378:
         while(true)
         {
            (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc3_ + 10);
            do
            {
               (§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc3_ + 10);
            }
            while(_loc5_);
            
            if(_loc6_)
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop18;
            }
         }
      }
      
      protected function §,""§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7!k§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr34:
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§7!k§);
                  }
                  var _loc1_:int = 0;
                  loop0:
                  while(true)
                  {
                     if(_loc1_ >= this.§#$§.length)
                     {
                        do
                        {
                           this.§#$§ = [];
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§&3§);
                                 if(_loc3_ || _loc1_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             addr92:
                                             if(!_loc2_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr145);
                                             }
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             this.§62§ = [];
                                             addr69:
                                             if(!_loc2_)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§'-§);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§pop().mClip.removeChild(this.§#$§[_loc1_]);
                                                addr133:
                                                while(true)
                                                {
                                                   break loop3;
                                                }
                                                continue loop0;
                                                addr133:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§§pop().mClip.contains(this.§#$§[_loc1_]))
                                                   {
                                                      addr145:
                                                      while(true)
                                                      {
                                                         this.§#$§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4"%§);
                                                         continue loop8;
                                                      }
                                                      addr145:
                                                   }
                                                }
                                                addr138:
                                             }
                                             while(true)
                                             {
                                                _loc1_++;
                                                break loop3;
                                                §§goto(addr133);
                                             }
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       addr89:
                                       this.§&3§.mClip.removeChildAt(0);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr89);
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr133);
                              }
                           }
                        }
                        while(_loc2_);
                        
                        return;
                     }
                     §§push(this.§'-§);
                     §§goto(addr138);
                  }
               }
               §§goto(addr34);
            }
            §§pop().§9O§();
         }
         §§goto(addr34);
      }
      
      protected function §4"%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§4q§)
            {
               if(!(_loc2_ && this))
               {
                  addr54:
                  this.§&"#§(this.§>!s§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function §<R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§4q§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §<f§(§4!9§.§-!q§);
               }
            }
         }
      }
      
      protected function §&"#§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.§4q§ = true;
         }
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               if(§§pop() > this.§62§.length - 1)
               {
                  if(_loc6_)
                  {
                     §§push(this.§62§);
                     if(!(_loc6_ || param1))
                     {
                        break;
                     }
                     §§push(§§pop().length - 1);
                     if(_loc6_)
                     {
                        addr159:
                        param1 = int(§§pop());
                     }
                     else
                     {
                        addr179:
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = this.§62§[param1].x + this.§&3§.x;
                        var _loc5_:*;
                        §§push(_loc5_ = Number(Math.abs(_loc4_)));
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() / 1024);
                           if(!(_loc7_ && param2))
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || _loc3_)
                                 {
                                    _loc5_ = §§pop();
                                    addr247:
                                    if(!_loc7_)
                                    {
                                       §§push(§+p§);
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       addr377:
                                       if(this.§>!@§ != null)
                                       {
                                          addr381:
                                          this.§>!@§.stop();
                                          addr379:
                                       }
                                       if(param2)
                                       {
                                          addr360:
                                          this.§&3§.x = _loc3_;
                                          addr374:
                                          §§push(param2);
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            this.§8Q§();
                                                            addr301:
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr379);
                                                            }
                                                            return;
                                                            addr303:
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                      addr349:
                                                      if(_loc6_ || this)
                                                      {
                                                         addr307:
                                                         §§push(this.§>!@§);
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§pop().onComplete = this.§8Q§;
                                                               addr324:
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr301);
                                             }
                                             §§push(this.§>!@§);
                                             if(_loc6_)
                                             {
                                                §§pop().play();
                                                if(_loc7_ && _loc3_)
                                                {
                                                }
                                                §§goto(addr301);
                                             }
                                             §§goto(addr307);
                                          }
                                          §§goto(addr377);
                                       }
                                       this.§>!@§ = §'^§.§2Z§.§!!f§(this.§&3§,{"x":_loc3_},null,_loc5_,§]!n§.easeOut);
                                       §§goto(addr349);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    addr246:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr247);
                           }
                        }
                        §§goto(addr246);
                     }
                  }
                  while(true)
                  {
                     addr102:
                     loop4:
                     while(true)
                     {
                        this.§+A§ = param1;
                        addr106:
                        loop5:
                        while(_loc6_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           addr133:
                           while(true)
                           {
                              §§push(0);
                              addr134:
                              while(true)
                              {
                                 param1 = §§pop();
                                 break loop5;
                              }
                           }
                        }
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                  }
                  addr160:
               }
               else
               {
                  §§push(param1);
                  if(_loc6_ || param2)
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr133);
                           }
                           addr85:
                           loop8:
                           while(true)
                           {
                              if(_loc7_ && param1)
                              {
                                 continue loop2;
                              }
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    this.§]!@§ = this.§6!x§ + 1;
                                 }
                                 break;
                                 addr101:
                              }
                              §§push(this.§+A§);
                              if(_loc6_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr134);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                                 addr83:
                              }
                           }
                           addr165:
                           break loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr159);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr134);
            }
            §§push(-§§pop()[param1].x);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
            §§goto(addr179);
         }
      }
      
      protected function §8Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() >= this.§#$§.length)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§4q§ = false;
                           loop2:
                           for(; !_loc2_; §&" §.getEpisode(§&" §.currentEpisode).currentPage = this.§+A§,if(_loc3_ || _loc1_)
                           {
                              continue loop1;
                           })
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              addr122:
                              if(_loc3_ || this)
                              {
                                 addr87:
                                 while(true)
                                 {
                                    _loc1_++;
                                    break loop2;
                                 }
                                 addr87:
                              }
                              while(true)
                              {
                                 §§goto(addr87);
                              }
                           }
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§#$§);
                                 addr154:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr155:
                                    while(true)
                                    {
                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                    }
                                 }
                              }
                              §§goto(addr87);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§#$§[_loc1_].x;
                           break loop1;
                        }
                     }
                     break;
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                     }
                  }
                  while(true)
                  {
                     this.§=K§(_loc1_);
                     §§goto(addr122);
                  }
               }
               else
               {
                  addr139:
                  if(_loc1_ != this.§+A§)
                  {
                     §§push(this.§#$§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr122);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr154);
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr139);
         }
      }
      
      protected function §=K§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).§"v§.text = §&" §.getEpisode(§&" §.currentEpisode).getPageIndex(param1).toString();
         }
      }
   }
}
