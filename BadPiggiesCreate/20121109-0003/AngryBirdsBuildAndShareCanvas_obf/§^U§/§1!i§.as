package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!]§.§]!v§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§#!n§;
   import §=!7§.§3!b§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §1!i§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelSelectionState";
      
      protected static const §#!4§:Number = 0.5;
      
      public static var §&t§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §1!i§))
         {
            §%!Q§ = "LevelSelectionState";
            do
            {
               §#!4§ = 0.5;
               do
               {
                  §&t§ = "";
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §%?§:Boolean = false;
      
      protected var §7"%§:§6W§;
      
      protected var §9z§:§6W§;
      
      protected var §`"$§:MovieClip;
      
      protected var §82§:Array;
      
      protected var §,!C§:Array;
      
      protected var §8!"§:int = 0;
      
      protected var §-!w§:int = 0;
      
      protected var §<!6§:int = 0;
      
      protected var §[">§:Boolean = false;
      
      protected var § ![§:§=!r§ = null;
      
      protected var §`Z§:Dictionary;
      
      protected var §'!^§:Array;
      
      protected var §<!L§:Array;
      
      protected var §<E§:§]!v§;
      
      protected var §,"9§:Number = 0;
      
      public function §1!i§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            this.§2!Q§();
         }
         while(!_loc1_);
         
         while(true)
         {
            §§push(this.§9z§);
            if(!_loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  do
                  {
                     this.§,!C§ = [];
                     do
                     {
                        this.§82§ = [];
                     }
                     while(_loc2_ && this);
                     
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(_loc1_)
                  {
                     break;
                  }
                  continue;
               }
               §§push(this.§9z§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §2!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!v§ = new §>!V§(this);
            loop0:
            while(true)
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_LevelSelection[0]);
               while(true)
               {
                  this.§9z§ = §`!v§.getItemByName("Container_LevelRepeaters") as §6W§;
                  continue loop0;
                  addr34:
                  if(_loc2_)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§'_§.§=M§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§'_§.§=M§);
                     if(!(_loc2_ || _loc1_))
                     {
                        break;
                     }
                     §§pop().§'"@§(false);
                     loop3:
                     while(true)
                     {
                        this.§2!m§();
                        while(true)
                        {
                           this.§do §();
                           addr183:
                           while(!(_loc1_ && _loc1_))
                           {
                              if(this.§,!C§.length != 1)
                              {
                                 (§`!v§.getItemByName("Button_Prev") as §9"8§).setVisibility(true);
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop3;
                                 addr124:
                              }
                              while(true)
                              {
                                 (§`!v§.getItemByName("Button_Prev") as §9"8§).setVisibility(false);
                                 addr177:
                                 while(!_loc1_)
                                 {
                                    (§`!v§.getItemByName("Button_Next") as §9"8§).setVisibility(false);
                                    continue loop0;
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
         §§goto(addr147);
      }
      
      protected function §do §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            AngryBirdsFP11.§do §();
         }
      }
      
      protected function §#"#§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,!C§.length > 1)
            {
               do
               {
                  if(param1.keyCode == Keyboard.LEFT)
                  {
                     continue;
                  }
                  if(param1.keyCode == Keyboard.RIGHT)
                  {
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           addr19:
                           return;
                           addr82:
                        }
                        this.§!!J§();
                        §§goto(addr19);
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_ && _loc2_)
                     {
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr19);
               }
               while(_loc3_ && param1);
               
               this.§,j§();
               §§goto(addr82);
            }
            addr88:
            return;
         }
         §§goto(addr19);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr106);
                  }
                  else
                  {
                     addr107:
                     while(true)
                     {
                     }
                     addr107:
                  }
               }
               while(true)
               {
                  this.§1!d§();
                  loop1:
                  while(!_loc4_)
                  {
                     this.§^g§();
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(mNextState.length <= 0)
                           {
                              break;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              return §'B§.STATE_STATUS_COMPLETED;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     return §'B§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr107);
               }
            }
            addr106:
            return _loc2_;
         }
         §§goto(addr107);
      }
      
      protected function §1!d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.§82§);
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc4_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           loop1:
                           for(; _loc4_ || this; if(_loc3_ && _loc2_)
                           {
                              continue;
                           },this.§-!w§ = this.§<!6§ - 1,§§goto(addr190))
                           {
                              §§push(this.§<!6§);
                              while(true)
                              {
                                 §§push(this.§8!"§);
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop4:
                                       while(_loc4_ || _loc3_)
                                       {
                                          §§push(this.§8!"§);
                                          loop45:
                                          while(true)
                                          {
                                             §§push(this.§<!6§);
                                             addr243:
                                             while(§§pop() <= §§pop())
                                             {
                                                continue loop45;
                                             }
                                             loop47:
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   this.§-!w§ = this.§<!6§ + 1;
                                                   loop48:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(this.§'!^§);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§-!w§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop()[§§pop()])
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop48;
                                                                                    }
                                                                                    continue loop48;
                                                                                    addr164:
                                                                                 }
                                                                                 if(_loc3_ && _loc2_)
                                                                                 {
                                                                                    continue loop47;
                                                                                 }
                                                                                 this.§<E§.§8"8§(this.§'!^§[this.§-!w§].red,this.§'!^§[this.§-!w§].green,this.§'!^§[this.§-!w§].blue);
                                                                              }
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr26:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§,"9§ = this.§9z§.x;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             addr539:
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                addr529:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§82§);
                                                                                                   addr531:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop().length)
                                                                                                      {
                                                                                                         addr533:
                                                                                                         this.§<!6§ = _loc1_;
                                                                                                         addr520:
                                                                                                         §§push(this.§82§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr523:
                                                                                                            §§pop()[_loc1_].gotoAndStop("Selected");
                                                                                                            while(true)
                                                                                                            {
                                                                                                               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
                                                                                                               addr516:
                                                                                                               addr569:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§ "3§(_loc1_);
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                               addr569:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr570:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr571:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr526:
                                                                                                         }
                                                                                                         addr536:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(this.§82§);
                                                                                                      }
                                                                                                      §§push(_loc2_);
                                                                                                      addr546:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                         addr549:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(_loc4_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      §§push(this.§,"9§);
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§,!C§);
                                                                                                         loop19:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr569);
                                                                                                                     }
                                                                                                                     addr433:
                                                                                                                     addr576:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§9z§);
                                                                                                                        if(_loc3_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(-§§pop().x);
                                                                                                                        loop28:
                                                                                                                        while(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§,!C§);
                                                                                                                           loop29:
                                                                                                                           for(; _loc4_ || _loc1_; §§push(this.§,!C§),if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },addr390:,if(!(_loc3_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc3_ && _loc1_)
                                                                                                                                 {
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr419:
                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc2_ = 0;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         break loop45;
                                                                                                                                                         addr344:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr570);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr526);
                                                                                                                                                addr428:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             §§goto(addr419);
                                                                                                                                          }
                                                                                                                                          addr265:
                                                                                                                                          _loc1_++;
                                                                                                                                          break loop1;
                                                                                                                                          addr426:
                                                                                                                                       }
                                                                                                                                       §§goto(addr596);
                                                                                                                                    }
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr594);
                                                                                                                                 }
                                                                                                                                 addr591:
                                                                                                                              }
                                                                                                                              §§goto(addr457);
                                                                                                                           },while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr591);
                                                                                                                              §§goto(addr390);
                                                                                                                           })
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 addr483:
                                                                                                                                 addr483:
                                                                                                                                 addr594:
                                                                                                                                 while(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§,"9§);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr590);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr578);
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr597:
                                                                                                   }
                                                                                                   §§goto(addr536);
                                                                                                }
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      _loc2_++;
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr516);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   this.§ "3§(_loc1_);
                                                                                                   addr272:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      this.§<!6§ = _loc1_;
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§82§);
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   §§goto(addr571);
                                                                                                   addr334:
                                                                                                }
                                                                                                §§goto(addr549);
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                             addr115:
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       addr26:
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr190:
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr26);
                                                                        }
                                                                        §§goto(addr523);
                                                                     }
                                                                     addr313:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop()[§§pop()].gotoAndStop("Selected");
                                                                        §§goto(addr318);
                                                                     }
                                                                     addr351:
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr546);
                                                                  }
                                                                  §§goto(addr520);
                                                               }
                                                               addr350:
                                                               §§goto(addr351);
                                                               §§push(_loc2_);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr313);
                                                         §§push(_loc1_);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                }
                                                §§goto(addr533);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.§82§);
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      §§goto(addr334);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr350);
                                                      §§push(this.§82§);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                addr332:
                                             }
                                             §§goto(addr570);
                                          }
                                       }
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr433);
                                       }
                                       §§goto(addr569);
                                    }
                                    §§goto(addr26);
                                 }
                              }
                           }
                           continue;
                        }
                        §§push(this.§9z§);
                        §§goto(addr576);
                     }
                     §§goto(addr531);
                  }
                  §§goto(addr332);
               }
               §§goto(addr529);
            }
            §§goto(addr241);
         }
      }
      
      protected function §^g§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               if(§§pop() >= this.§,!C§.length)
               {
                  if(_loc3_)
                  {
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() > 1000)
                                 {
                                    while(true)
                                    {
                                       §§push(1000);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr186:
                                          while(true)
                                          {
                                             if(_loc4_ && this)
                                             {
                                                continue loop1;
                                             }
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr184:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(Math.abs(this.§,!C§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc4_)
                                          {
                                             §§push(this.§,!C§);
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr157:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                   addr165:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr156:
                                          }
                                          else
                                          {
                                             §§goto(addr184);
                                          }
                                       }
                                       continue loop1;
                                       addr150:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§,!C§);
                                       while(_loc3_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             if(§§pop()[§§pop()].mClip.alpha >= 1)
                                             {
                                                §§push(this.§,!C§);
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc1_);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      (§§pop()[§§pop()] as §0"4§).setEnabled(true);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this.§,!C§);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     addr125:
                                                                     while(_loc3_)
                                                                     {
                                                                        (§§pop()[§§pop()] as §0"4§).setEnabled(false);
                                                                        while(true)
                                                                        {
                                                                           addr48:
                                                                           while(true)
                                                                           {
                                                                              _loc1_++;
                                                                              addr50:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc4_ && _loc1_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr150);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  addr124:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(Math.abs(_loc2_)));
                                                                     continue loop1;
                                                                  }
                                                                  addr225:
                                                               }
                                                            }
                                                            addr115:
                                                         }
                                                         §§goto(addr48);
                                                      }
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr224:
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr186);
                        }
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr50);
               }
               else
               {
                  §§push(Number(this.§9z§.x + this.§,!C§[_loc1_].x));
               }
               §§goto(addr224);
            }
            §§goto(addr185);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§`!v§.stage)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §`!v§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#"#§);
               }
               while(true)
               {
                  addr56:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     §`!r§.§;!8§ = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr73:
                     while(!(_loc2_ && this))
                     {
                        §§goto(addr56);
                        continue loop5;
                     }
                     while(_loc1_)
                     {
                        (§`!v§.getItemByName("Button_Back") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        §§goto(addr39);
                     }
                     addr39:
                     while(true)
                     {
                        this.§="7§();
                        §§goto(addr67);
                     }
                     addr67:
                  }
                  return;
                  addr63:
               }
               addr101:
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr73);
               §§goto(addr101);
            }
         }
         §§goto(addr63);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§ ![§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§ ![§);
                     addr71:
                     loop3:
                     while(true)
                     {
                        §§pop().stop();
                        addr72:
                        while(true)
                        {
                           this.§ ![§ = null;
                           addr51:
                           addr53:
                           while(_loc1_)
                           {
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr69:
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr51);
                  §§goto(addr53);
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr69);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || param2)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push((param3 as §#!n§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ && param1)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr205:
                                          loop11:
                                          while(true)
                                          {
                                             §§push((param3 as §#!n§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                             if(!_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             addr122:
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §`!r§.loadLevel(§`!r§.§0&§(param2.toLowerCase()));
                                                         }
                                                         addr136:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr152:
                                                   }
                                                   §§goto(addr78);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr213:
                                                      while(true)
                                                      {
                                                         §§push(param3 is §#!n§);
                                                         break loop9;
                                                      }
                                                   }
                                                   addr212:
                                                }
                                                continue loop11;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr122);
                                             §§push(this.§[">§);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr78);
                                       §§goto(addr104);
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr78);
                     }
                     addr171:
                  }
                  §§goto(addr212);
               }
            }
         }
         §§goto(addr136);
      }
      
      protected function §!!J§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §0"#§.§9"2§("Menu_Confirm");
            if(_loc3_ || _loc1_)
            {
               if(!this.§[">§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§8!"§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.§8!"§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        addr85:
                        this.§-r§(this.§8!"§);
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr85);
      }
      
      protected function §,j§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §0"#§.§9"2§("Menu_Confirm");
            if(_loc4_)
            {
               if(!this.§[">§)
               {
                  if(!_loc3_)
                  {
                     addr29:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§8!"§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || this)
                     {
                        _loc1_.§8!"§ = _loc2_;
                     }
                     if(_loc4_ || this)
                     {
                     }
                     §§goto(addr85);
                  }
                  this.§-r§(this.§8!"§);
               }
            }
            addr85:
            return;
         }
         §§goto(addr29);
      }
      
      public function §2!m§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         if(_loc9_)
         {
            this.§'!^§ = [];
         }
         while(true)
         {
            this.§<!L§ = [];
            loop1:
            while(true)
            {
               this.§8!"§ = §`!r§.§]-§(§`!r§.§^0§).§?"8§;
               loop2:
               while(true)
               {
                  addr51:
                  addr86:
                  while(true)
                  {
                     this.§-!w§ = this.§8!"§;
                     addr56:
                     while(_loc9_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  var _loc2_:§3!l§ = §`!r§.§]-§(§`!r§.§^0§);
                  var _loc3_:* = Number(0);
                  addr176:
                  if(_loc3_ < _loc2_.pageIndexes.length)
                  {
                     _loc4_ = _loc2_.§-!L§(_loc2_.pageIndexes[_loc3_]);
                     if(_loc9_)
                     {
                        addr171:
                        this.§'!^§.push(_loc2_.§@G§(_loc3_));
                        addr175:
                        §§push(this.§<!L§);
                        if(!(_loc10_ && this))
                        {
                           §§pop().push(_loc2_.§^b§(_loc3_));
                           addr150:
                           _loc1_ = this.§=!a§(_loc4_,_loc3_,_loc1_,_loc2_);
                           addr142:
                           addr168:
                           addr149:
                           if(!_loc10_)
                           {
                              §§push(_loc3_);
                              if(!(_loc10_ && _loc1_))
                              {
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       addr127:
                                       §§push(Number(§§pop()));
                                    }
                                    if(_loc9_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr142);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr127);
                              addr153:
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr153);
                  }
                  if(!_loc10_)
                  {
                     this.§<E§ = new §]!v§(this.§'!^§[this.§8!"§].red,this.§'!^§[this.§8!"§].green,this.§'!^§[this.§8!"§].blue,1);
                     if(_loc9_ || this)
                     {
                        §`!v§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§<E§);
                        if(_loc9_ || _loc2_)
                        {
                           if(_loc2_.§#! §)
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 _loc6_ = new (_loc5_ = §69§.§ 0§(_loc2_.§#! §))();
                                 if(!(_loc10_ && _loc1_))
                                 {
                                    §`!v§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                    if(_loc9_ || this)
                                    {
                                       addr282:
                                       if(_loc2_.§ "'§)
                                       {
                                          if(_loc10_ && this)
                                          {
                                          }
                                          addr318:
                                          this.§'C§();
                                          if(!_loc10_)
                                          {
                                             if(§&t§ != StateCutScene.§%!Q§)
                                             {
                                                this.§-r§(this.§8!"§,true);
                                                if(!_loc9_)
                                                {
                                                   addr343:
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr370);
                                                   }
                                                }
                                                else
                                                {
                                                   addr337:
                                                }
                                                return;
                                             }
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §&t§ = "";
                                                this.§-r§(this.§<!6§);
                                                addr370:
                                             }
                                             §§goto(addr370);
                                             §§goto(addr343);
                                             addr322:
                                          }
                                          §§goto(addr370);
                                       }
                                       else
                                       {
                                          §`!v§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                          §§goto(addr318);
                                       }
                                    }
                                    _loc8_ = new (_loc7_ = §69§.§ 0§(_loc2_.§ "'§))();
                                    if(_loc9_)
                                    {
                                       §`!v§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                       if(_loc9_)
                                       {
                                          §§goto(addr318);
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr318);
                              }
                           }
                           else
                           {
                              §`!v§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           }
                        }
                     }
                  }
                  §§goto(addr282);
               }
            }
         }
      }
      
      protected function §=!a§(param1:Array, param2:int, param3:Number, param4:§3!l§) : Number
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
         var _loc6_:Class = §69§.§ 0§(this.§<!L§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc15_ || this)
            {
               §§push(AngryBirdsFP11.§>!7§.§%!a§(_loc10_));
               if(_loc15_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!_loc15_)
               {
                  break;
               }
               _loc12_ = this.§4!"§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(_loc15_ || param3)
               {
                  §§push(_loc11_);
                  if(!_loc14_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc14_)
                     {
                        if(!§§pop())
                        {
                           loop12:
                           while(true)
                           {
                              §§pop();
                              addr228:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.§^q§);
                                 addr200:
                                 while(!_loc14_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop12;
                              }
                           }
                           addr227:
                        }
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    _loc13_.@MouseUp = _loc10_;
                                    while(true)
                                    {
                                       addr189:
                                       loop6:
                                       while(!(_loc14_ && param2))
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                             if(_loc15_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                         addr169:
                                                      }
                                                      _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                      while(!_loc14_)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      continue loop7;
                                                      addr126:
                                                      if(!(_loc15_ || param3))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc15_ || param2)
                                                      {
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                            loop11:
                                                            while(_loc15_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        addr117:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     if(!(_loc15_ || param2))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         addr142:
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr200);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc13_.@scaleOnMouseOver = "True";
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                  }
                  §§goto(addr227);
               }
               §§goto(addr150);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(_loc15_ || param1)
         {
            §§push(param1);
            loop16:
            while(true)
            {
               §§push(§§pop().length == 15);
               addr342:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop16;
                     }
                     addr344:
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                           break;
                        }
                        if(_loc15_ || param2)
                        {
                           if(_loc14_ && param1)
                           {
                              continue loop16;
                           }
                           _loc8_.@name = "Repeater_LevelSelection15";
                        }
                        _loc8_.@button = this.§<!L§[param2];
                        _loc8_.@enabled = "True";
                     }
                     addr294:
                     if(!_loc14_)
                     {
                        §§goto(addr280);
                     }
                     §§goto(addr337);
                     addr318:
                  }
               }
            }
         }
         loop21:
         while(true)
         {
            while(true)
            {
               _loc8_.@buttonSelectionType = "NO_SELECTION";
               do
               {
                  _loc8_.@fromLibrary = "true";
               }
               while(_loc14_);
               
               if(_loc15_)
               {
                  if(!(_loc14_ && param2))
                  {
                     if(!(_loc14_ && param3))
                     {
                        if(true)
                        {
                           var _loc9_:§3!b§;
                           (_loc9_ = new §3!b§(_loc8_,this.§9z§,null,null)).§&!'§(_loc5_);
                           if(_loc15_ || param1)
                           {
                              _loc9_.setVisibility(true);
                              loop24:
                              while(true)
                              {
                                 _loc9_.x += param3;
                                 while(true)
                                 {
                                    this.§9z§.§#i§(_loc9_);
                                    loop26:
                                    while(_loc15_)
                                    {
                                       this.§,!C§.push(_loc9_);
                                       while(true)
                                       {
                                          §§push(param3);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() + AngryBirdsFP11.§6j§);
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr375:
                                                if(!(_loc14_ && param2))
                                                {
                                                   §§goto(addr382);
                                                }
                                             }
                                          }
                                          addr393:
                                          while(true)
                                          {
                                             param3 = §§pop();
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                             if(_loc14_)
                                             {
                                                continue loop26;
                                             }
                                             if(_loc14_)
                                             {
                                                continue loop24;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(param3);
                              if(!(_loc14_ && param1))
                              {
                                 §§goto(addr375);
                              }
                              §§goto(addr393);
                           }
                        }
                        continue;
                        addr382:
                        return §§pop();
                     }
                     §§goto(addr294);
                  }
                  break;
               }
               continue loop21;
            }
            §§goto(addr287);
         }
      }
      
      protected function §4!"§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(!(_loc9_ && param1))
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
                     addr214:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        loop11:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§>!7§);
                           addr184:
                           while(true)
                           {
                              §§push(param1);
                              addr185:
                              while(true)
                              {
                                 §§push(§§pop().§6!G§(§§pop()));
                                 addr186:
                                 while(true)
                                 {
                                    if(§§pop() != 100)
                                    {
                                       _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                       while(true)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             continue;
                                          }
                                          continue loop11;
                                       }
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                       addr192:
                                       while(true)
                                       {
                                          _loc6_.MovieClip_Feather.mouseEnabled = false;
                                       }
                                    }
                                 }
                              }
                              continue loop11;
                           }
                           addr126:
                           while(true)
                           {
                              addr121:
                              while(true)
                              {
                                 _loc6_.isOpen = param2;
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr211:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     if(!(_loc9_ && this))
                     {
                        if(_loc9_ && param2)
                        {
                           §§goto(addr214);
                        }
                        §§goto(addr121);
                     }
                  }
                  addr132:
               }
               addr180:
               while(true)
               {
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr188);
      }
      
      protected function §'C§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc6_)
         {
            if(this.§,!C§.length == 1)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:* = Number(0);
            if(!(_loc6_ && this))
            {
               this.§`Z§ = new Dictionary();
            }
            var _loc4_:int = 0;
            loop0:
            while(_loc4_ < this.§,!C§.length)
            {
               _loc1_ = §69§.§ 0§("Button_Dot");
               _loc2_ = new _loc1_();
               if(_loc5_ || _loc3_)
               {
                  _loc2_.x = AngryBirdsFP11.§6j§ / 2 + _loc3_ - this.§,!C§.length * _loc2_.width / 2;
                  loop1:
                  while(true)
                  {
                     _loc2_.y = (§`!v§.getItemByName("Button_Next") as §9"8§).y - _loc2_.height / 2;
                     while(true)
                     {
                        if(_loc4_ == this.§8!"§)
                        {
                           continue loop1;
                        }
                        _loc2_.gotoAndStop("UnSelected");
                        loop13:
                        while(_loc5_ || _loc3_)
                        {
                           do
                           {
                              _loc2_.buttonMode = true;
                              loop15:
                              while(true)
                              {
                                 if(_loc6_ && _loc1_)
                                 {
                                    continue loop13;
                                 }
                                 addr86:
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc4_++;
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§goto(addr73);
                                       }
                                       else
                                       {
                                          loop11:
                                          while(_loc5_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc6_)
                                             {
                                                §§push(Number(§§pop() + _loc2_.width));
                                             }
                                             _loc3_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr136:
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!X§);
                                                            continue loop13;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr240:
                                                      while(true)
                                                      {
                                                         (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = _loc2_.x;
                                                         addr224:
                                                         while(true)
                                                         {
                                                            (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).y = _loc2_.y - _loc2_.height;
                                                            break loop11;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr158:
                                                addr186:
                                                while(_loc5_ || this)
                                                {
                                                   this.§82§.push(_loc2_);
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                   addr166:
                                                   while(true)
                                                   {
                                                      this.§7"%§.mClip.addChild(_loc2_);
                                                      break loop12;
                                                   }
                                                }
                                                §§goto(addr86);
                                             }
                                             while(_loc5_ || _loc1_)
                                             {
                                                this.§`Z§[_loc2_] = _loc4_;
                                                §§goto(addr158);
                                             }
                                             §§goto(addr224);
                                          }
                                          while(true)
                                          {
                                             this.§ "3§(_loc4_);
                                             break loop15;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr120);
                              }
                              while(true)
                              {
                                 §§goto(addr166);
                              }
                              continue loop13;
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr186);
            }
            if(!_loc6_)
            {
               §§push(this.§,!C§.length * _loc2_.width);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() / 2);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(_loc5_ || this)
                     {
                     }
                     §§goto(addr316);
                  }
                  §§push(Number(§§pop()));
               }
               addr316:
               _loc3_ = §§pop();
               if(_loc5_ || _loc1_)
               {
                  (§`!v§.getItemByName("Button_Next") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
                  loop17:
                  while(true)
                  {
                     (§`!v§.getItemByName("Button_Prev") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
                     loop18:
                     while(true)
                     {
                        (§`!v§.getItemByName("Button_Next") as §9"8§).x = (§`!v§.getItemByName("Button_Next") as §9"8§).x + (_loc3_ + 10);
                        do
                        {
                           if(_loc5_ || _loc1_)
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              continue loop17;
                           }
                           continue loop18;
                        }
                        while((§`!v§.getItemByName("Button_Prev") as §9"8§).x = (§`!v§.getItemByName("Button_Prev") as §9"8§).x - (_loc3_ + 10), !_loc5_);
                        
                        §§goto(addr348);
                     }
                  }
               }
               §§goto(addr348);
            }
            addr348:
            return;
         }
         addr31:
      }
      
      protected function §="7§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§<E§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  addr43:
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§<E§);
                  }
                  var _loc1_:int = 0;
                  while(true)
                  {
                     if(_loc1_ >= this.§82§.length)
                     {
                        loop1:
                        while(!(_loc3_ && _loc3_))
                        {
                           this.§82§ = [];
                           loop2:
                           while(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§9z§);
                                 if(_loc2_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§,!C§ = [];
                                       }
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             return;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       addr89:
                                       this.§9z§.mClip.removeChildAt(0);
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          while(_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§82§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!X§);
                                                break loop2;
                                             }
                                             §§pop().mClip.removeChild(this.§82§[_loc1_]);
                                          }
                                          _loc1_++;
                                       }
                                       else
                                       {
                                          addr126:
                                       }
                                       continue;
                                       break loop1;
                                    }
                                    break;
                                 }
                                 §§goto(addr89);
                              }
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.§7"%§);
                              if(_loc2_)
                              {
                                 §§goto(addr134);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!§§pop().mClip.contains(this.§82§[_loc1_]))
                                    {
                                       break loop6;
                                    }
                                 }
                                 addr147:
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr126);
                        }
                        continue;
                     }
                     §§push(this.§7"%§);
                     §§goto(addr147);
                  }
               }
               §§goto(addr43);
            }
            §§pop().clean();
         }
         §§goto(addr43);
      }
      
      protected function §[!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§[">§)
            {
               if(_loc3_)
               {
                  addr49:
                  this.§-r§(this.§`Z§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §=!B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§[">§)
            {
               if(_loc2_)
               {
                  mNextState = §1!i§.§%!Q§;
               }
            }
         }
      }
      
      protected function §-r§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§[">§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() > this.§,!C§.length - 1)
                  {
                     loop11:
                     while(true)
                     {
                        §§push(this.§,!C§);
                        if(_loc7_)
                        {
                           §§push(§§pop().length - 1);
                           if(_loc7_ || param2)
                           {
                              addr150:
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr151:
                                 loop10:
                                 while(true)
                                 {
                                    addr106:
                                    loop4:
                                    while(true)
                                    {
                                       this.§8!"§ = param1;
                                       loop5:
                                       while(true)
                                       {
                                          addr78:
                                          addr118:
                                          while(true)
                                          {
                                             §§push(this.§8!"§);
                                             addr81:
                                             while(_loc7_)
                                             {
                                                continue loop1;
                                             }
                                             addr120:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr120);
                                             }
                                             addr38:
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§-!w§ = this.§<!6§ - 1;
                                                      addr67:
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc6_ && param2)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(true)
                                                         {
                                                            addr156:
                                                            §§push(this.§,!C§);
                                                            break loop4;
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      else
                                                      {
                                                         addr93:
                                                         if(_loc6_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            this.§-!w§ = this.§<!6§ + 1;
                                                            break loop5;
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                   }
                                                   break loop5;
                                                }
                                                §§goto(addr67);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop11;
                                       }
                                       §§goto(addr156);
                                    }
                                    addr158:
                                    §§goto(addr168);
                                 }
                              }
                              addr150:
                           }
                           else
                           {
                              §§goto(addr168);
                           }
                           var _loc4_:Number = §§pop().§,!C§[param1].x + this.§9z§.x;
                           var _loc5_:*;
                           §§push(_loc5_ = Number(Math.abs(_loc4_)));
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() / 1024);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       addr237:
                                       if(_loc7_)
                                       {
                                          addr228:
                                          §§push(§#!4§);
                                       }
                                       _loc5_ = Number(§§pop());
                                       if(!_loc6_)
                                       {
                                          addr341:
                                          if(this.§ ![§ != null)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                addr362:
                                                this.§ ![§.stop();
                                             }
                                             addr363:
                                          }
                                          if(param2)
                                          {
                                             addr327:
                                             if(_loc7_ || param1)
                                             {
                                                this.§9z§.x = _loc3_;
                                                addr338:
                                                §§push(param2);
                                                if(_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr273:
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            this.§7K§();
                                                            addr289:
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr338);
                                                            }
                                                            addr242:
                                                            return;
                                                            addr291:
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§push(this.§ ![§);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§pop().onComplete = this.§7K§;
                                                         addr305:
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr341);
                                                      addr323:
                                                   }
                                                   §§push(this.§ ![§);
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§pop().play();
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr363);
                                          }
                                          this.§ ![§ = §7I§.§[E§.§ ";§(this.§9z§,{"x":_loc3_},null,_loc5_,§7I§.§7L§);
                                          §§goto(addr323);
                                       }
                                       §§goto(addr291);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ && param1)
                                    {
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr237);
                        }
                        else
                        {
                           §§goto(addr158);
                        }
                     }
                  }
                  else
                  {
                     §§push(param1);
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr118);
                           §§push(0);
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                        §§goto(addr151);
                     }
                     addr115:
                  }
                  §§goto(addr150);
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function §7K§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§82§.length)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr101:
                     if(!_loc2_)
                     {
                        addr80:
                        _loc1_++;
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
                     §§goto(addr135);
                  }
                  addr158:
               }
               else
               {
                  addr139:
                  if(_loc1_ != this.§8!"§)
                  {
                     §§push(this.§82§);
                     if(_loc3_ || this)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr101);
                        }
                        addr155:
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        §§goto(addr158);
                     }
                     addr154:
                     §§goto(addr155);
                     §§push(_loc1_);
                  }
               }
               §§goto(addr154);
               §§push(this.§82§);
            }
            §§goto(addr139);
         }
      }
      
      protected function § "3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).§<!g§.text = §`!r§.§]-§(§`!r§.§^0§).pageIndexes[param1];
         }
      }
   }
}
