package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§#"D§;
   import §77§.§%]§;
   import §77§.§&!>§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §]!K§.§,!H§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §]J§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §?0§:Number = 0.5;
      
      public static var §6"?§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelSelectionState";
            while(true)
            {
               §?0§ = 0.5;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §6"?§ = "";
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      protected var §8!i§:Boolean = false;
      
      protected var §5!B§:§ ",§;
      
      protected var §@§:§ ",§;
      
      protected var § "-§:MovieClip;
      
      protected var §03§:Array;
      
      protected var §5!%§:Array;
      
      protected var § "7§:int = 0;
      
      protected var §^j§:int = 0;
      
      protected var §@!-§:int = 0;
      
      protected var §'"&§:Boolean = false;
      
      protected var §8!t§:§5!9§ = null;
      
      protected var §3!L§:Dictionary;
      
      protected var §;!§:Array;
      
      protected var §]!F§:Array;
      
      protected var §&!=§:§&"$§;
      
      protected var § "H§:Number = 0;
      
      public function §]J§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            this.§9!<§();
         }
         while(!_loc2_);
         
         while(true)
         {
            §§push(this.§@§);
            if(_loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§5!%§ = [];
                     break;
                  }
                  continue;
               }
               §§push(this.§@§);
            }
            §§pop().mClip.removeChildAt(0);
         }
         do
         {
            this.§03§ = [];
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected function §9!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!A§ = new §1"F§(this);
            do
            {
               §8!A§.init(§-G§.§4+§.Views.View_LevelSelection[0]);
               do
               {
                  this.§@§ = §8!A§.getItemByName("Container_LevelRepeaters") as § ",§;
                  do
                  {
                     this.§5!B§ = §8!A§.getItemByName("Container_LevelSelection") as § ",§;
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§9q§.§>!L§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§9q§.§>!L§);
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     §§pop().§0!M§(false);
                     loop3:
                     while(true)
                     {
                        this.§1"9§();
                        while(true)
                        {
                           § !g§.§;!'§.§2!M§();
                           loop5:
                           while(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              if(this.§5!%§.length != 1)
                              {
                                 (§8!A§.getItemByName("Button_Prev") as §@_§).setVisibility(true);
                                 loop6:
                                 while(true)
                                 {
                                    (§8!A§.getItemByName("Button_Next") as §@_§).setVisibility(true);
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).setVisibility(true);
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                this.§ "H§ = this.§@§.x;
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!§8!A§.stage)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            loop11:
                                                            for(; !(_loc2_ || _loc2_); while(true)
                                                            {
                                                               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).setVisibility(false);
                                                               continue loop11;
                                                            })
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  (§8!A§.getItemByName("Button_Next") as §@_§).setVisibility(false);
                                                                  addr123:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     addr132:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop9;
                                                         }
                                                         §8!A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§""'§);
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop7;
                                                }
                                                return;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                              }
                              §§goto(addr132);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      protected function §""'§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.keyCode == Keyboard.LEFT)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§6!w§();
               }
               addr83:
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§]!n§();
               }
               if(!(_loc3_ || this))
               {
                  §§goto(addr83);
               }
               else
               {
                  addr58:
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.update(param1);
            do
            {
               this.checkIfPagePassed();
               do
               {
                  this.§0""§();
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      protected function checkIfPagePassed() : void
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
            while(_loc4_ || _loc3_)
            {
               §§push(this.§03§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     loop2:
                     while(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§@!-§);
                           if(!_loc3_)
                           {
                              §§push(this.§ "7§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop4:
                                    while(_loc4_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§ "7§);
                                          loop10:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§@!-§);
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§push(this.§ "7§);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr134);
                                                   continue loop10;
                                                }
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      this.§^j§ = this.§@!-§ + 1;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§&!=§.§>"9§(this.§;!§[this.§^j§].red,this.§;!§[this.§^j§].green,this.§;!§[this.§^j§].blue);
                                                                  addr68:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(_loc4_ || _loc1_)
                                                                           {
                                                                              addr89:
                                                                              break loop11;
                                                                           }
                                                                           _loc2_++;
                                                                           break loop2;
                                                                           addr518:
                                                                        }
                                                                        addr317:
                                                                        §§push(_loc2_);
                                                                        break loop10;
                                                                        addr349:
                                                                     }
                                                                     addr165:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr423:
                                                                     addr495:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr317);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
                                                                        while(true)
                                                                        {
                                                                           this.§7!^§(_loc1_);
                                                                           addr465:
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§@§);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(-§§pop().x);
                                                                                 loop24:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(this.§5!%§);
                                                                                    loop25:
                                                                                    for(; _loc4_; §§push(this.§5!%§),if(_loc3_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    },if(_loc4_ || this)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr531);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr569);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          addr528:
                                                                                       }
                                                                                       §§goto(addr445);
                                                                                    },§§goto(addr568))
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr460:
                                                                                                   §§push(this.§ "H§);
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   if(_loc3_ && _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   addr556:
                                                                                                   addr556:
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§5!%§);
                                                                                                      addr568:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         addr569:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                            do
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            while(_loc3_ && _loc1_);
                                                                                                            
                                                                                                            addr545:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr547:
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr522:
                                                                                                addr459:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr575:
                                                                                                      §§goto(addr522);
                                                                                                      §§push(this.§ "H§);
                                                                                                      addr531:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         §§goto(addr538);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr556);
                                                                                                }
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr459);
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr257:
                                                                                          _loc1_++;
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc2_ = 0;
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr527);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr554:
                                                                                 §§push(-§§pop().x);
                                                                              }
                                                                              §§goto(addr556);
                                                                           }
                                                                           addr309:
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
                                                                           this.§7!^§(_loc1_);
                                                                           §§goto(addr257);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr46:
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      addr242:
                                                   }
                                                   §§push(this.§03§);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc1_);
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               §§goto(addr495);
                                                            }
                                                            break;
                                                            addr358:
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                            _loc2_++;
                                                            §§goto(addr349);
                                                         }
                                                         addr515:
                                                         §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                         §§goto(addr518);
                                                      }
                                                      addr514:
                                                      §§goto(addr515);
                                                   }
                                                }
                                                §§goto(addr242);
                                                addr134:
                                                §§push(this.§@!-§);
                                                if(!(_loc3_ && this))
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                this.§ "H§ = this.§@§.x;
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                         }
                                                         addr346:
                                                         addr355:
                                                         §§push(this.§03§);
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr358);
                                                            §§push(_loc2_);
                                                         }
                                                         §§goto(addr482);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   else
                                                   {
                                                      while(!_loc3_)
                                                      {
                                                         if(!(_loc4_ || this))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr46);
                                                                  }
                                                                  §§goto(addr575);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            this.§^j§ = this.§@!-§ - 1;
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      addr151:
                                                      addr97:
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr68);
                                                §§goto(addr89);
                                             }
                                             continue loop2;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr325:
                                                §§push(this.§03§);
                                                if(!(_loc3_ && this))
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr355);
                                                   §§push(this.§03§);
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§@!-§ = _loc1_;
                                                         §§goto(addr505);
                                                      }
                                                      addr502:
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§03§);
                                                   }
                                                   §§goto(addr514);
                                                }
                                                addr500:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr500);
                                             }
                                             addr498:
                                          }
                                          §§goto(addr422);
                                          addr215:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr498);
                                          break loop2;
                                       }
                                    }
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          this.§@!-§ = _loc1_;
                                          §§goto(addr346);
                                       }
                                       §§goto(addr502);
                                    }
                                    §§goto(addr368);
                                 }
                                 §§goto(addr26);
                              }
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr547);
                     }
                     §§goto(addr496);
                  }
                  else
                  {
                     §§push(this.§@§);
                  }
                  §§goto(addr554);
               }
               §§goto(addr325);
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr549);
               §§goto(addr547);
            }
         }
      }
      
      protected function §0""§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               if(§§pop() >= this.§5!%§.length)
               {
                  if(_loc3_ || _loc1_)
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              if(Math.abs(this.§5!%§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§5!%§);
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr168:
                                       while(true)
                                       {
                                          §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                       }
                                    }
                                    addr167:
                                 }
                                 loop5:
                                 while(_loc3_ || this)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§5!%§);
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(§§pop()[§§pop()].mClip.alpha < 1)
                                                {
                                                   addr138:
                                                   if(_loc3_)
                                                   {
                                                      addr133:
                                                      (this.§5!%§[_loc1_] as §%]§).setEnabled(false);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_++;
                                                         addr55:
                                                         while(!(_loc3_ || _loc3_))
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(Number(Math.abs(_loc2_)));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr211:
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr188:
                                                                        if(§§pop() > 1000)
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr194:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        addr234:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr138:
                                                }
                                                else
                                                {
                                                   §§push(this.§5!%§);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            (§§pop()[§§pop()] as §%]§).setEnabled(true);
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr138);
                                                               }
                                                               §§goto(addr53);
                                                            }
                                                            addr95:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr168);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr133);
                                                   }
                                                }
                                             }
                                             §§goto(addr133);
                                          }
                                          else
                                          {
                                             §§goto(addr167);
                                          }
                                       }
                                       §§goto(addr133);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(1000);
                                       while(true)
                                       {
                                          §§goto(addr194);
                                       }
                                       addr193:
                                    }
                                    §§goto(addr211);
                                    §§goto(addr188);
                                 }
                                 continue;
                              }
                              §§goto(addr98);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr55);
               }
               else
               {
                  §§push(Number(this.§@§.x + this.§5!%§[_loc1_].x));
               }
               §§goto(addr234);
            }
            §§goto(addr193);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§8!A§.stage)
            {
               if(_loc1_)
               {
                  addr83:
                  §8!A§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§""'§);
               }
               while(true)
               {
               }
               addr90:
            }
            while(true)
            {
               super.deActivate();
               while(_loc1_)
               {
                  this.§"u§();
                  do
                  {
                     (§8!A§.getItemByName("Button_Back") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     do
                     {
                        §6u§.resetPreviousLevel();
                     }
                     while(_loc2_);
                     
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr83);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§8!t§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr70:
                     this.§8!t§.stop();
                  }
                  while(true)
                  {
                     this.§8!t§ = null;
                     loop1:
                     while(_loc1_ || _loc2_)
                     {
                        while(true)
                        {
                           super.cleanup();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr70);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(param2.length > 0);
            if(_loc5_ || param2)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr192:
                        while(true)
                        {
                           §§push(param3 is §#"D§);
                        }
                     }
                     addr191:
                  }
                  while(true)
                  {
                     addr151:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push((param3 as §#"D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                              continue loop0;
                           }
                           addr152:
                        }
                        else
                        {
                           var _loc4_:* = param2;
                           if(_loc5_ || param1)
                           {
                              if("BACK" === _loc4_)
                              {
                                 if(!_loc6_)
                                 {
                                    addr210:
                                    §§push(0);
                                    if(!(_loc5_ || param1))
                                    {
                                       addr232:
                                    }
                                 }
                                 else
                                 {
                                    addr224:
                                    §§push(1);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§goto(addr232);
                                    }
                                 }
                              }
                              else if("NEXT" === _loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr224);
                                 }
                                 else
                                 {
                                    addr238:
                                    §§push(2);
                                    if(!(_loc5_ || param2))
                                    {
                                       addr263:
                                    }
                                 }
                              }
                              else
                              {
                                 if("PREV" === _loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr238);
                                    }
                                    §§goto(addr268);
                                 }
                                 if("FULLSCREEN_BUTTON" !== _loc4_)
                                 {
                                    addr268:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §<!O§.playSound("Menu_Back");
                                          §8!^§(StateEpisodeSelection.STATE_NAME);
                                          break;
                                          addr81:
                                          addr88:
                                       case 1:
                                          this.§]!n§();
                                          addr73:
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr81);
                                          break;
                                       case 2:
                                          this.§6!w§();
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                addr39:
                                                break;
                                             }
                                             §§goto(addr73);
                                          }
                                          break;
                                       case 3:
                                          §<!O§.playSound("Menu_Confirm");
                                          if(!(_loc6_ && param3))
                                          {
                                             § !g§.§;!'§.§%!N§();
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr39);
                                                }
                                                else
                                                {
                                                   §§goto(addr88);
                                                }
                                             }
                                             break;
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr268);
                                 §§push(3);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr263);
                                 }
                              }
                              §§goto(addr268);
                           }
                           §§goto(addr210);
                           addr82:
                        }
                     }
                  }
               }
            }
            §§goto(addr191);
         }
         §§goto(addr192);
      }
      
      protected function §]!n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            §<!O§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§'"&§)
               {
                  if(_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§ "7§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.§ "7§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        this.§1"&§(this.§ "7§);
                     }
                  }
               }
            }
         }
      }
      
      protected function §6!w§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §<!O§.playSound("Menu_Confirm");
            if(!_loc3_)
            {
               if(!this.§'"&§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§ "7§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        _loc1_.§ "7§ = _loc2_;
                     }
                     if(_loc3_ && _loc2_)
                     {
                     }
                     §§goto(addr90);
                  }
                  this.§1"&§(this.§ "7§);
               }
            }
         }
         addr90:
      }
      
      public function §1"9§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!(_loc10_ && _loc3_))
         {
            this.§;!§ = [];
            if(_loc9_ || this)
            {
               this.§]!F§ = [];
            }
         }
         var _loc2_:§3,§ = §6u§.getEpisode(§6u§.currentEpisode);
         if(_loc9_)
         {
            this.§ "7§ = _loc2_.currentPage;
            loop0:
            while(true)
            {
               addr72:
               while(true)
               {
                  this.§^j§ = this.§ "7§;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr72);
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`;§)
         {
            _loc4_ = _loc2_.§`!x§(_loc3_);
            if(_loc9_)
            {
               §§push(this.§;!§);
               loop5:
               while(true)
               {
                  §§pop().push(_loc2_.§<!n§(_loc3_));
                  addr160:
                  while(true)
                  {
                     §§push(this.§]!F§);
                     if(!(_loc9_ || _loc2_))
                     {
                        continue loop5;
                     }
                     §§pop().push(_loc2_.§,"2§(_loc3_));
                     loop7:
                     while(true)
                     {
                        addr122:
                        while(true)
                        {
                           §§push(this.§?!V§(_loc4_,_loc3_,_loc1_,_loc2_));
                           addr129:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr130:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr160);
         }
         if(_loc9_ || _loc2_)
         {
            this.§&!=§ = new §&"$§(this.§;!§[this.§ "7§].red,this.§;!§[this.§ "7§].green,this.§;!§[this.§ "7§].blue,1);
            if(!(_loc10_ && _loc1_))
            {
               addr212:
               §8!A§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§&!=§);
               if(_loc9_)
               {
                  addr220:
                  if(_loc2_.§[! §)
                  {
                     if(!_loc10_)
                     {
                        addr225:
                        _loc6_ = new (_loc5_ = § !h§.§["3§(_loc2_.§[! §))();
                        if(!_loc10_)
                        {
                           §8!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                           if(!(_loc10_ && _loc1_))
                           {
                              addr256:
                              if(_loc2_.§`!]§)
                              {
                                 if(_loc10_)
                                 {
                                 }
                                 addr292:
                                 this.§2Z§();
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(§6"?§ != StateCutScene.STATE_NAME)
                                    {
                                       this.§1"&§(this.§ "7§,true);
                                       if(_loc10_ && this)
                                       {
                                          §§goto(addr327);
                                       }
                                       else
                                       {
                                          addr321:
                                       }
                                       addr302:
                                       return;
                                    }
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       addr356:
                                       §6"?§ = "";
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       this.§1"&§(this.§@!-§);
                                       addr327:
                                       while(true)
                                       {
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             break loop12;
                                          }
                                          continue loop12;
                                       }
                                    }
                                    §§goto(addr302);
                                    §§goto(addr327);
                                 }
                                 §§goto(addr321);
                              }
                              else
                              {
                                 §8!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                 §§goto(addr292);
                              }
                           }
                           _loc8_ = new (_loc7_ = § !h§.§["3§(_loc2_.§`!]§))();
                           if(!(_loc10_ && _loc2_))
                           {
                              §8!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                              if(!_loc10_)
                              {
                                 §§goto(addr292);
                              }
                              §§goto(addr321);
                           }
                           §§goto(addr356);
                        }
                        §§goto(addr292);
                     }
                  }
                  else
                  {
                     §8!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                  }
                  §§goto(addr256);
               }
               §§goto(addr225);
            }
            §§goto(addr220);
         }
         §§goto(addr212);
      }
      
      protected function §?!V§(param1:Array, param2:int, param3:Number, param4:§3,§) : Number
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
         var _loc6_:Class = § !h§.§["3§(this.§]!F§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc14_ || this)
            {
               §§push(§ !g§.§;!'§.§&!`§.userProgress.§]!B§(_loc10_));
               if(_loc14_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc14_ || param3))
               {
                  break;
               }
               _loc12_ = this.§%#§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(!_loc15_)
               {
                  §§push(_loc11_);
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(§ !g§.§-"<§);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                    addr233:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          _loc13_.@MouseUp = _loc10_;
                                          addr238:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr235:
                                    }
                                    while(true)
                                    {
                                       _loc13_.@scaleOnMouseOver = "True";
                                       while(true)
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          continue loop5;
                                          loop12:
                                          for(; !(_loc15_ && param2); if(!(_loc15_ && this))
                                          {
                                             addr129:
                                             if(!(_loc15_ && param2))
                                             {
                                                while(false)
                                                {
                                                   §§goto(addr138);
                                                }
                                                continue loop0;
                                                addr136:
                                             }
                                             continue loop5;
                                          })
                                          {
                                             if(!(_loc15_ && this))
                                             {
                                                addr138:
                                                while(true)
                                                {
                                                   _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc14_ || param1)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc14_ || this)
                                                            {
                                                               addr118:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc7_ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                      else
                                                      {
                                                         while(_loc14_)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                               break loop14;
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr238);
                                                         addr173:
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop5;
                                                addr138:
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr233);
                     }
                  }
               }
               §§goto(addr136);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!_loc15_)
         {
            if(param1.length != 15)
            {
               _loc8_.@name = "Repeater_LevelSelection";
               loop17:
               while(true)
               {
                  addr296:
                  while(true)
                  {
                     _loc8_.@button = this.§]!F§[param2];
                     continue loop17;
                  }
               }
            }
            while(true)
            {
               _loc8_.@name = "Repeater_LevelSelection15";
            }
         }
         §§goto(addr332);
      }
      
      protected function §%#§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(!_loc9_)
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
                     addr212:
                     loop16:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        addr206:
                        while(true)
                        {
                           §§push(§ !g§.§;!'§);
                           addr173:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop().§&!`§);
                              addr174:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 addr175:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr176:
                                    while(true)
                                    {
                                       §§push(§§pop().§#!K§(§§pop()));
                                       addr177:
                                       while(true)
                                       {
                                          if(§§pop() != 100)
                                          {
                                             break loop6;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc8_ || param2))
                                             {
                                                continue loop16;
                                             }
                                             _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             addr129:
                                             while(true)
                                             {
                                                _loc6_.isOpen = param2;
                                                addr126:
                                                while(_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr129);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                           _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                           addr163:
                           loop7:
                           while(true)
                           {
                              _loc6_.MovieClip_Feather.mouseEnabled = false;
                              addr148:
                              while(true)
                              {
                                 if(_loc8_ || param2)
                                 {
                                    break loop7;
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr129);
                        }
                     }
                  }
                  addr209:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
               }
               while(true)
               {
                  if(!(_loc8_ || param1))
                  {
                     §§goto(addr206);
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr212);
      }
      
      protected function §2Z§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§5!%§.length == 1)
            {
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(!(_loc6_ && _loc3_))
         {
            this.§3!L§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§5!%§.length)
         {
            _loc1_ = § !h§.§["3§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc6_)
            {
               _loc2_.x = § !g§.screenWidth / 2 + _loc3_ - this.§5!%§.length * _loc2_.width / 2;
               while(true)
               {
                  _loc2_.y = (§8!A§.getItemByName("Button_Next") as §@_§).y - _loc2_.height / 2;
                  loop2:
                  while(_loc5_)
                  {
                     if(_loc4_ != this.§ "7§)
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              this.§5!B§.mClip.addChild(_loc2_);
                              loop5:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    while(!_loc6_)
                                    {
                                       _loc2_.gotoAndStop("Selected");
                                    }
                                    continue loop2;
                                    addr218:
                                 }
                                 this.§3!L§[_loc2_] = _loc4_;
                                 loop6:
                                 while(_loc5_)
                                 {
                                    this.§03§.push(_loc2_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop() + _loc2_.width));
                                       }
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop7;
                                          }
                                          _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
                                          continue loop7;
                                          addr76:
                                          if(_loc5_ || _loc1_)
                                          {
                                             addr83:
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   _loc2_.buttonMode = true;
                                                   addr89:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         _loc4_++;
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr177:
                                                      }
                                                   }
                                                   continue loop5;
                                                   §§goto(addr83);
                                                }
                                                addr85:
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = _loc2_.x;
                                       addr212:
                                       while(true)
                                       {
                                          (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).y = _loc2_.y - _loc2_.height;
                                          break loop6;
                                       }
                                    }
                                 }
                                 while(!_loc6_)
                                 {
                                    this.§7!^§(_loc4_);
                                    §§goto(addr177);
                                 }
                                 §§goto(addr212);
                                 §§goto(addr223);
                              }
                           }
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr218);
                  }
               }
            }
            §§goto(addr212);
         }
         if(_loc5_ || this)
         {
            §§push(this.§5!%§.length * _loc2_.width);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() / 2);
               if(!(_loc6_ && this))
               {
                  §§goto(addr293);
               }
               §§goto(addr305);
            }
            addr293:
            §§push(§§pop() + _loc2_.width * 1.5);
            if(!(_loc6_ && this))
            {
               addr305:
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            if(!(_loc6_ && this))
            {
               (§8!A§.getItemByName("Button_Next") as §@_§).x = § !g§.screenWidth / 2;
               loop17:
               do
               {
                  (§8!A§.getItemByName("Button_Prev") as §@_§).x = § !g§.screenWidth / 2;
                  while(true)
                  {
                     (§8!A§.getItemByName("Button_Next") as §@_§).x = (§8!A§.getItemByName("Button_Next") as §@_§).x + (_loc3_ + 10);
                     while(!(_loc6_ && _loc1_))
                     {
                        (§8!A§.getItemByName("Button_Prev") as §@_§).x = (§8!A§.getItemByName("Button_Prev") as §@_§).x - (_loc3_ + 10);
                        if(!(_loc6_ && _loc2_))
                        {
                           continue loop17;
                        }
                     }
                  }
               }
               while(!_loc5_);
               
               addr403:
            }
            return;
         }
         §§goto(addr403);
      }
      
      protected function §"u§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&!=§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr33);
            }
            §§pop().§;"F§();
         }
         addr33:
         if(_loc2_ || _loc3_)
         {
            §§push(this.§&!=§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= this.§03§.length)
            {
               if(!_loc3_)
               {
                  this.§03§ = [];
               }
               loop1:
               for(; !(_loc3_ && _loc3_); if(!(_loc2_ || _loc3_))
               {
                  continue;
               },§§goto(addr40))
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§@§);
                        if(_loc2_)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    this.§5!%§ = [];
                                    addr61:
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§5!B§);
                                       if(_loc2_)
                                       {
                                          §§pop().mClip.removeChild(this.§03§[_loc1_]);
                                          addr127:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop().mClip.contains(this.§03§[_loc1_]))
                                             {
                                                while(true)
                                                {
                                                   this.§03§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
                                                   continue loop4;
                                                }
                                                addr139:
                                             }
                                          }
                                          addr132:
                                       }
                                       _loc1_++;
                                       break loop1;
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr61);
                           }
                           else
                           {
                              §§push(this.§@§);
                           }
                        }
                        §§pop().mClip.removeChildAt(0);
                     }
                     continue;
                     addr40:
                  }
                  §§goto(addr127);
               }
               continue;
            }
            §§push(this.§5!B§);
            §§goto(addr132);
         }
      }
      
      protected function §-!j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§'"&§)
            {
               if(!_loc3_)
               {
                  this.§1"&§(this.§3!L§[param1.target]);
               }
            }
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!this.§'"&§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §8!^§(§]J§.STATE_NAME);
               }
            }
         }
      }
      
      protected function §1"&§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§'"&§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() > this.§5!%§.length - 1)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(this.§5!%§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop().length - 1);
                           if(_loc6_ || this)
                           {
                              §§push(int(§§pop()));
                              loop9:
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr170:
                                 loop12:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       this.§ "7§ = param1;
                                       loop5:
                                       while(_loc6_ || param1)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§ "7§);
                                             loop7:
                                             while(true)
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   continue loop9;
                                                }
                                                §§push(this.§@!-§);
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr95:
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  this.§^j§ = this.§@!-§ + 1;
                                                                  addr175:
                                                                  §§push(this.§5!%§);
                                                                  break loop1;
                                                                  addr112:
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§push(this.§ "7§);
                                                      if(_loc6_)
                                                      {
                                                         if(_loc7_ && param2)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr132:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   break loop5;
                                                }
                                             }
                                             continue loop12;
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                           addr194:
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = this.§5!%§[param1].x + this.§@§.x;
                           var _loc5_:*;
                           §§push(_loc5_ = Number(Math.abs(_loc4_)));
                           if(_loc6_)
                           {
                              §§push(§§pop() / 1024);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc5_ = §§pop();
                                       addr256:
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§?0§);
                                       }
                                       _loc5_ = Number(§§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          addr377:
                                          if(this.§8!t§ != null)
                                          {
                                             addr381:
                                             this.§8!t§.stop();
                                             addr382:
                                             addr379:
                                          }
                                          if(param2)
                                          {
                                             addr360:
                                             this.§@§.x = _loc3_;
                                             addr293:
                                             addr374:
                                             §§push(param2);
                                             if(!(_loc7_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         this.§!!5§();
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§push(this.§8!t§);
                                                if(_loc6_)
                                                {
                                                   §§pop().play();
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         §§goto(addr374);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   addr309:
                                                   if(_loc7_)
                                                   {
                                                      addr327:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         addr315:
                                                         §§push(this.§8!t§);
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§pop().onComplete = this.§!!5§;
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr315);
                                             }
                                             §§goto(addr377);
                                          }
                                          this.§8!t§ = §!D§.§[!1§.§1"<§(this.§@§,{"x":_loc3_},null,_loc5_,§,!H§.easeOut);
                                          §§goto(addr327);
                                       }
                                       §§goto(addr360);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc7_ && param1))
                                    {
                                       §§goto(addr256);
                                    }
                                 }
                              }
                           }
                           §§goto(addr256);
                        }
                        break;
                     }
                     §§goto(addr170);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§goto(addr132);
                        §§push(0);
                     }
                  }
                  §§goto(addr134);
               }
               §§push(-§§pop()[param1].x);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr194);
            }
         }
         §§goto(addr170);
      }
      
      protected function §!!5§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() >= this.§03§.length)
               {
                  loop1:
                  while(_loc3_)
                  {
                     this.§'"&§ = false;
                     loop2:
                     for(; !_loc2_; §6u§.getEpisode(§6u§.currentEpisode).currentPage = this.§ "7§,if(_loc3_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     })
                     {
                        if(_loc3_ || _loc3_)
                        {
                           continue;
                        }
                        addr148:
                        while(true)
                        {
                           (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
                           addr125:
                           while(true)
                           {
                              this.§7!^§(_loc1_);
                              break loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        addr142:
                        while(true)
                        {
                           §§push(this.§03§);
                           addr144:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr145:
                              while(true)
                              {
                                 §§pop()[§§pop()].gotoAndStop("Selected");
                                 §§goto(addr148);
                              }
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        _loc1_++;
                        break loop1;
                        addr98:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                     §§goto(addr98);
                     §§goto(addr75);
                  }
               }
               else
               {
                  addr129:
                  if(_loc1_ != this.§ "7§)
                  {
                     §§push(this.§03§);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr98);
                        }
                        else
                        {
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr129);
         }
      }
      
      protected function §7!^§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).§ !'§.text = §6u§.getEpisode(§6u§.currentEpisode).getPageIndex(param1).toString();
         }
      }
   }
}
