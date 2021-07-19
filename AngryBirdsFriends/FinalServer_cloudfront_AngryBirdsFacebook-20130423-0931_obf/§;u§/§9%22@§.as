package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4!w§;
   import §%i§.§4"9§;
   import §%i§.§7!t§;
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §9"@§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const § !p§:Number = 0.5;
      
      public static var §8!]§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            STATE_NAME = "LevelSelectionState";
         }
         while(true)
         {
            § !p§ = 0.5;
            while(!(_loc1_ && _loc1_))
            {
               §8!]§ = "";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §8!w§:Boolean = false;
      
      protected var §4W§:§0!Y§;
      
      protected var § !n§:§0!Y§;
      
      protected var §3^§:MovieClip;
      
      protected var § "9§:Array;
      
      protected var §>§:Array;
      
      protected var §3!7§:int = 0;
      
      protected var §0!y§:int = 0;
      
      protected var §6"B§:int = 0;
      
      protected var §?"[§:Boolean = false;
      
      protected var §&!i§:§6!K§ = null;
      
      protected var §["=§:Dictionary;
      
      protected var §,"'§:Array;
      
      protected var §<!&§:Array;
      
      protected var §;!@§:§3"K§;
      
      protected var §6!1§:Number = 0;
      
      public function §9"@§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
            do
            {
               this.initView();
            }
            while(_loc2_ && _loc2_);
            
         }
         while(true)
         {
            §§push(this.§ !n§);
            if(_loc1_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(_loc1_)
                  {
                     this.§>§ = [];
                  }
                  do
                  {
                     this.§ "9§ = [];
                  }
                  while(_loc2_ && this);
                  
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  continue;
               }
               §§push(this.§ !n§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §2"@§ = new §`_§(this);
         }
         loop0:
         while(true)
         {
            §2"@§.init(§ "<§.§%I§.Views.View_LevelSelection[0]);
            do
            {
               this.§ !n§ = §2"@§.getItemByName("Container_LevelRepeaters") as §0!Y§;
               continue loop0;
            }
            while(_loc1_ && _loc1_);
            
            return;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§?l§.§'h§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§?l§.§'h§);
                     if(_loc2_ && _loc2_)
                     {
                        break;
                     }
                     §§pop().§#"[§(false);
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
                              if(this.§>§.length == 1)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                                 continue;
                              }
                              addr111:
                              (§2"@§.getItemByName("Button_Prev") as §7"0§).setVisibility(true);
                              loop11:
                              while(true)
                              {
                                 (§2"@§.getItemByName("Button_Next") as §7"0§).setVisibility(true);
                                 loop12:
                                 while(true)
                                 {
                                    (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).setVisibility(true);
                                    loop13:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          this.§6!1§ = this.§ !n§.x;
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(§2"@§.stage)
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §2"@§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !s§);
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §§goto(addr24);
                                                         }
                                                         addr138:
                                                         while(!_loc2_)
                                                         {
                                                            (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).setVisibility(false);
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(_loc1_)
                                                      {
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop12;
                                                }
                                                addr24:
                                             }
                                             continue loop11;
                                             return;
                                          }
                                          continue loop12;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      protected function § !s§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>§.length > 1)
            {
               loop0:
               for(; param1.keyCode != Keyboard.LEFT; while(true)
               {
                  continue loop0;
               })
               {
                  if(param1.keyCode == Keyboard.RIGHT)
                  {
                     if(_loc3_ || param1)
                     {
                        if(!_loc2_)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           this.gotoNextPage();
                           addr70:
                           if(_loc3_ || this)
                           {
                              §§goto(addr20);
                           }
                           continue;
                        }
                        addr86:
                        if(!_loc3_)
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr70);
                  }
                  addr20:
                  return;
               }
               this.gotoPrevPage();
               §§goto(addr86);
            }
            addr94:
            return;
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§5!>§();
                     loop1:
                     while(!(_loc4_ && _loc3_))
                     {
                        while(true)
                        {
                           this.§'![§();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(mNextState.length <= 0)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       return §+d§.STATE_STATUS_COMPLETED;
                                    }
                                    addr105:
                                    return _loc2_;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           return §+d§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr98);
      }
      
      protected function §5!>§() : void
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
            while(!_loc3_)
            {
               §§push(this.§ "9§);
               if(!_loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        loop2:
                        while(_loc4_ || _loc2_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(this.§6"B§);
                              if(_loc4_)
                              {
                                 §§push(this.§3!7§);
                                 if(_loc4_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop3:
                                       for(; _loc4_; if(!(_loc4_ || this))
                                       {
                                          continue;
                                       },§§goto(addr112))
                                       {
                                          §§push(this.§3!7§);
                                          loop14:
                                          while(_loc4_ || _loc1_)
                                          {
                                             §§push(this.§6"B§);
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§push(this.§3!7§);
                                                   if(_loc3_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.§6"B§);
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         this.§0!y§ = this.§6"B§;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§,"'§);
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§push(this.§0!y§);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!§§pop()[§§pop()])
                                                                        {
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              this.§6!1§ = this.§ !n§.x;
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_ && _loc1_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.§;!@§.§'W§(this.§,"'§[this.§0!y§].red,this.§,"'§[this.§0!y§].green,this.§,"'§[this.§0!y§].blue);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§goto(addr139);
                                                                                          }
                                                                                          addr112:
                                                                                          continue loop4;
                                                                                          addr98:
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                    addr73:
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          _loc2_++;
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                addr501:
                                                                                                if(_loc2_ >= this.§ "9§.length)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§6"B§ = _loc1_;
                                                                                                      addr508:
                                                                                                      if(!(_loc4_ || _loc1_))
                                                                                                      {
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(this.§ "9§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc1_))
                                                                                                                  {
                                                                                                                     break loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr488:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                               }
                                                                                                               addr531:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                               §§goto(addr535);
                                                                                                            }
                                                                                                         }
                                                                                                         addr480:
                                                                                                      }
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr539:
                                                                                                         addr540:
                                                                                                         §§push(-this.§6!1§);
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr544:
                                                                                                               §§push(this.§>§);
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  addr552:
                                                                                                                  §§push(§§pop() < §§pop()[_loc1_].x);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr566:
                                                                                                                     addr567:
                                                                                                                     addr568:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop23;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr569:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr565:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr579:
                                                                                                                  §§push(§§pop() >= §§pop()[_loc1_].x);
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr590:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr565);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr591:
                                                                                                                  §§pop();
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               addr578:
                                                                                                            }
                                                                                                            addr576:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr578);
                                                                                                            }
                                                                                                            §§goto(addr539);
                                                                                                         }
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§ !n§);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(-§§pop().x);
                                                                                                               loop18:
                                                                                                               while(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(this.§>§);
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        addr436:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                           loop21:
                                                                                                                           while(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr456:
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(this.§6!1§);
                                                                                                                                       if(_loc4_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                       addr386:
                                                                                                                                       continue loop19;
                                                                                                                                       if(_loc3_ && _loc1_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr400:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                break loop14;
                                                                                                                                             }
                                                                                                                                             addr295:
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             break loop1;
                                                                                                                                             addr402:
                                                                                                                                             addr411:
                                                                                                                                          }
                                                                                                                                          _loc1_++;
                                                                                                                                          break loop3;
                                                                                                                                       }
                                                                                                                                       §§goto(addr566);
                                                                                                                                    }
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
                                                                                                                                       addr476:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.updatePageNumber(_loc1_);
                                                                                                                                          addr463:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr498:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr400);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr590);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr591);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr539);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr540);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr574:
                                                                                                               §§push(-§§pop().x);
                                                                                                            }
                                                                                                            §§goto(addr576);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr505:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.§ "9§);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                             §§goto(addr498);
                                                                                          }
                                                                                          addr535:
                                                                                       }
                                                                                       §§goto(addr456);
                                                                                    }
                                                                                    addr330:
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr233:
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr400);
                                                                                                }
                                                                                                §§goto(addr505);
                                                                                             }
                                                                                             §§goto(addr463);
                                                                                          }
                                                                                          §§goto(addr402);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(_loc4_ || _loc2_)
                                                                                          {
                                                                                             this.§0!y§ = this.§6"B§ + 1;
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
                                                                                                break loop2;
                                                                                             }
                                                                                             while(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                §§push(this.§ "9§);
                                                                                                break loop6;
                                                                                             }
                                                                                             §§goto(addr569);
                                                                                          }
                                                                                          addr203:
                                                                                       }
                                                                                       addr139:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§0!y§ = this.§6"B§ - 1;
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr567);
                                                                                 §§goto(addr216);
                                                                              }
                                                                              §§goto(addr98);
                                                                           }
                                                                           addr26:
                                                                        }
                                                                        §§goto(addr73);
                                                                     }
                                                                     addr339:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                        _loc2_++;
                                                                        §§goto(addr330);
                                                                        addr344:
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                  addr279:
                                                                  §§goto(addr292);
                                                               }
                                                               break;
                                                            }
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§goto(addr279);
                                                               §§push(_loc1_);
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr339);
                                                               §§push(_loc2_);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr501);
                                                }
                                                §§goto(addr203);
                                             }
                                             continue loop1;
                                          }
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             _loc2_ = §§pop();
                                             §§goto(addr411);
                                          }
                                          §§goto(addr568);
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr26);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr508);
                        }
                        this.updatePageNumber(_loc1_);
                        §§goto(addr233);
                     }
                     else
                     {
                        §§push(this.§ !n§);
                     }
                     §§goto(addr574);
                  }
                  §§goto(addr501);
               }
               if(§§pop() >= §§pop().length)
               {
                  if(_loc4_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc4_ || _loc1_)
                        {
                           this.§6"B§ = _loc1_;
                           §§goto(addr320);
                        }
                        §§goto(addr476);
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr292);
               }
               §§goto(addr336);
               §§push(this.§ "9§);
            }
            while(true)
            {
               §§goto(addr299);
               §§goto(addr295);
            }
         }
      }
      
      protected function §'![§() : void
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
               if(§§pop() >= this.§>§.length)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(1000);
                           addr203:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop21:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc2_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(Math.abs(this.§>§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§>§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§>§);
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§push(_loc1_);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop()[§§pop()].mClip.alpha < 1)
                                                                     {
                                                                        addr143:
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§>§);
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ && _loc3_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              addr58:
                                                                              _loc1_++;
                                                                              while(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              continue loop0;
                                                                              addr60:
                                                                           }
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(Math.abs(_loc2_)));
                                                                              addr228:
                                                                              addr249:
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_ || _loc1_);
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 break loop6;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr58);
                                                                           §§goto(addr60);
                                                                        }
                                                                        addr143:
                                                                        addr109:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§>§);
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr138:
                                                                        (§§pop()[§§pop()] as §!>§).setEnabled(false);
                                                                        §§goto(addr143);
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr138);
                                                                  §§push(_loc1_);
                                                               }
                                                               continue loop13;
                                                            }
                                                            addr110:
                                                         }
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(§§pop() > 1000)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop21;
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                    }
                                    addr211:
                                 }
                                 §§goto(addr228);
                              }
                           }
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr58);
               }
               else
               {
                  §§push(Number(this.§ !n§.x + this.§>§[_loc1_].x));
               }
               §§goto(addr249);
            }
            §§goto(addr203);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§2"@§.stage)
            {
               while(true)
               {
                  §2"@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !s§);
                  addr112:
                  while(true)
                  {
                  }
                  addr94:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  this.§6!x§();
                  loop4:
                  do
                  {
                     (§2"@§.getItemByName("Button_Back") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr62:
                     addr87:
                     while(!(_loc1_ && _loc2_))
                     {
                        LevelManager.§&"V§ = null;
                        if(_loc2_ || _loc2_)
                        {
                           continue loop4;
                        }
                     }
                     while(_loc2_ || _loc1_)
                     {
                        §§goto(addr94);
                        §§goto(addr62);
                     }
                     §§goto(addr112);
                  }
                  while(_loc1_ && _loc1_);
                  
                  return;
                  addr83:
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr87);
               §§goto(addr112);
            }
         }
         §§goto(addr83);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§&!i§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  addr83:
                  while(true)
                  {
                     §§push(this.§&!i§);
                     addr85:
                     while(true)
                     {
                        §§pop().stop();
                        loop3:
                        while(true)
                        {
                           this.§&!i§ = null;
                           addr70:
                           addr72:
                           while(!_loc1_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  super.cleanup();
                  if(!(_loc2_ && this))
                  {
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr70);
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr83);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr211:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(param3 is §4!w§);
                           if(_loc6_ || param2)
                           {
                              if(!(_loc6_ || param3))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       addr204:
                                       addr204:
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr205:
                                          loop11:
                                          while(true)
                                          {
                                             §§push((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && param3)
                                                         {
                                                            continue loop11;
                                                         }
                                                         mNextState = StateCutScene.STATE_NAME;
                                                         if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               LevelManager.§,!m§(LevelManager.§["S§(param2.toLowerCase()));
                                                               continue loop10;
                                                            }
                                                            addr139:
                                                         }
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop6;
                                                addr111:
                                             }
                                             addr131:
                                             while(true)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr139);
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 var _loc4_:* = param2;
                                 if(_loc6_)
                                 {
                                    §§push("BACK");
                                    if(_loc6_ || this)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                   addr306:
                                                }
                                             }
                                             else
                                             {
                                                addr298:
                                                §§push(3);
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§goto(addr306);
                                                }
                                             }
                                             §§goto(addr311);
                                          }
                                          §§push("NEXT");
                                          if(!_loc5_)
                                          {
                                             §§goto(addr242);
                                          }
                                          §§goto(addr265);
                                          §§goto(addr298);
                                       }
                                       §§goto(addr273);
                                    }
                                    addr242:
                                    §§push(_loc4_);
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(1);
                                             if(!(_loc6_ || param3))
                                             {
                                                addr294:
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr298);
                                          }
                                          §§goto(addr311);
                                       }
                                       else
                                       {
                                          §§push("PREV");
                                          if(_loc6_)
                                          {
                                             addr265:
                                             §§push(_loc4_);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr273:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr291:
                                                      §§push(2);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                else
                                                {
                                                   §§push("FULLSCREEN_BUTTON");
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr297);
                                          }
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr298);
                                    }
                                    addr297:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr298);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                    addr311:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §@"M§.§3"C§("Menu_Back");
                                          mNextState = §9!V§.STATE_NAME;
                                          if(_loc6_ || param2)
                                          {
                                             break;
                                          }
                                          break;
                                          addr84:
                                       case 1:
                                          this.gotoNextPage();
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                break;
                                             }
                                             §§goto(addr84);
                                          }
                                          break;
                                       case 2:
                                          this.gotoPrevPage();
                                          if(!_loc5_)
                                          {
                                             addr35:
                                             break;
                                          }
                                          break;
                                       case 3:
                                          §@"M§.§3"C§("Menu_Confirm");
                                          AngryBirdsFP11.§>m§.§=-§();
                                          addr41:
                                          if(_loc6_)
                                          {
                                             if(!(_loc6_ || param2))
                                             {
                                                §§goto(addr41);
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr35);
                                          }
                                    }
                                    return;
                                 }
                                 §§goto(addr291);
                              }
                           }
                           §§goto(addr204);
                        }
                     }
                  }
                  §§goto(addr181);
               }
            }
         }
         §§goto(addr205);
      }
      
      protected function gotoNextPage() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §@"M§.§3"C§("Menu_Confirm");
            if(!_loc3_)
            {
               if(!this.§?"[§)
               {
                  if(!_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§3!7§);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        _loc1_.§3!7§ = _loc2_;
                     }
                     if(!(_loc3_ && this))
                     {
                        addr76:
                        this.§+!O§(this.§3!7§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      protected function gotoPrevPage() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §@"M§.§3"C§("Menu_Confirm");
            if(_loc4_ || this)
            {
               if(!this.§?"[§)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§3!7§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || this)
                     {
                        _loc1_.§3!7§ = _loc2_;
                     }
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr100);
            }
            this.§+!O§(this.§3!7§);
         }
         addr100:
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
            this.§,"'§ = [];
            while(true)
            {
               this.§<!&§ = [];
               loop2:
               while(_loc9_ || _loc1_)
               {
                  loop3:
                  do
                  {
                     this.§0!y§ = this.§3!7§;
                     loop4:
                     while(!_loc10_)
                     {
                        addr53:
                        if(_loc9_ || this)
                        {
                           this.§6"B§ = this.§3!7§;
                           if(!_loc10_)
                           {
                              continue loop3;
                           }
                           continue;
                        }
                        addr81:
                        while(true)
                        {
                           this.§3!7§ = LevelManager.§1!m§(LevelManager.§,m§).§4t§;
                           break loop4;
                           §§goto(addr53);
                        }
                     }
                     continue loop2;
                  }
                  while(false);
                  
                  var _loc2_:§3-§ = LevelManager.§1!m§(LevelManager.§,m§);
                  var _loc3_:* = Number(0);
                  loop5:
                  while(_loc3_ < _loc2_.pageIndexes.length)
                  {
                     _loc4_ = _loc2_.§3B§(_loc2_.pageIndexes[_loc3_]);
                     if(_loc9_ || _loc1_)
                     {
                        §§push(this.§,"'§);
                        while(true)
                        {
                           §§pop().push(_loc2_.§-D§(_loc3_));
                           loop7:
                           while(true)
                           {
                              §§push(this.§<!&§);
                              if(!(_loc9_ || _loc3_))
                              {
                                 break;
                              }
                              §§pop().push(_loc2_.§2T§(_loc3_));
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§?;§(_loc4_,_loc3_,_loc1_,_loc2_));
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(_loc3_);
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr132:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!(_loc10_ && _loc1_))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr132);
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr173);
                  }
                  if(!(_loc10_ && _loc3_))
                  {
                     this.§;!@§ = new §3"K§(this.§,"'§[this.§3!7§].red,this.§,"'§[this.§3!7§].green,this.§,"'§[this.§3!7§].blue,1);
                     if(!(_loc10_ && _loc1_))
                     {
                        addr233:
                        §2"@§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§;!@§);
                        if(!(_loc10_ && _loc3_))
                        {
                           addr246:
                           if(_loc2_.§#">§)
                           {
                              if(_loc9_)
                              {
                                 addr251:
                                 _loc6_ = new (_loc5_ = §?q§.§ q§(_loc2_.§#">§))();
                                 if(_loc9_)
                                 {
                                    §2"@§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                    if(!(_loc10_ && this))
                                    {
                                       addr282:
                                       if(_loc2_.§2A§)
                                       {
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr292:
                                             _loc8_ = new (_loc7_ = §?q§.§ q§(_loc2_.§2A§))();
                                             if(_loc9_)
                                             {
                                                §2"@§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                                if(_loc9_ || _loc1_)
                                                {
                                                   addr323:
                                                   this.§'!4§();
                                                   if(_loc9_)
                                                   {
                                                      if(§8!]§ != StateCutScene.STATE_NAME)
                                                      {
                                                         this.§+!O§(this.§3!7§,true);
                                                         if(_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  this.§+!O§(this.§6"B§);
                                                                  addr360:
                                                                  while(!(_loc9_ || _loc3_))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr354:
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr372);
                                                      addr327:
                                                   }
                                                   §§goto(addr354);
                                                }
                                             }
                                             §§goto(addr327);
                                          }
                                       }
                                       else
                                       {
                                          §2"@§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                       }
                                       §§goto(addr323);
                                    }
                                 }
                                 §§goto(addr292);
                              }
                           }
                           else
                           {
                              §2"@§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr233);
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §?;§(param1:Array, param2:int, param3:Number, param4:§3-§) : Number
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
         var _loc6_:Class = §?q§.§ q§(this.§<!&§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc14_)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(!(_loc14_ && param1))
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc15_ || param1))
               {
                  break;
               }
               _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(!(_loc14_ && this))
               {
                  §§push(_loc11_);
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.§#V§);
                                 if(_loc15_)
                                 {
                                    continue loop3;
                                 }
                                 addr213:
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          _loc13_.@MouseUp = _loc10_;
                                          addr217:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr214:
                                    }
                                    while(true)
                                    {
                                       _loc13_.@scaleOnMouseOver = "True";
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                             continue loop5;
                                          }
                                          §§goto(addr214);
                                          addr121:
                                          if(!(_loc14_ && param1))
                                          {
                                             while(false)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                   loop14:
                                                   while(_loc15_)
                                                   {
                                                      addr138:
                                                      if(!(_loc15_ || param3))
                                                      {
                                                         while(_loc15_ || param3)
                                                         {
                                                            if(_loc15_ || param2)
                                                            {
                                                               if(_loc15_ || param1)
                                                               {
                                                                  _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                                  break loop14;
                                                               }
                                                               continue loop4;
                                                            }
                                                            §§goto(addr217);
                                                            §§goto(addr138);
                                                         }
                                                         continue loop5;
                                                         addr153:
                                                      }
                                                      §§push(_loc7_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc7_ = §§pop();
                                                      if(!(_loc15_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             continue loop0;
                                             addr128:
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr213);
                        }
                     }
                  }
               }
               §§goto(addr128);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!(_loc14_ && param1))
         {
            §§push(param1);
            loop17:
            while(true)
            {
               §§push(§§pop().length == 15);
               loop18:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop19:
                     while(true)
                     {
                        §§pop();
                        addr372:
                        while(true)
                        {
                           §§push(param1);
                           addr345:
                           while(true)
                           {
                              §§push(§§pop().length == 10);
                              if(_loc15_)
                              {
                                 break;
                              }
                              continue loop19;
                           }
                           if(!_loc15_)
                           {
                              continue loop18;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(param1);
                        if(!_loc14_)
                        {
                           if(_loc14_)
                           {
                              continue loop17;
                           }
                           if(§§pop().length != 12)
                           {
                              _loc8_.@name = "Repeater_LevelSelection";
                              while(true)
                              {
                                 while(true)
                                 {
                                    _loc8_.@button = this.§<!&§[param2];
                                    loop23:
                                    while(true)
                                    {
                                       _loc8_.@enabled = "True";
                                       loop24:
                                       while(true)
                                       {
                                          addr282:
                                          while(true)
                                          {
                                             _loc8_.@buttonSelectionType = "NO_SELECTION";
                                             continue loop24;
                                          }
                                          continue loop23;
                                       }
                                    }
                                 }
                                 if(!(_loc15_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc14_)
                                 {
                                    if(!(_loc14_ && param3))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr282);
                                       }
                                       var _loc9_:§7!t§;
                                       (_loc9_ = new §7!t§(_loc8_,this.§ !n§,null,null)).§%%§(_loc5_);
                                       if(_loc15_ || param2)
                                       {
                                          _loc9_.setVisibility(true);
                                          _loc9_.x += param3;
                                          addr467:
                                          if(!(_loc14_ && param2))
                                          {
                                             this.§ !n§.§2!I§(_loc9_);
                                             addr452:
                                             if(_loc15_ || param2)
                                             {
                                                this.§>§.push(_loc9_);
                                                addr429:
                                                if(_loc15_ || this)
                                                {
                                                   addr420:
                                                   param3 += AngryBirdsFP11.§'!m§;
                                                   addr416:
                                                   if(_loc15_)
                                                   {
                                                      §§push(param3);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            if(!(_loc15_ || param1))
                                                            {
                                                               §§goto(addr416);
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr416);
                                                      }
                                                      §§goto(addr420);
                                                      addr423:
                                                   }
                                                   §§goto(addr429);
                                                }
                                                §§goto(addr452);
                                             }
                                             §§goto(addr467);
                                          }
                                          addr478:
                                          §§goto(addr478);
                                       }
                                       §§goto(addr423);
                                    }
                                    §§goto(addr357);
                                 }
                                 while(true)
                                 {
                                    _loc8_.@name = "Repeater_LevelSelection12";
                                    §§goto(addr335);
                                 }
                                 addr332:
                              }
                           }
                           §§goto(addr332);
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr354);
                  }
               }
            }
         }
         §§goto(addr372);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
                  loop14:
                  while(true)
                  {
                     _loc6_.gotoAndStop("Open");
                     loop6:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        addr207:
                        addr214:
                        while(!(_loc9_ || param2))
                        {
                           continue loop14;
                        }
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           addr193:
                           while(true)
                           {
                              §§push(param1);
                              addr194:
                              while(true)
                              {
                                 §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                 addr195:
                                 while(true)
                                 {
                                    if(§§pop() != 100)
                                    {
                                       _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                       loop8:
                                       while(true)
                                       {
                                          _loc6_.MovieClip_Feather.mouseEnabled = false;
                                          addr154:
                                          while(!_loc8_)
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc8_ && param1)
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   addr130:
                                                   while(true)
                                                   {
                                                      _loc6_.isOpen = param2;
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr207);
                                             }
                                             continue loop8;
                                          }
                                       }
                                       addr173:
                                    }
                                    _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                    addr201:
                                    _loc6_.MovieClip_Feather.mouseEnabled = false;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     if(!(_loc9_ || param2))
                     {
                        while(true)
                        {
                           §§goto(addr135);
                        }
                        addr179:
                     }
                     §§goto(addr130);
                     addr72:
                     if(!(_loc9_ || param3))
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(!(_loc8_ && this))
                        {
                           §§push(param1);
                           if(!_loc8_)
                           {
                              §§push(§§pop().getStarsForLevel(§§pop()));
                              if(_loc9_ || param3)
                              {
                                 _loc7_ = §§pop();
                                 while(true)
                                 {
                                    if(!(_loc9_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr201);
                                 addr113:
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr154);
                  }
               }
               §§goto(addr179);
            }
         }
         §§goto(addr214);
      }
      
      protected function §'!4§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§>§.length == 1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc6_)
            {
               this.§["=§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§>§.length)
            {
               _loc1_ = §?q§.§ q§("Button_Dot");
               _loc2_ = new _loc1_();
               if(_loc6_)
               {
                  _loc2_.x = AngryBirdsFP11.§'!m§ / 2 + _loc3_ - this.§>§.length * _loc2_.width / 2;
                  while(true)
                  {
                     _loc2_.y = (§2"@§.getItemByName("Button_Next") as §7"0§).y - _loc2_.height / 2;
                     loop2:
                     while(true)
                     {
                        if(_loc4_ != this.§3!7§)
                        {
                           _loc2_.gotoAndStop("UnSelected");
                           loop3:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 continue loop2;
                              }
                              loop4:
                              while(true)
                              {
                                 (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).y = _loc2_.y - _loc2_.height;
                                 loop5:
                                 while(true)
                                 {
                                    this.updatePageNumber(_loc4_);
                                    loop6:
                                    while(true)
                                    {
                                       addr157:
                                       while(true)
                                       {
                                          this.§4W§.mClip.addChild(_loc2_);
                                          loop7:
                                          while(true)
                                          {
                                             this.§["=§[_loc2_] = _loc4_;
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc6_ || _loc1_))
                                                      {
                                                         break;
                                                         addr131:
                                                      }
                                                      this.§ "9§.push(_loc2_);
                                                      while(_loc6_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop() + _loc2_.width));
                                                         }
                                                         _loc3_ = §§pop();
                                                         while(!_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                           §§goto(addr231);
                        }
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr78);
                  }
               }
               while(true)
               {
                  §§goto(addr157);
               }
            }
            if(_loc6_)
            {
               §§push(this.§>§.length * _loc2_.width);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc5_ && _loc2_))
                  {
                     addr289:
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(!_loc5_)
                     {
                        addr296:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        (§2"@§.getItemByName("Button_Next") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
                        while(true)
                        {
                           (§2"@§.getItemByName("Button_Prev") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
                        }
                        addr394:
                     }
                     while(true)
                     {
                        (§2"@§.getItemByName("Button_Next") as §7"0§).x = (§2"@§.getItemByName("Button_Next") as §7"0§).x + (_loc3_ + 10);
                        loop20:
                        for(; _loc6_ || _loc2_; while(true)
                        {
                           (§2"@§.getItemByName("Button_Prev") as §7"0§).x = (§2"@§.getItemByName("Button_Prev") as §7"0§).x - (_loc3_ + 10);
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           continue loop20;
                        },return)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr394);
                        }
                     }
                  }
                  §§goto(addr296);
               }
               §§goto(addr289);
            }
            §§goto(addr371);
         }
         addr37:
      }
      
      protected function §6!x§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;!@§);
            if(_loc3_ || _loc1_)
            {
               if(§§pop())
               {
                  addr44:
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§;!@§);
                  }
                  var _loc1_:int = 0;
                  while(true)
                  {
                     if(_loc1_ >= this.§ "9§.length)
                     {
                        loop1:
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§ "9§ = [];
                           loop2:
                           while(true)
                           {
                              do
                              {
                                 §§push(this.§ !n§);
                                 if(_loc3_ || _loc1_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          return;
                                       }
                                       addr113:
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    §§push(this.§ !n§);
                                 }
                                 §§pop().mClip.removeChildAt(0);
                              }
                              while(!(_loc2_ && _loc1_));
                              
                              addr199:
                              §§push(this.§4W§);
                              if(_loc2_)
                              {
                                 addr147:
                                 while(§§pop().mClip.contains(this.§ "9§[_loc1_]))
                                 {
                                    this.§ "9§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!e§);
                                    §§goto(addr199);
                                 }
                                 while(true)
                                 {
                                    _loc1_++;
                                    break loop1;
                                 }
                                 addr147:
                                 addr183:
                              }
                              §§pop().mClip.removeChild(this.§ "9§[_loc1_]);
                              addr178:
                              while(true)
                              {
                                 §§goto(addr147);
                              }
                           }
                        }
                        while(_loc2_ && _loc3_)
                        {
                           §§goto(addr178);
                           §§goto(addr147);
                        }
                        continue;
                     }
                     §§push(this.§4W§);
                     §§goto(addr183);
                  }
               }
               §§goto(addr44);
            }
            §§pop().clean();
         }
         §§goto(addr44);
      }
      
      protected function §<!e§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§?"[§)
            {
               if(!(_loc3_ && this))
               {
                  addr43:
                  this.§+!O§(this.§["=§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function §"!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§?"[§)
            {
               if(!_loc2_)
               {
                  addr24:
                  mNextState = §9"@§.STATE_NAME;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected function §+!O§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§?"[§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() > this.§>§.length - 1)
                  {
                     if(_loc7_)
                     {
                        if(_loc7_)
                        {
                           §§push(this.§>§);
                           if(_loc7_ || param2)
                           {
                              §§push(§§pop().length - 1);
                              if(!_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 loop9:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr136:
                                    loop12:
                                    while(true)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          this.§3!7§ = param1;
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§3!7§);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(this.§6"B§);
                                                      while(true)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            §§push(this.§3!7§);
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(this.§6"B§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr35:
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              this.§0!y§ = this.§6"B§ - 1;
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr91);
                                                                           }
                                                                           addr141:
                                                                           §§push(this.§>§);
                                                                           break loop1;
                                                                        }
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        §§goto(addr35);
                                                                     }
                                                                     addr106:
                                                                  }
                                                               }
                                                               break loop5;
                                                            }
                                                            continue loop7;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            this.§0!y§ = this.§6"B§ + 1;
                                                         }
                                                         addr91:
                                                         §§goto(addr141);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                continue;
                                             }
                                             §§goto(addr107);
                                          }
                                          addr108:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             §§goto(addr109);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr150:
                              var _loc3_:* = §§pop();
                              var _loc4_:Number = this.§>§[param1].x + this.§ !n§.x;
                              var _loc5_:*;
                              §§push(_loc5_ = Number(Math.abs(_loc4_)));
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() / 1024);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || param2)
                                    {
                                       addr197:
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc7_)
                                          {
                                             addr204:
                                             §§push(§§pop() * § !p§);
                                             if(_loc6_)
                                             {
                                             }
                                             addr208:
                                             _loc5_ = §§pop();
                                             if(_loc7_ || this)
                                             {
                                                §§push(this.§&!i§);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      addr332:
                                                      this.§&!i§.stop();
                                                      addr330:
                                                   }
                                                   addr306:
                                                   if(param2)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         this.§ !n§.x = _loc3_;
                                                      }
                                                      addr318:
                                                      §§push(param2);
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr253:
                                                            if(_loc7_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr318);
                                                               }
                                                               this.§=Z§();
                                                               addr217:
                                                               return;
                                                               addr259:
                                                            }
                                                            addr266:
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr318);
                                                               }
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         §§push(this.§&!i§);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§pop().play();
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc7_ || param2))
                                                                     {
                                                                        addr263:
                                                                        this.§&!i§.onComplete = this.§=Z§;
                                                                        §§goto(addr266);
                                                                        addr293:
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   this.§&!i§ = §0W§.§&"5§.§]!r§(this.§ !n§,{"x":_loc3_},null,_loc5_,§0W§.§'I§);
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr208);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr197);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§goto(addr106);
                        §§push(0);
                     }
                  }
                  §§goto(addr108);
               }
               §§push(-§§pop()[param1].x);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr150);
            }
         }
         §§goto(addr136);
      }
      
      protected function §=Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() >= this.§ "9§.length)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr80:
                              _loc1_++;
                              continue loop0;
                           }
                           addr158:
                           (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
                        }
                        this.updatePageNumber(_loc1_);
                     }
                     else
                     {
                        addr96:
                     }
                     this.§?"[§ = false;
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           break loop1;
                        }
                        LevelManager.§1!m§(LevelManager.§,m§).§4t§ = this.§3!7§;
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr80);
               }
               else
               {
                  addr142:
                  if(_loc1_ == this.§3!7§)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(this.§ "9§);
                     }
                  }
                  else
                  {
                     §§push(this.§ "9§);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr96);
                        }
                        §§goto(addr158);
                     }
                     else
                     {
                        addr154:
                        §§push(_loc1_);
                     }
                     §§pop()[§§pop()].gotoAndStop("Selected");
                  }
                  §§goto(addr158);
               }
            }
            §§goto(addr142);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).§-" §.text = LevelManager.§1!m§(LevelManager.§,m§).pageIndexes[param1];
         }
      }
   }
}
