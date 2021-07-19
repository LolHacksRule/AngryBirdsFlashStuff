package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'!W§.§=!'§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§!!j§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]!>§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §^j§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelSelectionState";
      
      protected static const §+"0§:Number = 0.5;
      
      public static var §4H§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^j§))
         {
            §8"%§ = "LevelSelectionState";
         }
         while(true)
         {
            §+"0§ = 0.5;
            while(_loc1_ || _loc1_)
            {
               §4H§ = "";
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §%?§:Boolean = false;
      
      protected var §@#§:§,6§;
      
      protected var §6!1§:§,6§;
      
      protected var §5[§:MovieClip;
      
      protected var §^"%§:Array;
      
      protected var §;#§:Array;
      
      protected var §6!R§:int = 0;
      
      protected var §3!"§:int = 0;
      
      protected var §'!6§:int = 0;
      
      protected var §'2§:Boolean = false;
      
      protected var §,!i§:§]W§ = null;
      
      protected var §9""§:Dictionary;
      
      protected var §<!u§:Array;
      
      protected var §,!u§:Array;
      
      protected var §]!b§:§?>§;
      
      protected var §;!"§:Number = 0;
      
      public function §^j§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            this.§=!g§();
         }
         while(!_loc1_);
         
         while(true)
         {
            §§push(this.§6!1§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(_loc1_)
                  {
                     this.§;#§ = [];
                  }
                  while(_loc1_ || _loc2_)
                  {
                     this.§^"%§ = [];
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§push(this.§6!1§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §=!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!T§ = new §9%§(this);
            while(true)
            {
               §^!T§.init(§7I§.§7!%§.Views.View_LevelSelection[0]);
               addr39:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            this.§6!1§ = §^!T§.getItemByName("Container_LevelRepeaters") as §,6§;
            while(_loc2_ || _loc2_)
            {
               this.§@#§ = §^!T§.getItemByName("Container_LevelSelection") as §,6§;
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr56);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            §§push(§@!S§.§2A§);
            while(true)
            {
               §§pop().clearLevel();
               while(true)
               {
                  §§push(§@!S§.§2A§);
                  if(!(_loc2_ || param1))
                  {
                     break;
                  }
                  §§pop().§`!V§(false);
                  loop3:
                  for(; _loc2_ || _loc2_; loop5:
                  while(true)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        continue loop3;
                     }
                     if(this.§;#§.length == 1)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                        addr166:
                        loop6:
                        while(true)
                        {
                           (§^!T§.getItemByName("Button_Next") as §]"%§).setVisibility(false);
                           loop7:
                           while(true)
                           {
                              (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).setVisibility(false);
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§;!"§ = this.§6!1§.x;
                                    addr68:
                                    §§goto(addr19);
                                 }
                                 addr43:
                                 if(_loc2_ || this)
                                 {
                                    §^!T§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§^!L§);
                                    if(_loc3_)
                                    {
                                       while(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             (§^!T§.getItemByName("Button_Next") as §]"%§).setVisibility(true);
                                             §§goto(addr95);
                                          }
                                          else
                                          {
                                             §§goto(addr182);
                                          }
                                       }
                                       continue loop5;
                                       addr116:
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop7;
                                    }
                                    addr19:
                                 }
                                 continue;
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    addr95:
                                    while(true)
                                    {
                                       (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).setVisibility(true);
                                       continue loop9;
                                    }
                                 }
                                 addr19:
                                 return;
                              }
                           }
                        }
                     }
                     else
                     {
                        (§^!T§.getItemByName("Button_Prev") as §]"%§).setVisibility(true);
                     }
                     §§goto(addr116);
                  },continue loop0)
                  {
                     this.§[A§();
                     while(true)
                     {
                        § !4§.§%"7§.§get §();
                        continue loop3;
                     }
                  }
               }
            }
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            (§^!T§.getItemByName("Button_Prev") as §]"%§).setVisibility(false);
            §§goto(addr166);
         }
      }
      
      protected function §^!L§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1.keyCode != Keyboard.LEFT)
            {
               if(param1.keyCode == Keyboard.RIGHT)
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§"b§();
                     }
                     else
                     {
                        addr76:
                        this.§18§();
                        addr25:
                        return;
                        addr78:
                     }
                     §§goto(addr78);
                  }
                  if(!(_loc3_ || this))
                  {
                     §§goto(addr78);
                  }
               }
               §§goto(addr25);
            }
         }
         §§goto(addr76);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.update(param1);
            do
            {
               this.§8+§();
               do
               {
                  this.§+!$§();
               }
               while(_loc3_ && _loc3_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §8+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               §§push(this.§^"%§);
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        loop1:
                        for(; _loc3_; if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        },if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr25);
                              }
                              §§goto(addr509);
                           }
                           §§goto(addr470);
                        },§§goto(addr302))
                        {
                           §§push(this.§'!6§);
                           loop2:
                           while(!(_loc4_ && _loc3_))
                           {
                              §§push(this.§6!R§);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(this.§6!R§);
                                       loop39:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(this.§'!6§);
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      §§push(this.§6!R§);
                                                      if(!_loc3_)
                                                      {
                                                         continue loop39;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§'!6§);
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     this.§3!"§ = this.§'!6§ - 1;
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§]!b§.§5c§(this.§<!u§[this.§3!"§].red,this.§<!u§[this.§3!"§].green,this.§<!u§[this.§3!"§].blue);
                                                                                 addr91:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
                                                                              addr295:
                                                                              do
                                                                              {
                                                                                 this.§ !n§(_loc1_);
                                                                                 do
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr225:
                                                                                       _loc1_++;
                                                                                       continue;
                                                                                    }
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          _loc2_++;
                                                                                          addr509:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             addr499:
                                                                                             loop41:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^"%§);
                                                                                                addr501:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop().length)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§'!6§ = _loc1_;
                                                                                                         addr506:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§^"%§);
                                                                                                            addr492:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               addr493:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                  addr496:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr503:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§^"%§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         addr516:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                      }
                                                                                                      addr515:
                                                                                                   }
                                                                                                   continue loop41;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr497:
                                                                                       }
                                                                                       addr546:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(!(_loc3_ || _loc3_));
                                                                                 
                                                                              }
                                                                              while(!(_loc3_ || _loc2_));
                                                                              
                                                                              continue loop0;
                                                                              addr295:
                                                                              addr69:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr408:
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                    addr296:
                                                                                    §§push(_loc2_);
                                                                                    break loop2;
                                                                                    addr417:
                                                                                 }
                                                                              }
                                                                              addr409:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr548:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr497);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr295);
                                                                     }
                                                                  }
                                                                  addr475:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6!1§);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        §§push(-§§pop().x);
                                                                        loop14:
                                                                        for(; _loc3_; §§push(this.§;!"§),if(_loc3_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                        },if(_loc4_)
                                                                        {
                                                                           continue;
                                                                        },if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr370);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr567);
                                                                           }
                                                                           addr555:
                                                                        },§§goto(addr573))
                                                                        {
                                                                           §§push(this.§;#§);
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                      continue loop14;
                                                                                                      if(_loc4_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr406:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr408);
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   addr573:
                                                                                                   §§pop();
                                                                                                   §§push(-this.§;!"§);
                                                                                                   break loop14;
                                                                                                   addr467:
                                                                                                   addr574:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr406);
                                                                                                }
                                                                                             }
                                                                                             addr572:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr573);
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§goto(addr546);
                                                                                             addr544:
                                                                                          }
                                                                                          addr571:
                                                                                          §§goto(addr572);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§goto(addr572);
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 addr439:
                                                                              }
                                                                              §§push(this.§;#§);
                                                                              addr370:
                                                                              break;
                                                                              if(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc1_);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr541:
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr396);
                                                                                    }
                                                                                    addr568:
                                                                                    §§goto(addr571);
                                                                                    §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                 }
                                                                                 §§goto(addr544);
                                                                                 §§push(§§pop() < §§pop()[§§pop()].x);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr439);
                                                                              }
                                                                              §§goto(addr573);
                                                                           }
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr568);
                                                                              }
                                                                              addr567:
                                                                           }
                                                                           §§goto(addr541);
                                                                           §§push(_loc1_);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr533);
                                                                           §§goto(addr573);
                                                                        }
                                                                        §§goto(addr572);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr553:
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                               }
                                                               addr305:
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§^"%§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr493);
                                                                        }
                                                                        addr347:
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                           _loc2_++;
                                                                           addr317:
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr506);
                                                                           }
                                                                           §§goto(addr417);
                                                                           addr352:
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     addr337:
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§goto(addr347);
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr548);
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr136:
                                                      }
                                                      else
                                                      {
                                                         this.§3!"§ = this.§'!6§;
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr69);
                                                            }
                                                            else
                                                            {
                                                               addr216:
                                                               while(true)
                                                               {
                                                                  this.§3!"§ = this.§'!6§ + 1;
                                                                  addr222:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr295);
                                                                     }
                                                                     §§goto(addr574);
                                                                  }
                                                               }
                                                               addr216:
                                                            }
                                                            §§goto(addr546);
                                                            addr38:
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr222);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr136);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                      §§goto(addr573);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                continue loop2;
                                                addr215:
                                             }
                                             §§goto(addr499);
                                          }
                                          §§goto(addr409);
                                       }
                                       addr209:
                                    }
                                    §§goto(addr216);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§;!"§ = this.§6!1§.x;
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr38);
                                       }
                                    }
                                    addr25:
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr215);
                           }
                           addr298:
                           §§push(this.§^"%§);
                           while(true)
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 addr302:
                                 this.§'!6§ = _loc1_;
                                 §§goto(addr305);
                              }
                              else
                              {
                                 §§push(this.§^"%§);
                              }
                              §§goto(addr337);
                              §§goto(addr298);
                           }
                        }
                        while(true)
                        {
                           this.§ !n§(_loc1_);
                           §§goto(addr475);
                           §§goto(addr496);
                        }
                     }
                     else
                     {
                        §§push(this.§6!1§);
                     }
                     §§goto(addr553);
                  }
                  §§goto(addr501);
               }
               §§goto(addr300);
            }
            §§goto(addr209);
         }
      }
      
      protected function §+!$§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§;#§.length)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              if(§§pop() > 1000)
                              {
                                 while(true)
                                 {
                                    §§push(1000);
                                    addr181:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr182:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr183:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 addr180:
                              }
                              loop3:
                              while(true)
                              {
                                 if(Math.abs(this.§;#§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§;#§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr158:
                                          while(true)
                                          {
                                             §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc1_);
                                             while(true)
                                             {
                                                if(§§pop()[§§pop()].mClip.alpha < 1)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§;#§);
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§;#§);
                                                   if(_loc3_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(_loc1_);
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr126:
                                                   (§§pop()[§§pop()] as §]!>§).setEnabled(false);
                                                }
                                                loop10:
                                                for(; _loc4_; if(!(_loc4_ || this))
                                                {
                                                   continue;
                                                },if(!(_loc3_ && _loc2_))
                                                {
                                                   continue loop0;
                                                },addr166:,while(true)
                                                {
                                                   addr98:
                                                   while(true)
                                                   {
                                                      continue loop8;
                                                   }
                                                })
                                                {
                                                   if(_loc4_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc1_++;
                                                         addr44:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(Number(Math.abs(_loc2_)));
                                                         addr189:
                                                         while(!(_loc4_ || _loc1_))
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               continue loop18;
                                                            }
                                                            continue loop18;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr126);
                                             §§push(_loc1_);
                                          }
                                          §§goto(addr158);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr44);
               }
               else
               {
                  §§push(Number(this.§6!1§.x + this.§;#§[_loc1_].x));
               }
               §§goto(addr220);
            }
            §§goto(addr181);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§^!T§.stage)
            {
               while(true)
               {
                  §^!T§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§^!L§);
                  addr111:
                  while(true)
                  {
                  }
                  addr73:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §4a§.resetPreviousLevel();
                  addr80:
                  if(_loc1_ && _loc1_)
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc1_ && this))
                        {
                           addr66:
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr73);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§[>§();
                                 §§goto(addr66);
                              }
                              addr90:
                           }
                        }
                        while(!_loc1_)
                        {
                           (§^!T§.getItemByName("Button_Back") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           continue loop5;
                        }
                        §§goto(addr111);
                     }
                  }
                  return;
                  addr39:
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr90);
               §§goto(addr111);
            }
         }
         §§goto(addr39);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,!i§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!i§);
                     addr66:
                     while(true)
                     {
                        §§pop().stop();
                        addr67:
                        while(true)
                        {
                           this.§,!i§ = null;
                           addr48:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr64:
               }
               while(true)
               {
                  super.cleanup();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr67);
               }
               return;
               addr43:
            }
            §§goto(addr66);
         }
         §§goto(addr43);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
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
                        addr197:
                        while(true)
                        {
                           §§push(param3 is §!!j§);
                        }
                     }
                     addr196:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push((param3 as §!!j§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                              loop7:
                              while(true)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(_loc5_)
                                       {
                                          §§pop();
                                          loop9:
                                          while(!_loc6_)
                                          {
                                             §§push((param3 as §!!j§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§'2§);
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §7"6§(StateCutScene.§8"%§);
                                                               if(!_loc5_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     §4a§.loadLevel(§4a§.getValidLevelId(param2.toLowerCase()));
                                                                     continue loop13;
                                                                  }
                                                                  continue loop9;
                                                                  addr145:
                                                               }
                                                               var _loc4_:* = param2;
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if("BACK" === _loc4_)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr251:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr229:
                                                                        §§push(1);
                                                                        if(!_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else if("NEXT" === _loc4_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr243:
                                                                        §§push(2);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           §§goto(addr251);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if("PREV" === _loc4_)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§goto(addr243);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     if("FULLSCREEN_BUTTON" !== _loc4_)
                                                                     {
                                                                        addr278:
                                                                        loop15:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §>D§.§9!q§("Menu_Back");
                                                                              §7"6§(StateEpisodeSelection.§8"%§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break;
                                                                              addr83:
                                                                           case 1:
                                                                              this.§"b§();
                                                                              break;
                                                                              addr68:
                                                                           case 2:
                                                                              this.§18§();
                                                                              addr36:
                                                                              break;
                                                                              addr62:
                                                                           case 3:
                                                                              §>D§.§9!q§("Menu_Confirm");
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       § !4§.§%"7§.§]!;§();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             break loop15;
                                                                                          }
                                                                                          §§goto(addr83);
                                                                                       }
                                                                                       break loop15;
                                                                                    }
                                                                                    §§goto(addr68);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr62);
                                                                                 }
                                                                              }
                                                                              §§goto(addr36);
                                                                        }
                                                                        return;
                                                                        §§push(4);
                                                                     }
                                                                     §§goto(addr278);
                                                                     §§push(3);
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            addr153:
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      continue loop6;
                                                      addr114:
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!§§pop())
                                                {
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr77);
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr114);
                                 }
                                 else
                                 {
                                    §§goto(addr196);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr77);
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      protected function §"b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §>D§.§9!q§("Menu_Confirm");
            if(_loc3_ || _loc2_)
            {
               if(!this.§'2§)
               {
                  if(_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§6!R§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.§6!R§ = _loc2_;
                     }
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr89);
                  }
                  this.§[D§(this.§6!R§);
               }
            }
         }
         addr89:
      }
      
      protected function §18§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §>D§.§9!q§("Menu_Confirm");
            if(!_loc4_)
            {
               §§goto(addr28);
            }
            §§goto(addr75);
         }
         addr28:
         if(!this.§'2§)
         {
            if(_loc3_ || _loc3_)
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§6!R§);
               if(_loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  _loc1_.§6!R§ = _loc2_;
               }
               if(!_loc4_)
               {
                  addr75:
                  this.§[D§(this.§6!R§);
               }
            }
            §§goto(addr75);
         }
      }
      
      public function §[A§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(_loc10_ || this)
         {
            this.§<!u§ = [];
            if(!(_loc9_ && this))
            {
               addr52:
               this.§,!u§ = [];
            }
            var _loc2_:§7C§ = §4a§.getEpisode(§4a§.currentEpisode);
            if(!_loc9_)
            {
               this.§6!R§ = _loc2_.currentPage;
               loop0:
               while(true)
               {
                  addr78:
                  while(true)
                  {
                     this.§3!"§ = this.§6!R§;
                     while(true)
                     {
                        if(_loc10_)
                        {
                           this.§'!6§ = this.§6!R§;
                           if(_loc10_ || _loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr78);
            }
            var _loc3_:* = Number(0);
            loop4:
            while(_loc3_ < _loc2_.§4!%§)
            {
               _loc4_ = _loc2_.§&d§(_loc3_);
               if(!_loc9_)
               {
                  §§push(this.§<!u§);
                  while(true)
                  {
                     §§pop().push(_loc2_.§""%§(_loc3_));
                     while(true)
                     {
                        §§push(this.§,!u§);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§pop().push(_loc2_.§@",§(_loc3_));
                        loop7:
                        while(true)
                        {
                           addr160:
                           while(true)
                           {
                              §§push(this.§@!b§(_loc4_,_loc3_,_loc1_,_loc2_));
                              loop9:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop10:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr169:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(!(_loc10_ || _loc2_))
                                          {
                                             continue loop10;
                                          }
                                          if(_loc9_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(§§pop() + 1);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc10_ || this)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr169);
            }
            if(_loc10_ || _loc3_)
            {
               this.§]!b§ = new §?>§(this.§<!u§[this.§6!R§].red,this.§<!u§[this.§6!R§].green,this.§<!u§[this.§6!R§].blue,1);
               if(_loc10_ || _loc2_)
               {
                  §^!T§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§]!b§);
                  if(!(_loc9_ && _loc2_))
                  {
                     addr251:
                     if(_loc2_.§#T§)
                     {
                        if(_loc10_)
                        {
                           addr256:
                           _loc6_ = new (_loc5_ = §=!V§.§?!O§(_loc2_.§#T§))();
                           if(_loc10_)
                           {
                              §^!T§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                              if(_loc10_)
                              {
                                 addr282:
                                 if(_loc2_.§@"2§)
                                 {
                                    if(_loc9_ && _loc3_)
                                    {
                                    }
                                    addr323:
                                    this.§6!`§();
                                    if(_loc10_ || _loc1_)
                                    {
                                       if(§4H§ == StateCutScene.§8"%§)
                                       {
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §4H§ = "";
                                             this.§[D§(this.§'!6§);
                                             addr390:
                                          }
                                          §§goto(addr390);
                                       }
                                       else
                                       {
                                          this.§[D§(this.§6!R§,true);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(_loc9_ && _loc2_)
                                             {
                                                §§goto(addr390);
                                             }
                                             else
                                             {
                                                addr359:
                                             }
                                             §§goto(addr333);
                                          }
                                       }
                                       addr333:
                                       return;
                                       addr332:
                                    }
                                    §§goto(addr390);
                                 }
                                 else
                                 {
                                    §^!T§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                    §§goto(addr323);
                                 }
                              }
                              _loc8_ = new (_loc7_ = §=!V§.§?!O§(_loc2_.§@"2§))();
                              if(!_loc9_)
                              {
                                 §^!T§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                 if(!(_loc9_ && _loc1_))
                                 {
                                    §§goto(addr323);
                                 }
                                 §§goto(addr359);
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr323);
                        }
                     }
                     else
                     {
                        §^!T§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                     }
                  }
                  §§goto(addr282);
               }
               §§goto(addr251);
            }
            §§goto(addr256);
         }
         §§goto(addr52);
      }
      
      protected function §@!b§(param1:Array, param2:int, param3:Number, param4:§7C§) : Number
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
         var _loc6_:Class = §=!V§.§?!O§(this.§,!u§[param2]);
         var _loc7_:Number = 0;
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc14_)
            {
               §§push(§ !4§.§%"7§.§@D§.userProgress.§2"+§(_loc10_));
               if(!(_loc14_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!_loc15_)
               {
                  break;
               }
            }
            _loc12_ = this.§[!]§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(!(_loc14_ && param3))
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
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || param2)
                              {
                                 _loc13_.@MouseUp = _loc10_;
                              }
                              while(true)
                              {
                              }
                              addr209:
                           }
                           while(true)
                           {
                              _loc13_.@scaleOnMouseOver = "True";
                              loop6:
                              while(true)
                              {
                                 _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc15_)
                                    {
                                       §§push(_loc11_);
                                       if(_loc14_ && param3)
                                       {
                                          break;
                                       }
                                       if(!_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             while(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                   addr158:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr209);
                                             addr152:
                                          }
                                          while(true)
                                          {
                                             _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                             addr130:
                                             while(true)
                                             {
                                                if(!_loc14_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr158);
                                          }
                                          continue loop0;
                                          addr124:
                                       }
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                                 while(!_loc14_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr214);
                  }
               }
            }
            §§goto(addr154);
         }
         _loc8_ = <Repeater/>;
         if(!_loc14_)
         {
            §§push(param1);
            while(§§pop().length != 15)
            {
               §§push(param1);
               if(!_loc15_)
               {
                  continue;
               }
               if(§§pop().length != 12)
               {
                  _loc8_.@name = "Repeater_LevelSelection";
                  loop26:
                  while(true)
                  {
                     loop19:
                     while(true)
                     {
                        _loc8_.@button = this.§,!u§[param2];
                        loop20:
                        while(_loc15_)
                        {
                           _loc8_.@enabled = "True";
                           loop21:
                           while(true)
                           {
                              addr259:
                              while(true)
                              {
                                 _loc8_.@buttonSelectionType = "NO_SELECTION";
                                 while(!_loc14_)
                                 {
                                    _loc8_.@fromLibrary = "true";
                                    if(!_loc14_)
                                    {
                                       continue loop21;
                                    }
                                 }
                                 continue loop20;
                              }
                              continue loop26;
                           }
                        }
                        while(true)
                        {
                           continue loop19;
                        }
                     }
                  }
                  addr287:
               }
               §§goto(addr297);
            }
            while(true)
            {
               _loc8_.@name = "Repeater_LevelSelection15";
               §§goto(addr310);
            }
         }
         §§goto(addr287);
      }
      
      protected function §[!]§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
                     loop14:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        addr207:
                        while(true)
                        {
                           §§push(§ !4§.§%"7§);
                           addr181:
                           while(true)
                           {
                              §§push(§§pop().§@D§);
                              addr182:
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 addr183:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr184:
                                    while(true)
                                    {
                                       §§push(§§pop().§+!]§(§§pop()));
                                       addr185:
                                       while(§§pop() != 100)
                                       {
                                          _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                          loop12:
                                          while(true)
                                          {
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             addr147:
                                             while(!(_loc8_ && param1))
                                             {
                                                if(_loc8_ && this)
                                                {
                                                   break loop6;
                                                }
                                                if(!_loc9_)
                                                {
                                                   continue loop14;
                                                }
                                                addr128:
                                                loop2:
                                                while(true)
                                                {
                                                   _loc6_.isOpen = param2;
                                                   addr123:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr134:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   addr177:
                                                }
                                             }
                                             addr191:
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             §§goto(addr177);
                                          }
                                       }
                                       break loop6;
                                    }
                                    continue loop11;
                                 }
                                 _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                 §§goto(addr191);
                              }
                           }
                        }
                     }
                  }
                  addr210:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
               }
               §§goto(addr134);
            }
         }
         §§goto(addr207);
      }
      
      protected function §6!`§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!(_loc6_ && _loc1_))
         {
            if(this.§;#§.length == 1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(_loc5_ || this)
         {
            this.§9""§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§;#§.length)
         {
            _loc1_ = §=!V§.§?!O§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_ || _loc2_)
            {
               _loc2_.x = § !4§.§&v§ / 2 + _loc3_ - this.§;#§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§^!T§.getItemByName("Button_Next") as §]"%§).y - _loc2_.height / 2;
                  loop2:
                  while(true)
                  {
                     if(_loc4_ == this.§6!R§)
                     {
                        loop7:
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                           addr245:
                           while(true)
                           {
                              (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = _loc2_.x;
                              addr234:
                              while(!_loc6_)
                              {
                                 (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).y = _loc2_.y - _loc2_.height;
                                 while(true)
                                 {
                                    this.§ !n§(_loc4_);
                                    addr211:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              continue loop7;
                           }
                        }
                     }
                     else
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        while(true)
                        {
                           loop14:
                           while(!(_loc6_ && _loc3_))
                           {
                              _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§9j§);
                              loop15:
                              while(_loc5_ || _loc1_)
                              {
                                 do
                                 {
                                    _loc2_.buttonMode = true;
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                _loc4_++;
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            §§goto(addr99);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                while(true)
                                                {
                                                   this.§9""§[_loc2_] = _loc4_;
                                                   continue loop2;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop14;
                                       }
                                       continue loop15;
                                    }
                                    §§goto(addr211);
                                    continue loop15;
                                 }
                                 while(false);
                                 
                                 continue loop0;
                              }
                              while(!(_loc6_ && this))
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(Number(§§pop() + _loc2_.width));
                                 }
                                 _loc3_ = §§pop();
                                 continue loop14;
                                 §§goto(addr126);
                              }
                              addr126:
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§@#§.mClip.addChild(_loc2_);
                        §§goto(addr189);
                     }
                  }
               }
            }
            while(true)
            {
               this.§^"%§.push(_loc2_);
               §§goto(addr161);
            }
         }
         if(_loc5_ || _loc3_)
         {
            §§push(this.§;#§.length * _loc2_.width);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() / 2);
               if(!(_loc6_ && _loc2_))
               {
                  addr313:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!(_loc6_ && _loc1_))
                  {
                     addr325:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     (§^!T§.getItemByName("Button_Next") as §]"%§).x = § !4§.§&v§ / 2;
                  }
                  while(true)
                  {
                     (§^!T§.getItemByName("Button_Prev") as §]"%§).x = § !4§.§&v§ / 2;
                     §§goto(addr392);
                  }
               }
               §§goto(addr325);
            }
            §§goto(addr313);
         }
         addr392:
         while(true)
         {
            (§^!T§.getItemByName("Button_Next") as §]"%§).x = (§^!T§.getItemByName("Button_Next") as §]"%§).x + (_loc3_ + 10);
            while(_loc5_)
            {
               (§^!T§.getItemByName("Button_Prev") as §]"%§).x = (§^!T§.getItemByName("Button_Prev") as §]"%§).x - (_loc3_ + 10);
               if(!_loc6_)
               {
                  continue loop18;
               }
            }
         }
         addr360:
      }
      
      protected function §[>§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§]!b§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr42:
                     this.§]!b§.§,!#§();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§^"%§.length)
                  {
                     loop1:
                     while(true)
                     {
                        this.§^"%§ = [];
                        loop2:
                        while(_loc2_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              do
                              {
                                 §§push(this.§6!1§);
                                 if(!_loc3_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_ && this)
                                          {
                                             continue loop1;
                                          }
                                          this.§;#§ = [];
                                       }
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          if(_loc2_)
                                          {
                                             break loop0;
                                          }
                                          loop4:
                                          while(_loc3_ && _loc3_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§^"%§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§9j§);
                                                addr178:
                                                while(true)
                                                {
                                                   §§push(this.§@#§);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      break loop5;
                                                   }
                                                   addr152:
                                                   while(true)
                                                   {
                                                      if(§§pop().mClip.contains(this.§^"%§[_loc1_]))
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_++;
                                                         continue loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             §§pop().mClip.removeChild(this.§^"%§[_loc1_]);
                                             break loop2;
                                          }
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    §§push(this.§6!1§);
                                 }
                                 §§pop().mClip.removeChildAt(0);
                              }
                              while(_loc2_);
                              
                              continue;
                           }
                           §§goto(addr178);
                        }
                        while(true)
                        {
                           §§goto(addr121);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§@#§);
                  }
                  §§goto(addr152);
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      protected function §9j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§'2§)
            {
               if(!_loc2_)
               {
                  this.§[D§(this.§9""§[param1.target]);
               }
            }
         }
      }
      
      protected function §6t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§'2§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr48:
                  §7"6§(§^j§.§8"%§);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      protected function §[D§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            this.§'2§ = true;
         }
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               if(§§pop() <= this.§;#§.length - 1)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    param1 = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr115:
                                          while(true)
                                          {
                                             this.§6!R§ = param1;
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§6!R§);
                                                   loop12:
                                                   while(!(_loc7_ && param1))
                                                   {
                                                      §§push(this.§'!6§);
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.§6!R§);
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§push(this.§'!6§);
                                                         addr45:
                                                         continue loop3;
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop10;
                                                            }
                                                            if(_loc6_ || this)
                                                            {
                                                               this.§3!"§ = this.§'!6§ - 1;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               if(_loc7_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               if(true)
                                                               {
                                                                  break loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr103:
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         this.§3!"§ = this.§'!6§ + 1;
                                                         §§goto(addr103);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§;#§);
                                                            if(_loc7_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().length - 1);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                               }
                                                               addr154:
                                                            }
                                                            else
                                                            {
                                                               addr184:
                                                               var _loc3_:Number = §§pop();
                                                               var _loc4_:Number = this.§;#§[param1].x + this.§6!1§.x;
                                                               addr183:
                                                               var _loc5_:*;
                                                               §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() / 1024);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr211:
                                                                        §§push(§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           addr227:
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              addr222:
                                                                              §§push(§+"0§);
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.§,!i§);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    addr356:
                                                                                    this.§,!i§.stop();
                                                                                    addr357:
                                                                                    addr354:
                                                                                 }
                                                                                 addr327:
                                                                                 if(param2)
                                                                                 {
                                                                                    addr328:
                                                                                    this.§6!1§.x = _loc3_;
                                                                                    addr267:
                                                                                    addr332:
                                                                                    §§push(param2);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             if(!(_loc6_ || param1))
                                                                                             {
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             this.§7§();
                                                                                             addr231:
                                                                                             return;
                                                                                             addr288:
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       §§push(this.§,!i§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             §§pop().play();
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                                addr295:
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         §§goto(addr267);
                                                                                                      }
                                                                                                      §§goto(addr328);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                                §§push(this.§,!i§);
                                                                                                addr324:
                                                                                             }
                                                                                             §§goto(addr231);
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                       §§pop().onComplete = this.§7§;
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 this.§,!i§ = §0!o§.§,2§.§4!t§(this.§6!1§,{"x":_loc3_},null,_loc5_,§=!'§.easeOut);
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr227);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                         }
                                                         addr162:
                                                         §§push(-§§pop()[param1].x);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr184);
                                                         addr140:
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr160:
                                             §§goto(addr162);
                                          }
                                          addr115:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                 }
                                 §§goto(addr154);
                              }
                           }
                        }
                        §§goto(addr115);
                     }
                  }
               }
               §§goto(addr140);
            }
         }
      }
      
      protected function §7§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() >= this.§^"%§.length)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§'2§ = false;
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc1_++;
                                    addr76:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop0;
                                       }
                                       addr109:
                                       addr141:
                                       while(!_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§^"%§);
                                          addr143:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             addr144:
                                             while(true)
                                             {
                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                break loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr102:
                           }
                           §4a§.getEpisode(§4a§.currentEpisode).currentPage = this.§6!R§;
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           §§goto(addr76);
                        }
                        while(true)
                        {
                           (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
                        }
                        addr147:
                        addr61:
                     }
                     while(true)
                     {
                        this.§ !n§(_loc1_);
                        §§goto(addr109);
                        §§goto(addr147);
                     }
                  }
                  §§goto(addr61);
               }
               else
               {
                  addr128:
                  if(_loc1_ != this.§6!R§)
                  {
                     §§push(this.§^"%§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr102);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr128);
         }
      }
      
      protected function § !n§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).§'!"§.text = §4a§.getEpisode(§4a§.currentEpisode).getPageIndex(param1).toString();
         }
      }
   }
}
