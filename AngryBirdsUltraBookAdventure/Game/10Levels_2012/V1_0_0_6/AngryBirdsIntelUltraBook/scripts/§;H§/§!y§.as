package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§,D§;
   import §1!E§.§31§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!y§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelSelectionState";
      
      protected static const §"!m§:Number = 0.5;
      
      public static var §9!c§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!y§)
         {
            §"!s§ = "LevelSelectionState";
            do
            {
               §"!m§ = 0.5;
               do
               {
                  §9!c§ = "";
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      protected var §%T§:Boolean = false;
      
      protected var §3!^§:§#?§;
      
      protected var §#O§:§#?§;
      
      protected var §;2§:MovieClip;
      
      protected var §]!s§:Array;
      
      protected var §='§:Array;
      
      protected var §^B§:int = 0;
      
      protected var §9!4§:int = 0;
      
      protected var §2!D§:int = 0;
      
      protected var §^!Q§:Boolean = false;
      
      protected var §'!D§:§!q§ = null;
      
      protected var §-!=§:Dictionary;
      
      protected var §^!u§:Array;
      
      protected var §^!f§:Array;
      
      protected var §4!E§:§^I§;
      
      protected var §8!g§:Number = 0;
      
      public function §!y§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
         if(_loc1_ || _loc1_)
         {
            super.init();
         }
         do
         {
            this.initView();
         }
         while(!(_loc1_ || _loc1_));
         
         loop1:
         while(true)
         {
            §§push(this.§#O§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§='§ = [];
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§]!s§ = [];
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  return;
               }
               §§push(this.§#O§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!m§ = new §4`§(this);
            while(true)
            {
               §&!m§.init(§ !I§.§3!a§.Views.View_LevelSelection[0]);
               loop1:
               while(_loc1_)
               {
                  this.§#O§ = §&!m§.getItemByName("Container_LevelRepeaters") as §#?§;
                  while(true)
                  {
                     this.§3!^§ = §&!m§.getItemByName("Container_LevelSelection") as §#?§;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && _loc1_))
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
         §§goto(addr74);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §§push(§^!c§.§5!Y§);
            while(true)
            {
               §§pop().clearLevel();
               loop2:
               while(true)
               {
                  §§push(§^!c§.§5!Y§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().§@!v§(false);
                  loop3:
                  while(true)
                  {
                     this.initLevelsRepeater();
                     loop4:
                     while(true)
                     {
                        this.playThemeMusic();
                        loop5:
                        while(true)
                        {
                           if(this.§='§.length == 1)
                           {
                              continue loop0;
                           }
                           (§&!m§.getItemByName("Button_Prev") as §==§).setVisibility(true);
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 (§&!m§.getItemByName("Button_Next") as §==§).setVisibility(true);
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).setVisibility(true);
                                       loop8:
                                       while(_loc1_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§8!g§ = this.§#O§.x;
                                             while(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(§&!m§.stage)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §&!m§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   return;
                                                }
                                                continue loop0;
                                             }
                                             addr178:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break loop9;
                                                }
                                                (§&!m§.getItemByName("Button_Next") as §==§).setVisibility(false);
                                                while(true)
                                                {
                                                   (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).setVisibility(false);
                                                }
                                             }
                                             addr138:
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    while(_loc1_)
                                    {
                                       §§goto(addr138);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr147);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      protected function §&x§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§='§.length > 1)
            {
               do
               {
                  if(param1.keyCode != Keyboard.LEFT)
                  {
                     if(param1.keyCode == Keyboard.RIGHT)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              addr76:
                              this.§+&§();
                              continue;
                           }
                           this.§?'§();
                        }
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr76);
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_)
               {
                  addr24:
                  return;
                  addr87:
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     this.§%!i§();
                     loop1:
                     while(true)
                     {
                        this.§#T§();
                        while(true)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              if(mNextState.length <= 0)
                              {
                                 break;
                              }
                              if(_loc3_ || param1)
                              {
                                 continue loop0;
                              }
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    addr88:
                                    break;
                                 }
                                 addr115:
                                 return _loc2_;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        return §,!E§.STATE_STATUS_RUNNING;
                     }
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return §,!E§.STATE_STATUS_COMPLETED;
               }
            }
            §§goto(addr115);
         }
         §§goto(addr88);
      }
      
      protected function §%!i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(_loc4_ || this)
               {
                  if(_loc4_ || this)
                  {
                     §§push(this.§]!s§);
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           loop1:
                           while(!(_loc3_ && _loc1_))
                           {
                              §§push(this.§2!D§);
                              if(_loc4_ || _loc1_)
                              {
                                 loop49:
                                 while(!_loc3_)
                                 {
                                    §§push(this.§^B§);
                                    loop50:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop51:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(this.§^B§);
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(this.§2!D§);
                                                   loop3:
                                                   while(§§pop() <= §§pop())
                                                   {
                                                      §§push(this.§^B§);
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(this.§2!D§);
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue loop50;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         this.§9!4§ = this.§2!D§;
                                                         loop4:
                                                         for(; !(_loc3_ && _loc2_); if(!(_loc4_ || this))
                                                         {
                                                            continue;
                                                         },if(_loc3_)
                                                         {
                                                            continue loop0;
                                                         },if(_loc4_ || this)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               this.§4!E§.§7K§(this.§^!u§[this.§9!4§].red,this.§^!u§[this.§9!4§].green,this.§^!u§[this.§9!4§].blue);
                                                               §§goto(addr130);
                                                            }
                                                            §§goto(addr587);
                                                         },§§goto(addr498))
                                                         {
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^!u§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§push(this.§9!4§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(§§pop()[§§pop()])
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr130:
                                                                                          loop6:
                                                                                          for(; !(_loc3_ && _loc1_); while(true)
                                                                                          {
                                                                                             this.§8!g§ = this.§#O§.x;
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          },return)
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
                                                                                                   addr521:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      addr342:
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         this.updatePageNumber(_loc1_);
                                                                                                         addr308:
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               addr322:
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr445:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop46:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr362:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr364:
                                                                                                                                       §§push(this.§]!s§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop().length)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§2!D§ = _loc1_;
                                                                                                                                                   addr373:
                                                                                                                                                   break loop5;
                                                                                                                                                   §§goto(addr308);
                                                                                                                                                }
                                                                                                                                                addr370:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr383:
                                                                                                                                                this.§]!s§[_loc2_].gotoAndStop("UnSelected");
                                                                                                                                                _loc2_++;
                                                                                                                                                addr376:
                                                                                                                                                addr386:
                                                                                                                                                addr382:
                                                                                                                                             }
                                                                                                                                             continue loop46;
                                                                                                                                          }
                                                                                                                                          addr526:
                                                                                                                                          addr540:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop().length)
                                                                                                                                             {
                                                                                                                                                break loop24;
                                                                                                                                             }
                                                                                                                                             §§push(this.§]!s§);
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr541:
                                                                                                                                             addr544:
                                                                                                                                             addr534:
                                                                                                                                             §§pop()[_loc2_].gotoAndStop("UnSelected");
                                                                                                                                             _loc2_++;
                                                                                                                                             loop38:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr522:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   continue loop38;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr364);
                                                                                                                                       }
                                                                                                                                       addr366:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr526);
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr444:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr322);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§2!D§ = _loc1_;
                                                                                                                     addr531:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr515:
                                                                                                                        §§push(this.§]!s§);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr518:
                                                                                                                           §§pop()[_loc1_].gotoAndStop("Selected");
                                                                                                                           §§goto(addr521);
                                                                                                                        }
                                                                                                                        §§goto(addr540);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr441:
                                                                                                               }
                                                                                                               addr301:
                                                                                                               _loc1_++;
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr445);
                                                                                                         }
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                   }
                                                                                                   addr298:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.updatePageNumber(_loc1_);
                                                                                                   addr498:
                                                                                                   addr576:
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§#O§);
                                                                                                      if(!(_loc4_ || _loc1_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(-§§pop().x);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§='§);
                                                                                                         addr460:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            addr461:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr486:
                                                                                                                                       §§pop();
                                                                                                                                       break loop1;
                                                                                                                                    }
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr585:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr587:
                                                                                                                                                addr558:
                                                                                                                                                §§push(this.§8!g§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   addr559:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§='§);
                                                                                                                                                      addr561:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                            }
                                                                                                                                                            addr564:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               addr581:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr580:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr586:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr568:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   break loop49;
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr586);
                                                                                                                              }
                                                                                                                              addr477:
                                                                                                                           }
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                           break loop23;
                                                                                                                           addr439:
                                                                                                                        }
                                                                                                                        §§goto(addr585);
                                                                                                                     }
                                                                                                                     §§goto(addr568);
                                                                                                                  }
                                                                                                                  addr466:
                                                                                                               }
                                                                                                               §§goto(addr581);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop().x);
                                                                                                      addr578:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr580);
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ || _loc1_))
                                                                                                   {
                                                                                                      continue loop51;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         this.§9!4§ = this.§2!D§ - 1;
                                                                                                         break loop6;
                                                                                                      }
                                                                                                      §§goto(addr376);
                                                                                                   }
                                                                                                }
                                                                                                addr197:
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break loop3;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr26);
                                                                                    }
                                                                                    §§goto(addr541);
                                                                                 }
                                                                                 §§goto(addr518);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           addr356:
                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                           break loop4;
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr356);
                                                                     §§push(_loc1_);
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr522);
                                                               addr571:
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9!4§ = this.§2!D§ + 1;
                                                      §§goto(addr298);
                                                   }
                                                }
                                                addr289:
                                             }
                                             §§goto(addr544);
                                          }
                                       }
                                       §§goto(addr26);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr571);
                                 }
                                 addr265:
                              }
                              §§goto(addr289);
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§8!g§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   addr409:
                                                   §§push(-§§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.§='§);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() > §§pop()[§§pop()].x);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr439);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§goto(addr477);
                                                               }
                                                               §§goto(addr564);
                                                            }
                                                            §§goto(addr461);
                                                         }
                                                         §§goto(addr561);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   §§goto(addr559);
                                                }
                                                §§goto(addr578);
                                             }
                                             §§goto(addr558);
                                          }
                                          §§goto(addr458);
                                       }
                                       §§goto(addr409);
                                    }
                                    §§goto(addr569);
                                 }
                                 §§goto(addr534);
                              }
                              §§goto(addr531);
                              §§goto(addr486);
                           }
                        }
                        else
                        {
                           §§push(this.§#O§);
                        }
                        §§goto(addr576);
                     }
                     §§goto(addr366);
                  }
                  §§goto(addr444);
               }
               §§goto(addr362);
            }
            §§goto(addr265);
         }
      }
      
      protected function §#T§() : void
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
               if(§§pop() >= this.§='§.length)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(this.§='§);
                           addr121:
                           loop2:
                           while(true)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(_loc1_);
                                 loop3:
                                 while(true)
                                 {
                                    (§§pop()[§§pop()] as §&! §).setEnabled(false);
                                    addr134:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             _loc1_++;
                                             addr51:
                                             while(true)
                                             {
                                                if(_loc3_ && _loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop() > 1000)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(1000);
                                                               addr187:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  break loop14;
                                                               }
                                                            }
                                                            addr186:
                                                         }
                                                         while(Math.abs(this.§='§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) <= 0.0001)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§='§);
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc1_);
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop2;
                                                         }
                                                         addr142:
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr166:
                                                            §§push(this.§='§);
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               addr169:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§goto(addr142);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(Math.abs(_loc2_)));
                                                                                 addr219:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr195:
                                                                                 _loc2_ = §§pop();
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr86);
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            addr168:
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 addr129:
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr51);
               }
               else
               {
                  §§push(Number(this.§#O§.x + this.§='§[_loc1_].x));
               }
               §§goto(addr240);
            }
            §§goto(addr187);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§&!m§.stage)
            {
               while(true)
               {
                  §&!m§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
                  addr101:
                  while(true)
                  {
                  }
               }
               addr94:
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr101);
            }
         }
         loop3:
         while(true)
         {
            this.§3!]§();
            while(true)
            {
               if(_loc1_ || this)
               {
                  (§&!m§.getItemByName("Button_Back") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  continue;
               }
               continue loop3;
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'!D§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'!D§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        loop4:
                        while(true)
                        {
                           this.§'!D§ = null;
                           addr60:
                           addr67:
                           while(!(_loc1_ || _loc2_))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  super.cleanup();
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr60);
                  §§goto(addr67);
               }
               return;
               addr55:
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param3 is §,D§);
                           if(_loc5_ || this)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push((param3 as §,D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push((param3 as §,D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr117:
                                                if(_loc5_)
                                                {
                                                   §§push(this.§^!Q§);
                                                }
                                                while(true)
                                                {
                                                   LevelManager.§@3§(LevelManager.§ o§(param2.toLowerCase()));
                                                   do
                                                   {
                                                      mNextState = StateCutScene.§"!s§;
                                                   }
                                                   while(_loc6_);
                                                   
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   var _loc4_:* = param2;
                                                   if(!_loc6_)
                                                   {
                                                      §§push("BACK");
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc6_ && this)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr245:
                                                                  §§push(2);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr248:
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("NEXT");
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr217:
                                                                           §§push(1);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr260);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("PREV");
                                                                        if(_loc5_)
                                                                        {
                                                                           addr234:
                                                                           §§push(_loc4_);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr237:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc6_ && param3))
                                                                                 {
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr252:
                                                                                    §§push(3);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("FULLSCREEN_BUTTON");
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           addr251:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              §§goto(addr252);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr260:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §9'§.playSound("Menu_Back");
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       mNextState = §,!]§.§"!s§;
                                                                                       addr64:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 case 1:
                                                                                    this.§?'§();
                                                                                    break;
                                                                                    addr58:
                                                                                 case 2:
                                                                                    this.§+&§();
                                                                                    addr38:
                                                                                    break;
                                                                                    addr52:
                                                                                 case 3:
                                                                                    §9'§.playSound("Menu_Confirm");
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr64);
                                                                                    }
                                                                              }
                                                                              return;
                                                                              §§push(4);
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                        §§goto(addr251);
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                addr117:
                                             }
                                             §§goto(addr67);
                                          }
                                       }
                                       addr105:
                                       while(_loc5_ || param1)
                                       {
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             §§goto(addr117);
                                          }
                                          §§goto(addr67);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr169);
                                       §§goto(addr105);
                                    }
                                    addr169:
                                    addr168:
                                 }
                                 §§goto(addr67);
                              }
                              addr145:
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              §§goto(addr168);
                           }
                           §§goto(addr99);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function §?'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §9'§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§^!Q§)
               {
                  if(!_loc4_)
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§^B§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§^B§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        addr70:
                        this.§=]§(this.§^B§);
                     }
                  }
                  §§goto(addr70);
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr70);
      }
      
      protected function §+&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §9'§.playSound("Menu_Confirm");
            if(_loc4_ || this)
            {
               §§goto(addr39);
            }
            §§goto(addr54);
         }
         addr39:
         if(!this.§^!Q§)
         {
            if(_loc4_)
            {
               addr54:
               var _loc1_:*;
               §§push((_loc1_ = this).§^B§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  _loc1_.§^B§ = _loc2_;
               }
               if(!_loc4_)
               {
               }
               §§goto(addr80);
            }
            this.§=]§(this.§^B§);
         }
         addr80:
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
         var _loc1_:Number = 0;
         if(_loc9_ || this)
         {
            this.§^!u§ = [];
         }
         while(true)
         {
            this.§^!f§ = [];
            loop1:
            while(true)
            {
               this.§^B§ = LevelManager.§'J§(LevelManager.§>!$§).§ each§;
               loop2:
               while(true)
               {
                  addr56:
                  addr96:
                  while(true)
                  {
                     this.§9!4§ = this.§^B§;
                     addr61:
                     while(!_loc10_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  var _loc2_:§<!#§ = LevelManager.§'J§(LevelManager.§>!$§);
                  var _loc3_:* = Number(0);
                  addr201:
                  if(_loc3_ < _loc2_.pageIndexes.length)
                  {
                     _loc4_ = _loc2_.§^!j§(_loc2_.pageIndexes[_loc3_]);
                     if(!(_loc10_ && _loc2_))
                     {
                        addr196:
                        this.§^!u§.push(_loc2_.§^J§(_loc3_));
                        addr200:
                        §§push(this.§^!f§);
                        if(_loc9_)
                        {
                           §§pop().push(_loc2_.§+>§(_loc3_));
                           addr165:
                           _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
                           addr157:
                           addr164:
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(_loc3_);
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc10_)
                                    {
                                       addr138:
                                       §§push(Number(§§pop()));
                                       if(_loc9_ || this)
                                       {
                                          _loc3_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr155:
                                                if(false)
                                                {
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr138);
                           }
                           addr193:
                           §§goto(addr193);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr155);
                  }
                  if(_loc9_)
                  {
                     this.§4!E§ = new §^I§(this.§^!u§[this.§^B§].red,this.§^!u§[this.§^B§].green,this.§^!u§[this.§^B§].blue,1);
                     if(!_loc10_)
                     {
                        §&!m§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§4!E§);
                        if(_loc9_ || this)
                        {
                           if(_loc2_.§3#§)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 addr256:
                                 _loc6_ = new (_loc5_ = §`!t§.§=J§(_loc2_.§3#§))();
                                 if(_loc9_ || _loc1_)
                                 {
                                    §&!m§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                    if(_loc9_ || _loc3_)
                                    {
                                       addr292:
                                       if(_loc2_.§4x§)
                                       {
                                          if(_loc9_ || _loc1_)
                                          {
                                             addr302:
                                             _loc8_ = new (_loc7_ = §`!t§.§=J§(_loc2_.§4x§))();
                                             if(_loc9_ || _loc2_)
                                             {
                                                §&!m§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                                if(!_loc10_)
                                                {
                                                   addr333:
                                                   this.§&!k§();
                                                   if(_loc9_)
                                                   {
                                                      if(§9!c§ != StateCutScene.§"!s§)
                                                      {
                                                         this.§=]§(this.§^B§,true);
                                                         if(!_loc9_)
                                                         {
                                                            addr368:
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc10_ && _loc1_)
                                                               {
                                                                  addr382:
                                                                  §9!c§ = "";
                                                               }
                                                               addr338:
                                                               return;
                                                               addr377:
                                                            }
                                                            this.§=]§(this.§2!D§);
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                }
                                             }
                                             §§goto(addr377);
                                          }
                                       }
                                       else
                                       {
                                          §&!m§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                       }
                                       §§goto(addr333);
                                       addr285:
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr285);
                              }
                           }
                           else
                           {
                              §&!m§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           }
                        }
                        §§goto(addr292);
                     }
                  }
                  §§goto(addr256);
               }
            }
            if(!(_loc9_ || _loc3_))
            {
               continue;
            }
            this.§2!D§ = this.§^B§;
            if(_loc9_ || this)
            {
               if(false)
               {
                  §§goto(addr56);
               }
               §§goto(addr96);
            }
            §§goto(addr61);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§<!#§) : Number
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
         var _loc6_:Class = §`!t§.§=J§(this.§^!f§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc15_ || param2)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc14_)
               {
                  break;
               }
            }
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc15_ || this)
            {
               §§push(_loc11_);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc15_ || param3)
                  {
                     if(!§§pop())
                     {
                        addr237:
                        while(true)
                        {
                           §§pop();
                           addr238:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§@a§);
                              addr217:
                              while(_loc15_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop1;
                           }
                        }
                        addr237:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 _loc13_.@MouseUp = _loc10_;
                                 addr225:
                                 while(true)
                                 {
                                 }
                              }
                              addr222:
                           }
                           while(true)
                           {
                              _loc13_.@scaleOnMouseOver = "True";
                              loop6:
                              while(_loc15_)
                              {
                                 _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                 loop7:
                                 for(; !(_loc14_ && param2); if(!(_loc15_ || param1))
                                 {
                                    continue;
                                 },§§goto(addr130))
                                 {
                                    §§push(_loc11_);
                                    if(!_loc15_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc15_)
                                    {
                                       if(_loc15_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc14_ && param1))
                                             {
                                                if(_loc15_ || param1)
                                                {
                                                   _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                }
                                                else
                                                {
                                                   §§goto(addr222);
                                                }
                                             }
                                             while(_loc15_ || param3)
                                             {
                                             }
                                             continue loop6;
                                             addr171:
                                          }
                                          do
                                          {
                                             _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      addr112:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr112);
                                             }
                                             if(!_loc14_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr171);
                                          }
                                          while(false);
                                          
                                          continue loop0;
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr238);
                           }
                        }
                        §§goto(addr219);
                     }
                  }
                  §§goto(addr237);
               }
            }
            §§goto(addr225);
         }
         _loc8_ = <Repeater/>;
         if(_loc15_ || param3)
         {
            §§push(param1);
            loop15:
            while(true)
            {
               §§push(§§pop().length == 15);
               addr347:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop15;
                     }
                     addr349:
                  }
                  else
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc15_ || param1)
                           {
                              _loc8_.@name = "Repeater_LevelSelection15";
                           }
                           loop20:
                           while(true)
                           {
                              while(true)
                              {
                                 _loc8_.@button = this.§^!f§[param2];
                                 while(true)
                                 {
                                    _loc8_.@enabled = "True";
                                    loop23:
                                    for(; _loc15_; while(true)
                                    {
                                       _loc8_.@fromLibrary = "true";
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc15_ || this))
                                       {
                                          continue loop23;
                                       }
                                       if(_loc14_)
                                       {
                                          continue loop20;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr273);
                                    },var _loc9_:§31§,(_loc9_ = new §31§(_loc8_,this.§#O§,null,null)).§@K§(_loc5_),if(!(_loc14_ && param1))
                                    {
                                       _loc9_.setVisibility(true);
                                       while(true)
                                       {
                                          _loc9_.x += param3;
                                          addr437:
                                          while(true)
                                          {
                                             this.§#O§.addComponent(_loc9_);
                                          }
                                       }
                                       addr441:
                                    },loop29:
                                    while(true)
                                    {
                                       this.§='§.push(_loc9_);
                                       while(true)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             if(!_loc14_)
                                             {
                                                if(_loc15_)
                                                {
                                                   §§push(param3);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() + AngryBirdsFP11.§3!5§);
                                                      if(!(_loc14_ && param3))
                                                      {
                                                         addr392:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      while(true)
                                                      {
                                                         param3 = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param3);
                                                         if(_loc15_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr392);
                                                }
                                                else
                                                {
                                                   §§goto(addr441);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop29;
                                       }
                                       §§goto(addr437);
                                    })
                                    {
                                       if(_loc15_ || param1)
                                       {
                                          while(true)
                                          {
                                             _loc8_.@buttonSelectionType = "NO_SELECTION";
                                             continue loop23;
                                          }
                                          addr273:
                                       }
                                    }
                                 }
                                 addr308:
                              }
                           }
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        while(!_loc14_)
                        {
                           §§goto(addr308);
                        }
                        continue loop15;
                     }
                     addr330:
                  }
               }
            }
         }
         §§goto(addr277);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc8_)
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
                     if(!_loc9_)
                     {
                        loop2:
                        while(true)
                        {
                           _loc6_.isOpen = param2;
                           addr123:
                           while(_loc8_ || param3)
                           {
                              continue loop0;
                           }
                           loop12:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              addr182:
                              while(true)
                              {
                                 §§push(param1);
                                 addr183:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                    addr184:
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop() == 100)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                                while(true)
                                                {
                                                   _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                   addr166:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         break loop5;
                                                      }
                                                   }
                                                }
                                                addr197:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc6_.gotoAndStop("Open");
                                                }
                                                addr206:
                                             }
                                             while(true)
                                             {
                                                _loc6_.MovieClip_MEInUse.visible = false;
                                                continue loop12;
                                             }
                                          }
                                          addr186:
                                       }
                                       else
                                       {
                                          _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                          loop6:
                                          while(true)
                                          {
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             addr145:
                                             while(true)
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   break loop7;
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr145);
                  }
                  addr137:
               }
               §§goto(addr206);
            }
         }
         §§goto(addr118);
      }
      
      protected function §&!k§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§='§.length == 1)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc5_ || this)
            {
               this.§-!=§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§='§.length)
            {
               _loc1_ = §`!t§.§=J§("Button_Dot");
               _loc2_ = new _loc1_();
               if(!(_loc6_ && this))
               {
                  _loc2_.x = AngryBirdsFP11.§3!5§ / 2 + _loc3_ - this.§='§.length * _loc2_.width / 2;
                  while(true)
                  {
                     _loc2_.y = (§&!m§.getItemByName("Button_Next") as §==§).y - _loc2_.height / 2;
                     loop2:
                     while(true)
                     {
                        if(_loc4_ != this.§^B§)
                        {
                           _loc2_.gotoAndStop("UnSelected");
                           loop3:
                           while(true)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(!(_loc5_ || _loc1_))
                                 {
                                    while(true)
                                    {
                                       this.updatePageNumber(_loc4_);
                                       addr216:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr229:
                                 }
                                 while(true)
                                 {
                                    this.§3!^§.mClip.addChild(_loc2_);
                                    continue loop3;
                                    §§goto(addr216);
                                 }
                              }
                              §§goto(addr216);
                           }
                        }
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr239);
            }
            if(_loc5_ || this)
            {
               §§push(this.§='§.length * _loc2_.width);
               if(!(_loc6_ && _loc1_))
               {
                  §§push(§§pop() / 2);
                  if(_loc5_ || _loc1_)
                  {
                     §§goto(addr323);
                  }
                  §§goto(addr335);
               }
               addr323:
               §§push(§§pop() + _loc2_.width * 1.5);
               if(_loc5_ || _loc1_)
               {
                  addr335:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  (§&!m§.getItemByName("Button_Next") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
                  addr433:
                  while(true)
                  {
                     (§&!m§.getItemByName("Button_Prev") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
                  }
                  addr433:
               }
               loop17:
               while(true)
               {
                  (§&!m§.getItemByName("Button_Next") as §==§).x = (§&!m§.getItemByName("Button_Next") as §==§).x + (_loc3_ + 10);
                  while(_loc5_ || _loc3_)
                  {
                     (§&!m§.getItemByName("Button_Prev") as §==§).x = (§&!m§.getItemByName("Button_Prev") as §==§).x - (_loc3_ + 10);
                     if(_loc5_ || _loc3_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break loop17;
                        }
                        continue loop17;
                     }
                  }
                  §§goto(addr433);
               }
               return;
            }
            §§goto(addr433);
         }
         addr31:
      }
      
      protected function §3!]§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§4!E§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  addr33:
                  if(!_loc3_)
                  {
                     §§push(this.§4!E§);
                  }
                  var _loc1_:int = 0;
                  loop0:
                  while(true)
                  {
                     if(_loc1_ >= this.§]!s§.length)
                     {
                        loop1:
                        while(true)
                        {
                           this.§]!s§ = [];
                           loop2:
                           while(true)
                           {
                              do
                              {
                                 §§push(this.§#O§);
                                 if(_loc2_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          if(!_loc2_)
                                          {
                                             addr91:
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                this.§='§ = [];
                                                return;
                                                addr82:
                                             }
                                             else
                                             {
                                                §§push(this.§3!^§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§pop().mClip.removeChild(this.§]!s§[_loc1_]);
                                                   break;
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§§pop().mClip.contains(this.§]!s§[_loc1_]))
                                                   {
                                                      do
                                                      {
                                                         _loc1_++;
                                                      }
                                                      while(!(_loc2_ || this));
                                                      
                                                      continue loop0;
                                                      addr111:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§]!s§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§!Z§);
                                                      continue loop4;
                                                   }
                                                }
                                                addr168:
                                                addr152:
                                             }
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr82);
                                    }
                                    else
                                    {
                                       addr88:
                                       this.§#O§.mClip.removeChildAt(0);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr88);
                              }
                              while(_loc2_ || _loc1_);
                              
                              §§goto(addr111);
                           }
                        }
                     }
                     else
                     {
                        §§push(this.§3!^§);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr33);
            }
            §§pop().clean();
         }
         §§goto(addr33);
      }
      
      protected function §!Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§^!Q§)
            {
               if(!_loc3_)
               {
                  this.§=]§(this.§-!=§[param1.target]);
               }
            }
         }
      }
      
      protected function §6!V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§^!Q§)
            {
               if(!_loc3_)
               {
                  addr23:
                  mNextState = §!y§.§"!s§;
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      protected function §=]§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§^!Q§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() <= this.§='§.length - 1)
                  {
                     §§push(param1);
                     if(!(_loc7_ && param2))
                     {
                        if(!(_loc7_ && this))
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr130:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr131:
                                       loop9:
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop0;
                                          }
                                          if(_loc7_ && _loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§='§);
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   break loop9;
                                                }
                                                §§push(§§pop().length - 1);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      continue loop0;
                                                   }
                                                   addr172:
                                                }
                                                else
                                                {
                                                   addr209:
                                                   var _loc3_:* = §§pop();
                                                   var _loc4_:Number = this.§='§[param1].x + this.§#O§.x;
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() / 1024);
                                                      if(_loc6_)
                                                      {
                                                         addr233:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  addr248:
                                                                  §§push(§§pop() * §"!m§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr251:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(this.§'!D§);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != null)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'!D§);
                                                                              addr376:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stop();
                                                                                 addr377:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr374:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§'!D§ = §-!,§.§7!j§.§,!`§(this.§#O§,{"x":_loc3_},null,_loc5_,§-!,§.§&!8§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§'!D§);
                                                                                          addr315:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§pop().onComplete = this.§7!T§;
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr322:
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr359:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break loop20;
                                                                                          }
                                                                                          this.§#O§.x = _loc3_;
                                                                                       }
                                                                                       addr363:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr307:
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       this.§7!T§();
                                                                                    }
                                                                                    addr256:
                                                                                    addr289:
                                                                                    return;
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr233);
                                                }
                                             }
                                             addr153:
                                          }
                                       }
                                       addr197:
                                       §§push(-§§pop()[param1].x);
                                       if(_loc6_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 addr129:
                              }
                              addr97:
                              while(true)
                              {
                                 this.§^B§ = param1;
                                 loop5:
                                 while(_loc6_ || param2)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§^B§);
                                          loop13:
                                          while(!(_loc7_ && this))
                                          {
                                             §§push(this.§2!D§);
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§push(this.§^B§);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop13;
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc7_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   this.§9!4§ = this.§2!D§ + 1;
                                                }
                                                if(!(_loc7_ && param1))
                                                {
                                                   break loop11;
                                                }
                                                §§goto(addr129);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr131);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr153);
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function §7!T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= this.§]!s§.length)
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc2_ || this)
                     {
                        this.§^!Q§ = false;
                        while(_loc2_ || _loc3_)
                        {
                           LevelManager.§'J§(LevelManager.§>!$§).§ each§ = this.§^B§;
                           if(!(_loc3_ && _loc1_))
                           {
                              return;
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§]!s§);
                                    addr153:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr154:
                                       while(true)
                                       {
                                          §§pop()[§§pop()].gotoAndStop("Selected");
                                          addr157:
                                          while(true)
                                          {
                                             (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
                                          }
                                       }
                                    }
                                 }
                                 this.updatePageNumber(_loc1_);
                              }
                              while(true)
                              {
                                 _loc1_++;
                                 continue loop5;
                                 §§goto(addr129);
                              }
                              addr129:
                              addr82:
                           }
                           continue loop0;
                        }
                        addr74:
                     }
                     else
                     {
                        addr110:
                        if(_loc2_)
                        {
                           §§goto(addr82);
                        }
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr74);
               }
               else
               {
                  addr148:
                  if(_loc1_ != this.§^B§)
                  {
                     §§push(this.§]!s§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr110);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr153);
                  }
               }
               §§goto(addr151);
            }
            §§goto(addr148);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).§,!F§.text = LevelManager.§'J§(LevelManager.§>!$§).pageIndexes[param1];
         }
      }
   }
}
