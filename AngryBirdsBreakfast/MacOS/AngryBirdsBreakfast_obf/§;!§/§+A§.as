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
   
   public class §+A§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelSelectionState";
      
      protected static const §9s§:Number = 0.5;
      
      public static var §!!8§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+A§)
         {
            §-!q§ = "LevelSelectionState";
         }
         do
         {
            §9s§ = 0.5;
            do
            {
               §!!8§ = "";
            }
            while(_loc2_ && §+A§);
            
         }
         while(!_loc1_);
         
      }
      
      protected var § u§:Boolean = false;
      
      protected var §]!@§:§"!a§;
      
      protected var §6!x§:§"!a§;
      
      protected var §4q§:MovieClip;
      
      protected var §>!@§:Array;
      
      protected var §>!s§:Array;
      
      protected var §1!"§:int = 0;
      
      protected var §7W§:int = 0;
      
      protected var §!b§:int = 0;
      
      protected var §;-§:Boolean = false;
      
      protected var §0!5§:§0]§ = null;
      
      protected var §,"+§:Dictionary;
      
      protected var §]!c§:Array;
      
      protected var §`!>§:Array;
      
      protected var §7!k§:§,!e§;
      
      protected var §<0§:Number = 0;
      
      public function §+A§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            this.§1!;§();
         }
         while(_loc1_);
         
         while(true)
         {
            §§push(this.§6!x§);
            if(!_loc1_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  do
                  {
                     this.§>!s§ = [];
                     do
                     {
                        this.§>!@§ = [];
                     }
                     while(!(_loc2_ || this));
                     
                  }
                  while(_loc1_);
                  
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
                  continue;
               }
               §§push(this.§6!x§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §1!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?P§ = new §2W§(this);
            while(true)
            {
               §?P§.init(§#"0§.§+#§.Views.View_LevelSelection[0]);
               addr80:
               while(!_loc1_)
               {
               }
            }
         }
         while(true)
         {
            this.§6!x§ = §?P§.getItemByName("Container_LevelRepeaters") as §"!a§;
            while(!_loc1_)
            {
               this.§]!@§ = §?P§.getItemByName("Container_LevelSelection") as §"!a§;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
            §§goto(addr80);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     §§pop().§"!Q§(false);
                     loop3:
                     while(true)
                     {
                        this.§<R§();
                        while(true)
                        {
                           §6!!§.singleton.§"!<§();
                           loop5:
                           while(_loc3_)
                           {
                              if(this.§>!s§.length != 1)
                              {
                                 (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(true);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       (§?P§.getItemByName("Button_Next") as §;§).setVisibility(true);
                                       loop7:
                                       for(; !_loc2_; while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr52);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(false);
                                                   }
                                                   addr172:
                                                }
                                                addr165:
                                                (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).setVisibility(false);
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       },§§goto(addr20))
                                       {
                                          (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).setVisibility(true);
                                          while(true)
                                          {
                                             addr52:
                                             addr44:
                                             while(true)
                                             {
                                                this.§<0§ = this.§6!x§.x;
                                                continue loop7;
                                             }
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr20:
                                                return;
                                                addr51:
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       (§?P§.getItemByName("Button_Next") as §;§).setVisibility(false);
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr172);
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(§?P§.stage)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §?P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<" §);
                                       §§goto(addr44);
                                    }
                                    §§goto(addr58);
                                 }
                                 §§goto(addr44);
                              }
                              §§goto(addr20);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function §<" §(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1.keyCode == Keyboard.LEFT)
            {
               if(!_loc2_)
               {
                  addr71:
                  this.§4"%§();
               }
               addr73:
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               if(!_loc2_)
               {
                  this.§,""§();
               }
               if(!_loc3_)
               {
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
            while(true)
            {
               this.§@X§();
               while(_loc2_)
               {
                  this.§?m§();
                  if(!_loc3_)
                  {
                     return;
                     addr38:
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §@X§() : void
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
            while(!_loc4_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(this.§>!@§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§!b§);
                           if(!(_loc4_ && this))
                           {
                              §§push(this.§1!"§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§1!"§);
                                       addr184:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§!b§);
                                          loop11:
                                          while(§§pop() <= §§pop())
                                          {
                                             §§push(this.§1!"§);
                                             if(_loc4_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(this.§!b§);
                                             if(!(_loc3_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                continue loop2;
                                             }
                                             this.§7W§ = this.§!b§;
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               this.§7!k§.§?!8§(this.§]!c§[this.§7W§].red,this.§]!c§[this.§7W§].green,this.§]!c§[this.§7W§].blue);
                                                               addr72:
                                                               addr74:
                                                               while(_loc4_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§<0§ = this.§6!x§.x;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           while(_loc3_)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc3_ || _loc1_))
                                                                                 {
                                                                                    _loc2_ = 0;
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr388:
                                                                                    addr390:
                                                                                    addr389:
                                                                                 }
                                                                                 continue loop7;
                                                                                 break loop1;
                                                                              }
                                                                              break loop6;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr131:
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop2;
                                                                        break loop11;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr72);
                                                                  §§goto(addr74);
                                                               }
                                                               addr200:
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     this.§2!R§(_loc1_);
                                                                     addr430:
                                                                     if(_loc3_)
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6!x§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(-§§pop().x);
                                                                              loop20:
                                                                              while(!_loc4_)
                                                                              {
                                                                                 §§push(this.§>!s§);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    addr403:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                       addr406:
                                                                                       loop23:
                                                                                       while(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr418:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§push(this.§<0§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§>!s§);
                                                                                                                  addr506:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                           break loop23;
                                                                                                                        }
                                                                                                                        addr514:
                                                                                                                     }
                                                                                                                     addr547:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        addr548:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                           addr551:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr552:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                    }
                                                                                                                                    addr553:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          addr527:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             addr528:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   addr470:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§>!@§);
                                                                                                                                                      addr472:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop().length)
                                                                                                                                                         {
                                                                                                                                                            while(_loc4_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr476:
                                                                                                                                                            this.§!b§ = _loc1_;
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§>!@§);
                                                                                                                                                               addr449:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  addr450:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                     addr453:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                           addr554:
                                                                                                                                                                           addr554:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§<0§);
                                                                                                                                                                              break loop20;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr474);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr476);
                                                                                                                                                            }
                                                                                                                                                            addr474:
                                                                                                                                                            addr479:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§>!@§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               addr489:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr488:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc2_++;
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr524:
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr504:
                                                                                                            }
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§goto(addr479);
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                }
                                                                                                addr417:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   addr198:
                                                                                                   addr209:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc1_++;
                                                                                                      §§goto(addr200);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr198);
                                                                                                   }
                                                                                                }
                                                                                                addr386:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr504);
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr535:
                                                                                 }
                                                                                 §§goto(addr547);
                                                                                 §§goto(addr554);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr533:
                                                                           §§push(-§§pop().x);
                                                                           §§goto(addr535);
                                                                        }
                                                                     }
                                                                     §§goto(addr528);
                                                                  }
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         §§goto(addr430);
                                                      }
                                                      _loc2_++;
                                                      addr326:
                                                      §§goto(addr388);
                                                      addr343:
                                                   }
                                                   addr311:
                                                   if(_loc3_)
                                                   {
                                                      this.§!b§ = _loc1_;
                                                      break;
                                                   }
                                                   §§goto(addr453);
                                                }
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§>!@§[_loc1_].x;
                                                      addr222:
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§2!R§(_loc1_);
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr526);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr482);
                                                }
                                                §§goto(addr418);
                                             }
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§>!@§);
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         §§goto(addr450);
                                                      }
                                                      addr340:
                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr488);
                                                }
                                                addr332:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr340);
                                                   §§push(_loc2_);
                                                }
                                                §§goto(addr449);
                                             }
                                             §§goto(addr326);
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§7W§ = this.§!b§ + 1;
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr200);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr74);
                              }
                           }
                           §§goto(addr184);
                        }
                     }
                     else
                     {
                        §§push(this.§6!x§);
                     }
                     §§goto(addr533);
                  }
                  addr302:
                  if(!(_loc4_ && _loc1_))
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        §§goto(addr311);
                     }
                     §§goto(addr332);
                     §§push(this.§>!@§);
                  }
                  §§goto(addr472);
               }
               §§goto(addr389);
            }
            while(true)
            {
               if(_loc3_ || _loc3_)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr302);
                     §§push(this.§>!@§);
                  }
                  §§goto(addr527);
               }
               §§goto(addr470);
               §§goto(addr388);
            }
         }
      }
      
      protected function §?m§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() >= this.§>!s§.length)
               {
                  if(_loc4_ || this)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              loop2:
                              while(true)
                              {
                                 _loc1_++;
                                 addr51:
                                 while(_loc3_ && this)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§>!s§);
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(§§pop()[§§pop()].mClip.alpha < 1)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§push(this.§>!s§);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc1_);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            (§§pop()[§§pop()] as §7!a§).setEnabled(true);
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(§§pop() > 1000)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1000);
                                                                                    addr196:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr197:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          addr198:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break loop10;
                                                                                             }
                                                                                             addr231:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(Math.abs(_loc2_)));
                                                                                                continue loop10;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr195:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     if(Math.abs(this.§>!s§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) <= 0.0001)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>!s§);
                                                                        addr170:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           addr171:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               break loop8;
                                                            }
                                                            addr142:
                                                         }
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr51);
               }
               else
               {
                  §§push(Number(this.§6!x§.x + this.§>!s§[_loc1_].x));
               }
               §§goto(addr230);
            }
            §§goto(addr196);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§?P§.stage)
            {
               while(true)
               {
                  §?P§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§<" §);
                  addr105:
                  while(true)
                  {
                  }
                  addr62:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §&" §.resetPreviousLevel();
                  addr69:
                  if(!_loc2_)
                  {
                     addr33:
                     if(!(_loc1_ || _loc1_))
                     {
                        loop4:
                        while(true)
                        {
                           (§?P§.getItemByName("Button_Back") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr60:
                           addr77:
                           while(!_loc2_)
                           {
                              §§goto(addr62);
                              §§goto(addr69);
                           }
                           while(!(_loc2_ && _loc1_))
                           {
                              this.§+p§();
                              continue loop4;
                           }
                           §§goto(addr105);
                        }
                     }
                     return;
                     addr40:
                  }
                  §§goto(addr60);
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr77);
               §§goto(addr105);
            }
         }
         §§goto(addr40);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§0!5§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  addr73:
                  while(true)
                  {
                     §§push(this.§0!5§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        addr76:
                        while(true)
                        {
                           this.§0!5§ = null;
                           addr57:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr195:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr197:
                        do
                        {
                           §§push(param3 is §%!M§);
                           if(!(_loc5_ || param3))
                           {
                              continue loop0;
                           }
                        }
                        while(!(_loc6_ && param2));
                        
                     }
                  }
                  addr160:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§push((param3 as §%!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                              continue loop0;
                           }
                           §§goto(addr197);
                        }
                        addr162:
                     }
                     else
                     {
                        var _loc4_:* = param2;
                        addr77:
                        if(_loc5_)
                        {
                           if("BACK" === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr240:
                                 §§push(3);
                                 if(!_loc5_)
                                 {
                                 }
                              }
                              §§goto(addr258);
                           }
                           if("NEXT" === _loc4_)
                           {
                              if(_loc5_ || param2)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr233:
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              if("PREV" === _loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr233);
                                 }
                                 else
                                 {
                                    §§goto(addr240);
                                 }
                              }
                              else if("FULLSCREEN_BUTTON" === _loc4_)
                              {
                                 §§goto(addr240);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr240);
                           }
                           addr258:
                           switch(§§pop())
                           {
                              case 0:
                                 §'!c§.§3!f§("Menu_Back");
                                 §<f§(StateEpisodeSelection.§-!q§);
                                 addr83:
                                 if(_loc6_ && param2)
                                 {
                                    §§goto(addr83);
                                 }
                                 break;
                              case 1:
                                 this.§,""§();
                                 break;
                                 addr63:
                              case 2:
                                 this.§4"%§();
                                 addr55:
                                 if(_loc5_)
                                 {
                                    addr32:
                                    break;
                                 }
                                 §§goto(addr63);
                                 break;
                              case 3:
                                 §'!c§.§3!f§("Menu_Confirm");
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §6!!§.singleton.§%!O§();
                                          if(_loc5_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr83);
                                    }
                                    else
                                    {
                                       §§goto(addr55);
                                    }
                                 }
                           }
                           return;
                        }
                        §§goto(addr240);
                        addr77:
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      protected function §,""§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §'!c§.§3!f§("Menu_Confirm");
            if(!(_loc4_ && this))
            {
               §§goto(addr33);
            }
            §§goto(addr85);
         }
         addr33:
         if(!this.§;-§)
         {
            if(_loc3_ || _loc2_)
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§1!"§);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  _loc1_.§1!"§ = _loc2_;
               }
               if(!_loc4_)
               {
                  addr85:
                  this.§0n§(this.§1!"§);
               }
            }
            §§goto(addr85);
         }
      }
      
      protected function §4"%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §'!c§.§3!f§("Menu_Confirm");
            if(_loc4_ || _loc3_)
            {
               if(!this.§;-§)
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr49:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§1!"§);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc1_.§1!"§ = _loc2_;
                     }
                     if(_loc4_)
                     {
                        this.§0n§(this.§1!"§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §<R§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!_loc9_)
         {
            this.§]!c§ = [];
            if(_loc10_ || _loc1_)
            {
               this.§`!>§ = [];
            }
         }
         var _loc2_:§3%§ = §&" §.getEpisode(§&" §.currentEpisode);
         if(!(_loc9_ && _loc2_))
         {
            this.§1!"§ = _loc2_.currentPage;
            loop0:
            while(true)
            {
               addr80:
               while(true)
               {
                  this.§7W§ = this.§1!"§;
                  continue loop0;
               }
            }
            addr90:
         }
         while(true)
         {
            this.§!b§ = this.§1!"§;
            if(!_loc10_)
            {
               continue;
            }
            if(_loc10_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr90);
            }
            §§goto(addr80);
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§4!5§)
         {
            _loc4_ = _loc2_.§>!N§(_loc3_);
            if(_loc10_ || _loc2_)
            {
               §§push(this.§]!c§);
               while(true)
               {
                  §§pop().push(_loc2_.§,U§(_loc3_));
                  while(true)
                  {
                     §§push(this.§`!>§);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§pop().push(_loc2_.§1!#§(_loc3_));
                     loop6:
                     while(true)
                     {
                        addr148:
                        while(true)
                        {
                           §§push(this.§&"#§(_loc4_,_loc3_,_loc1_,_loc2_));
                           addr155:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr156:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr164);
         }
         if(_loc10_ || this)
         {
            this.§7!k§ = new §,!e§(this.§]!c§[this.§1!"§].red,this.§]!c§[this.§1!"§].green,this.§]!c§[this.§1!"§].blue,1);
            if(!_loc9_)
            {
               addr228:
               §?P§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§7!k§);
               if(_loc10_ || _loc3_)
               {
                  if(_loc2_.§&!p§)
                  {
                     if(!_loc9_)
                     {
                        addr246:
                        _loc6_ = new (_loc5_ = §<V§.§"!,§(_loc2_.§&!p§))();
                        if(!_loc9_)
                        {
                           §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                           if(!(_loc9_ && _loc1_))
                           {
                              addr277:
                              if(_loc2_.§@"%§)
                              {
                                 if(!(_loc9_ && _loc1_))
                                 {
                                    _loc8_ = new (_loc7_ = §<V§.§"!,§(_loc2_.§@"%§))();
                                    if(_loc10_ || _loc2_)
                                    {
                                       §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          addr323:
                                          this.§=K§();
                                          if(_loc10_ || _loc2_)
                                          {
                                             if(§!!8§ == StateCutScene.§-!q§)
                                             {
                                                if(_loc10_)
                                                {
                                                   addr377:
                                                   §!!8§ = "";
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   this.§0n§(this.§!b§);
                                                   addr358:
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                addr333:
                                                return;
                                                addr360:
                                             }
                                             else
                                             {
                                                this.§0n§(this.§1!"§,true);
                                                if(_loc9_ && this)
                                                {
                                                   §§goto(addr358);
                                                }
                                                else
                                                {
                                                   addr352:
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr358);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr377);
                                 }
                              }
                              else
                              {
                                 §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                              }
                           }
                        }
                        §§goto(addr323);
                     }
                  }
                  else
                  {
                     §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                  }
               }
               §§goto(addr277);
            }
            §§goto(addr246);
         }
         §§goto(addr228);
      }
      
      protected function §&"#§(param1:Array, param2:int, param3:Number, param4:§3%§) : Number
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
         var _loc6_:Class = §<V§.§"!,§(this.§`!>§[param2]);
         var _loc7_:Number = 0;
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc14_ && param1))
            {
               §§push(§6!!§.singleton.§<!S§.userProgress.§]!g§(_loc10_));
               if(_loc15_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc14_)
               {
                  break;
               }
               _loc12_ = this.§8Q§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(_loc15_)
               {
                  §§push(_loc11_);
                  if(!_loc14_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc15_)
                     {
                        if(!§§pop())
                        {
                           loop13:
                           while(true)
                           {
                              §§pop();
                              addr225:
                              loop11:
                              while(true)
                              {
                                 §§push(§6!!§.§7!2§);
                                 if(_loc15_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 addr193:
                                 while(true)
                                 {
                                    if(!(_loc14_ && param3))
                                    {
                                       break loop11;
                                    }
                                    continue loop13;
                                 }
                                 continue loop13;
                              }
                           }
                           addr224:
                        }
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 _loc13_.@MouseUp = _loc10_;
                                 addr205:
                                 while(true)
                                 {
                                 }
                              }
                              addr202:
                           }
                           while(true)
                           {
                              _loc13_.@scaleOnMouseOver = "True";
                              loop5:
                              while(_loc15_)
                              {
                                 _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(_loc11_);
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(_loc15_)
                                          {
                                             _loc12_.MovieClip_Stars.mouseEnabled = false;
                                             loop8:
                                             while(_loc15_ || param1)
                                             {
                                                while(true)
                                                {
                                                }
                                                if(!(_loc14_ && this))
                                                {
                                                   addr125:
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                         addr133:
                                                         while(true)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                         §§goto(addr125);
                                                      }
                                                      addr127:
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr225);
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr127);
                                    }
                                    else
                                    {
                                       §§goto(addr202);
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr205);
                           }
                        }
                     }
                  }
                  §§goto(addr224);
               }
               §§goto(addr161);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!(_loc14_ && param3))
         {
            §§push(param1);
            loop15:
            while(§§pop().length != 15)
            {
               §§push(param1);
               if(!(_loc15_ || this))
               {
                  continue;
               }
               if(§§pop().length != 12)
               {
                  _loc8_.@name = "Repeater_LevelSelection";
                  while(true)
                  {
                     addr298:
                     loop17:
                     while(true)
                     {
                        _loc8_.@button = this.§`!>§[param2];
                        loop18:
                        while(true)
                        {
                           _loc8_.@enabled = "True";
                           loop19:
                           while(true)
                           {
                              if(!_loc15_)
                              {
                                 break loop18;
                              }
                              while(true)
                              {
                                 _loc8_.@buttonSelectionType = "NO_SELECTION";
                                 continue loop19;
                                 addr249:
                                 if(_loc14_ && param3)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc9_:§7!a§;
                                 (_loc9_ = new §7!a§(_loc8_,this.§6!x§,null,null)).§=p§(_loc5_);
                                 if(_loc15_)
                                 {
                                    _loc9_.setVisibility(true);
                                    _loc9_.x += param3;
                                    this.§6!x§.§<!f§(_loc9_);
                                    addr407:
                                    addr432:
                                    if(_loc15_ || this)
                                    {
                                       this.§>!s§.push(_loc9_);
                                       addr399:
                                       if(_loc15_)
                                       {
                                          addr383:
                                          §§push(param3);
                                          if(!_loc14_)
                                          {
                                             addr382:
                                             §§push(Number(§§pop() + §6!!§.§+g§));
                                          }
                                          param3 = §§pop();
                                          if(_loc15_ || param1)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§push(param3);
                                                if(_loc15_ || this)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      §§goto(addr382);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr383);
                                             }
                                             §§goto(addr407);
                                          }
                                          §§goto(addr399);
                                          addr401:
                                       }
                                       §§goto(addr432);
                                    }
                                    addr436:
                                    §§goto(addr436);
                                 }
                                 §§goto(addr401);
                              }
                              while(true)
                              {
                                 continue loop17;
                              }
                           }
                        }
                     }
                     if(_loc14_ && this)
                     {
                        continue;
                     }
                     if(_loc15_ || param3)
                     {
                        _loc8_.@fromLibrary = "true";
                        if(!_loc14_)
                        {
                           §§goto(addr249);
                        }
                        §§goto(addr262);
                     }
                     while(true)
                     {
                        §§goto(addr298);
                     }
                     addr345:
                  }
               }
               while(true)
               {
                  if(!(_loc15_ || param1))
                  {
                     break loop15;
                  }
                  _loc8_.@name = "Repeater_LevelSelection12";
                  §§goto(addr337);
               }
            }
            while(true)
            {
               _loc8_.@name = "Repeater_LevelSelection15";
               §§goto(addr345);
            }
         }
         §§goto(addr337);
      }
      
      protected function §8Q§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(!_loc8_)
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
                  }
                  addr215:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     if(!(_loc8_ && param3))
                     {
                        loop2:
                        while(true)
                        {
                           _loc6_.isOpen = param2;
                           addr137:
                           loop3:
                           while(_loc9_)
                           {
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
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
                                             while(true)
                                             {
                                                if(§§pop() != 100)
                                                {
                                                   _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                                   loop7:
                                                   while(true)
                                                   {
                                                      _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                      addr175:
                                                      while(_loc8_ && param2)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc6_.MovieClip_Feather.mouseEnabled = false;
                              addr161:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     else
                     {
                        addr218:
                        while(true)
                        {
                           _loc6_.MovieClip_MEInUse.visible = false;
                        }
                        addr218:
                     }
                     §§goto(addr212);
                     addr63:
                     if(!(_loc8_ && param3))
                     {
                        addr34:
                        return _loc6_;
                     }
                  }
               }
               §§goto(addr218);
            }
         }
         §§goto(addr132);
      }
      
      protected function §=K§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§>!s§.length == 1)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(_loc6_)
         {
            this.§,"+§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§>!s§.length)
         {
            _loc1_ = §<V§.§"!,§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc5_)
            {
               _loc2_.x = §6!!§.§+g§ / 2 + _loc3_ - this.§>!s§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc2_.height / 2;
                  loop2:
                  while(true)
                  {
                     if(_loc4_ != this.§1!"§)
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              this.§]!@§.mClip.addChild(_loc2_);
                              loop5:
                              while(true)
                              {
                                 this.§,"+§[_loc2_] = _loc4_;
                                 while(true)
                                 {
                                    this.§>!@§.push(_loc2_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(Number(§§pop() + _loc2_.width));
                                       }
                                       _loc3_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_ && this)
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
                                             continue loop7;
                                          }
                                          loop14:
                                          while(_loc6_)
                                          {
                                             addr203:
                                             if(_loc6_ || _loc2_)
                                             {
                                                continue loop1;
                                             }
                                             addr223:
                                             while(true)
                                             {
                                                _loc2_.gotoAndStop("Selected");
                                                break loop14;
                                                §§goto(addr203);
                                             }
                                          }
                                          while(true)
                                          {
                                             (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = _loc2_.x;
                                             §§goto(addr201);
                                          }
                                          addr201:
                                          addr77:
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             _loc4_++;
                                             if(!(_loc5_ && this))
                                             {
                                                if(_loc6_)
                                                {
                                                   addr69:
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_.buttonMode = true;
                                                         §§goto(addr69);
                                                      }
                                                      addr71:
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr77);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop8;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          addr164:
                                       }
                                       addr181:
                                       while(true)
                                       {
                                          this.§2!R§(_loc4_);
                                          §§goto(addr164);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr223);
                  }
               }
            }
            while(true)
            {
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).y = _loc2_.y - _loc2_.height;
               §§goto(addr181);
            }
         }
         if(!_loc5_)
         {
            §§push(this.§>!s§.length * _loc2_.width);
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!_loc6_)
                  {
                  }
                  addr287:
                  _loc3_ = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
                  }
                  while(true)
                  {
                     (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
                     loop19:
                     while(_loc6_ || this)
                     {
                        (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc3_ + 10);
                        do
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              continue;
                           }
                           continue loop19;
                        }
                        while((§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc3_ + 10), !(_loc6_ || _loc2_));
                        
                        return;
                     }
                  }
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr287);
         }
         §§goto(addr324);
      }
      
      protected function §+p§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7!k§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr33:
                     this.§7!k§.§9O§();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§>!@§.length)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.§>!@§ = [];
                     }
                     loop1:
                     do
                     {
                        while(true)
                        {
                           §§push(this.§6!x§);
                           if(!_loc2_)
                           {
                              if(§§pop().mClip.numChildren <= 0)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.§>!s§ = [];
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 addr70:
                                 this.§6!x§.mClip.removeChildAt(0);
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§]!@§);
                                       if(!_loc2_)
                                       {
                                          §§pop().mClip.removeChild(this.§>!@§[_loc1_]);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!§§pop().mClip.contains(this.§>!@§[_loc1_]))
                                             {
                                                break loop3;
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§>!@§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
                                             }
                                             continue loop3;
                                          }
                                          addr131:
                                       }
                                    }
                                    addr112:
                                 }
                                 continue;
                                 _loc1_++;
                                 break;
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr70);
                        }
                        continue loop0;
                     }
                     while(!_loc3_);
                     
                     return;
                  }
                  §§push(this.§]!@§);
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr33);
      }
      
      protected function §#!p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§;-§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr54:
                  this.§0n§(this.§,"+§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function §#!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!this.§;-§)
            {
               if(_loc2_)
               {
                  §<f§(§+A§.§-!q§);
               }
            }
         }
      }
      
      protected function §0n§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.§;-§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() <= this.§>!s§.length - 1)
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 addr123:
                                 loop5:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§>!s§);
                                             if(_loc7_ || this)
                                             {
                                                §§push(§§pop().length - 1);
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr160:
                                                   §§push(int(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         addr102:
                                                         while(true)
                                                         {
                                                            this.§1!"§ = param1;
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§1!"§);
                                                                     loop12:
                                                                     while(!(_loc6_ && this))
                                                                     {
                                                                        §§push(this.§!b§);
                                                                        while(!_loc6_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§push(this.§1!"§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(this.§!b§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                addr81:
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             this.§7W§ = this.§!b§ - 1;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(_loc6_ && param2)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                       addr166:
                                                                                       §§push(this.§>!s§);
                                                                                       break loop6;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr81);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                   addr160:
                                                }
                                                addr185:
                                                var _loc3_:Number = §§pop();
                                                var _loc4_:Number = this.§>!s§[param1].x + this.§6!x§.x;
                                                addr184:
                                                var _loc5_:*;
                                                §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop() / 1024);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr233:
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§9s§);
                                                            }
                                                            _loc5_ = Number(§§pop());
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(this.§0!5§);
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop() != null)
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0!5§);
                                                                        addr357:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                           addr358:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ || param1))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(this.§0!5§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop().play();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc7_ || param2))
                                                                                          {
                                                                                             addr282:
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr265:
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr242);
                                                                                                }
                                                                                                break loop19;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§6!x§.x = _loc3_;
                                                                                                continue loop20;
                                                                                             }
                                                                                             addr334:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§0!5§);
                                                                                             addr295:
                                                                                             while(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§pop().onComplete = this.§'!L§;
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                             §§goto(addr265);
                                                                                          }
                                                                                          addr330:
                                                                                       }
                                                                                       addr242:
                                                                                       return;
                                                                                       addr291:
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              addr333:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§0!5§ = §'^§.§2Z§.§!!f§(this.§6!x§,{"x":_loc3_},null,_loc5_,§]!n§.easeOut);
                                                                                    §§goto(addr330);
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.§'!L§();
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr333);
                                                                     §§goto(addr358);
                                                                  }
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             break loop6;
                                          }
                                          addr141:
                                       }
                                       §§goto(addr160);
                                    }
                                    §§push(-§§pop()[param1].x);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr184);
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr141);
               }
               §§goto(addr160);
            }
         }
         §§goto(addr113);
      }
      
      protected function §'!L§() : void
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
               if(§§pop() >= this.§>!@§.length)
               {
                  loop1:
                  while(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this.§;-§ = false;
                        while(!_loc2_)
                        {
                           §&" §.getEpisode(§&" §.currentEpisode).currentPage = this.§1!"§;
                           if(_loc3_ || _loc1_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop0;
                                       }
                                       addr152:
                                       addr155:
                                       addr154:
                                       this.§>!@§[_loc1_].gotoAndStop("Selected");
                                       (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§>!@§[_loc1_].x;
                                       break loop1;
                                       addr158:
                                    }
                                    break;
                                    addr122:
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        addr96:
                        _loc1_++;
                        continue loop0;
                     }
                     §§goto(addr158);
                  }
                  this.§2!R§(_loc1_);
                  §§goto(addr122);
               }
               else
               {
                  addr139:
                  if(_loc1_ != this.§1!"§)
                  {
                     §§push(this.§>!@§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || this)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr117);
                        }
                        else
                        {
                           §§goto(addr155);
                        }
                     }
                     else
                     {
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr152);
               }
            }
            §§goto(addr139);
         }
      }
      
      protected function §2!R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).§"v§.text = §&" §.getEpisode(§&" §.currentEpisode).getPageIndex(param1).toString();
         }
      }
   }
}
