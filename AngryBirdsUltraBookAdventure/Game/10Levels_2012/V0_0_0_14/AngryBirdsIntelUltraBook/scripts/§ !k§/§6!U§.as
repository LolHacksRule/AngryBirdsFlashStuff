package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import §`M§.§>g§;
   import §`M§.§[A§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!U§ extends §+_§
   {
      
      public static const §3F§:String = "LevelSelectionState";
      
      protected static const §-,§:Number = 0.5;
      
      public static var §2s§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §6!U§)
         {
            §3F§ = "LevelSelectionState";
            do
            {
               §-,§ = 0.5;
               do
               {
                  §2s§ = "";
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      protected var §>!0§:Boolean = false;
      
      protected var §;=§:§9!#§;
      
      protected var §>!2§:§9!#§;
      
      protected var §2!G§:MovieClip;
      
      protected var §]!o§:Array;
      
      protected var §7z§:Array;
      
      protected var §>!F§:int = 0;
      
      protected var §9!;§:int = 0;
      
      protected var §7O§:int = 0;
      
      protected var §%[§:Boolean = false;
      
      protected var §,P§:§4F§ = null;
      
      protected var §?!R§:Dictionary;
      
      protected var §'!,§:Array;
      
      protected var §;A§:Array;
      
      protected var §++§:§9!b§;
      
      protected var §3!E§:Number = 0;
      
      public function §6!U§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
            §§push(this.§>!2§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§7z§ = [];
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§]!o§ = [];
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
               §§push(this.§>!2§);
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
            §`-§ = new § C§(this);
            while(true)
            {
               §`-§.init(dynamic.§[6§.Views.View_LevelSelection[0]);
               loop1:
               while(_loc1_)
               {
                  this.§>!2§ = §`-§.getItemByName("Container_LevelRepeaters") as §9!#§;
                  while(true)
                  {
                     this.§;=§ = §`-§.getItemByName("Container_LevelSelection") as §9!#§;
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
            §§push(§4!]§.§8C§);
            while(true)
            {
               §§pop().clearLevel();
               loop2:
               while(true)
               {
                  §§push(§4!]§.§8C§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().§1B§(false);
                  loop3:
                  while(true)
                  {
                     this.initLevelsRepeater();
                     loop4:
                     while(true)
                     {
                        AngryBirdsFP11.playThemeMusic();
                        loop5:
                        while(true)
                        {
                           if(this.§7z§.length == 1)
                           {
                              continue loop0;
                           }
                           (§`-§.getItemByName("Button_Prev") as §,c§).setVisibility(true);
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 (§`-§.getItemByName("Button_Next") as §,c§).setVisibility(true);
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).setVisibility(true);
                                       loop8:
                                       while(_loc1_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§3!E§ = this.§>!2§.x;
                                             while(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(§`-§.stage)
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
                                                         §`-§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§4R§);
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
                                                (§`-§.getItemByName("Button_Next") as §,c§).setVisibility(false);
                                                while(true)
                                                {
                                                   (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).setVisibility(false);
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
      
      protected function §4R§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§7z§.length > 1)
            {
               loop0:
               while(true)
               {
                  if(param1.keyCode != Keyboard.LEFT)
                  {
                     if(param1.keyCode == Keyboard.RIGHT)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr84);
                              }
                              while(true)
                              {
                                 this.§8!#§();
                              }
                           }
                           else
                           {
                              break;
                              addr78:
                           }
                        }
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     break;
                  }
                  if(_loc3_)
                  {
                     this.§`!A§();
                  }
                  §§goto(addr78);
               }
               return;
            }
            addr84:
            return;
         }
         §§goto(addr58);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §+_§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr111);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr112:
                  }
               }
               while(true)
               {
                  this.§?Y§();
                  loop2:
                  while(true)
                  {
                     this.§=p§();
                     while(mNextState.length > 0)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return §+_§.STATE_STATUS_COMPLETED;
                        }
                        if(_loc3_ || this)
                        {
                           continue loop2;
                        }
                     }
                     addr31:
                     return §+_§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr111);
         }
         addr111:
         return _loc2_;
      }
      
      protected function §?Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(_loc4_ || this)
               {
                  §§push(this.§]!o§);
                  if(_loc4_ || this)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§7O§);
                              loop1:
                              for(; !_loc3_; if(!(_loc4_ || this))
                              {
                                 continue;
                              },§§goto(addr134))
                              {
                                 if(_loc4_ || this)
                                 {
                                    §§push(this.§>!F§);
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§>!F§);
                                             addr217:
                                             loop45:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this.§7O§);
                                                   loop46:
                                                   while(§§pop() <= §§pop())
                                                   {
                                                      §§push(this.§>!F§);
                                                      if(_loc4_ || this)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(this.§7O§);
                                                      continue loop45;
                                                      if(_loc3_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         addr84:
                                                         loop4:
                                                         for(; _loc4_ || _loc1_; §§goto(addr84))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§++§.§?!u§(this.§'!,§[this.§9!;§].red,this.§'!,§[this.§9!;§].green,this.§'!,§[this.§9!;§].blue);
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§3!E§ = this.§>!2§.x;
                                                                                          if(_loc3_ && _loc1_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!(_loc4_ || _loc3_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          addr322:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.§]!o§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc3_ && this)
                                                                                                   {
                                                                                                      addr343:
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                            addr355:
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               _loc2_++;
                                                                                                               addr327:
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  addr300:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  addr300:
                                                                                                               }
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr481:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§]!o§);
                                                                                                                        addr483:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop().length)
                                                                                                                           {
                                                                                                                              addr485:
                                                                                                                              this.§7O§ = _loc1_;
                                                                                                                              loop43:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§]!o§);
                                                                                                                                 addr474:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    addr475:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                       addr478:
                                                                                                                                       addr470:
                                                                                                                                       (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.updatePageNumber(_loc1_);
                                                                                                                                          addr457:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop25:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§>!2§);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(-§§pop().x);
                                                                                                                                                loop26:
                                                                                                                                                for(; _loc4_ || this; while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§3!E§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                   }
                                                                                                                                                   if(_loc3_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§7z§);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr390);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr442);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr432);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr533);
                                                                                                                                                },§§goto(addr538))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§7z§);
                                                                                                                                                   loop27:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                               addr445:
                                                                                                                                                               loop29:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr533:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           addr551:
                                                                                                                                                                           addr559:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr560:
                                                                                                                                                                              §§push(this.§3!E§);
                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    break loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              break loop26;
                                                                                                                                                                           }
                                                                                                                                                                           addr390:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§7z§);
                                                                                                                                                                              break loop27;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                           if(!(_loc4_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc4_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr411:
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc2_ = 0;
                                                                                                                                                                                    §§goto(addr300);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr245:
                                                                                                                                                                                 _loc1_++;
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop43;
                                                                                                                                                                              addr409:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr538:
                                                                                                                                                                              while(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop25;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr543:
                                                                                                                                                                                       addr544:
                                                                                                                                                                                       _loc2_ = 0;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                          §§goto(addr543);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 break loop29;
                                                                                                                                                                              }
                                                                                                                                                                              addr538:
                                                                                                                                                                              addr557:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr538);
                                                                                                                                                                           §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr557);
                                                                                                                                                                        }
                                                                                                                                                                        addr533:
                                                                                                                                                                        addr554:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr409);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr559);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr442:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr532:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr554);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr532);
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                                addr423:
                                                                                                                                             }
                                                                                                                                             addr549:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr551);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.§]!o§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr498:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                    addr501:
                                                                                                                                    _loc2_++;
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr497:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr542);
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                   (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
                                                                                                   break loop7;
                                                                                                   addr299:
                                                                                                }
                                                                                                §§goto(addr497);
                                                                                             }
                                                                                             addr340:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr343);
                                                                                                §§push(_loc2_);
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                       addr26:
                                                                                    }
                                                                                    §§goto(addr485);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break loop46;
                                                                                    }
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       this.§9!;§ = this.§7O§ - 1;
                                                                                       while(_loc4_ || _loc1_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       break loop7;
                                                                                       addr160:
                                                                                    }
                                                                                 }
                                                                                 addr146:
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           §§goto(addr160);
                                                                        }
                                                                        this.updatePageNumber(_loc1_);
                                                                        §§goto(addr252);
                                                                     }
                                                                     addr51:
                                                                  }
                                                                  §§goto(addr415);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         this.§9!;§ = this.§7O§;
                                                         while(_loc4_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr51);
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                         §§goto(addr355);
                                                         addr233:
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9!;§ = this.§7O§ + 1;
                                                      §§goto(addr233);
                                                   }
                                                }
                                                §§goto(addr414);
                                             }
                                          }
                                          addr215:
                                       }
                                       §§goto(addr26);
                                    }
                                 }
                                 §§goto(addr543);
                              }
                              while(true)
                              {
                                 §§push(this.§]!o§);
                                 addr304:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(§§pop() >= §§pop().length)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§7O§ = _loc1_;
                                                   §§goto(addr322);
                                                }
                                                §§goto(addr470);
                                             }
                                             §§goto(addr452);
                                          }
                                          §§goto(addr322);
                                       }
                                       else
                                       {
                                          §§push(this.§]!o§);
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr483);
                                 }
                                 §§goto(addr300);
                              }
                           }
                           §§goto(addr544);
                        }
                        §§goto(addr215);
                     }
                     else
                     {
                        §§push(this.§>!2§);
                     }
                     §§goto(addr549);
                  }
                  §§goto(addr304);
               }
               §§goto(addr481);
            }
            §§goto(addr217);
         }
      }
      
      protected function §=p§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§7z§.length)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_ || _loc1_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§7z§);
                              loop3:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 loop4:
                                 while(§§pop()[§§pop()].mClip.alpha >= 1)
                                 {
                                    §§push(this.§7z§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             (§§pop()[§§pop()] as §&W§).setEnabled(true);
                                             while(!(_loc4_ && _loc3_))
                                             {
                                                if(!(_loc3_ || this))
                                                {
                                                   break loop4;
                                                }
                                                if(_loc3_ || _loc1_)
                                                {
                                                   addr48:
                                                   _loc1_++;
                                                   continue loop0;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Number(Math.abs(_loc2_)));
                                                   addr213:
                                                   addr215:
                                                   addr216:
                                                   while(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         continue loop9;
                                                      }
                                                      continue loop9;
                                                   }
                                                   _loc2_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop() > 1000)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(1000);
                                                               addr203:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr204:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                               }
                                                            }
                                                            addr202:
                                                         }
                                                         while(true)
                                                         {
                                                            if(Math.abs(this.§7z§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) <= 0.0001)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(this.§7z§);
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               addr170:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         addr148:
                                                      }
                                                      §§goto(addr204);
                                                      §§goto(addr215);
                                                   }
                                                   addr207:
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                }
                                             }
                                             §§goto(addr48);
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop1;
                                             }
                                             §§goto(addr170);
                                          }
                                          addr140:
                                       }
                                       §§goto(addr169);
                                    }
                                    break loop2;
                                 }
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.§7z§);
                                          break loop2;
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr207);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr202);
                     }
                     (§§pop()[§§pop()] as §&W§).setEnabled(false);
                     §§goto(addr147);
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(Number(this.§>!2§.x + this.§7z§[_loc1_].x));
               }
               §§goto(addr229);
            }
            §§goto(addr203);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§`-§.stage)
            {
               if(!(_loc2_ && this))
               {
                  §`-§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§4R§);
               }
               while(true)
               {
                  addr76:
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     this.§1J§();
                     loop3:
                     while(true)
                     {
                        (§`-§.getItemByName("Button_Back") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              LevelManager.§<5§ = null;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               addr101:
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr76);
               §§goto(addr101);
            }
         }
         §§goto(addr58);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,P§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr86:
                     this.§,P§.stop();
                  }
                  while(true)
                  {
                     this.§,P§ = null;
                     addr66:
                     while(true)
                     {
                     }
                     addr44:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     return;
                     addr61:
                  }
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr44);
               }
               §§goto(addr61);
            }
            §§goto(addr86);
         }
         §§goto(addr66);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push((param3 as §>g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr189:
                                          §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push((param3 as §>g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             addr133:
                                             while(!_loc5_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         LevelManager.§9!d§(LevelManager.§%e§(param2.toLowerCase()));
                                                         continue;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr136:
                                                }
                                                else
                                                {
                                                   var _loc4_:* = param2;
                                                   addr71:
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push("BACK");
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_ || param3)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr230:
                                                                  §§push(0);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr296:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr293:
                                                                  §§push(3);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr296);
                                                                  }
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§push("NEXT");
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            §§goto(addr292);
                                                            §§goto(addr293);
                                                         }
                                                         addr240:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(1);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr296);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr286:
                                                               §§push(2);
                                                               if(!_loc6_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("PREV");
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        §§goto(addr286);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr292:
                                                                     if("FULLSCREEN_BUTTON" === _loc4_)
                                                                     {
                                                                        §§goto(addr293);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(4);
                                                                     }
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         addr301:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §6!H§.playSound("Menu_Back");
                                                               if(_loc6_)
                                                               {
                                                                  mNextState = §?U§.§3F§;
                                                                  break;
                                                                  addr70:
                                                               }
                                                               break;
                                                            case 1:
                                                               this.§8!#§();
                                                               break;
                                                               addr64:
                                                            case 2:
                                                               this.§`!A§();
                                                               addr37:
                                                               break;
                                                               addr58:
                                                            case 3:
                                                               §6!H§.playSound("Menu_Confirm");
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     AngryBirdsFP11.§`!c§.§catch§();
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr70);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr58);
                                                                        }
                                                                        §§goto(addr37);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr64);
                                                               }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§goto(addr230);
                                                   addr71:
                                                }
                                                continue loop10;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             break loop11;
                                          }
                                          addr197:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(param3 is §>g§);
                                       continue loop0;
                                    }
                                    addr182:
                                    addr198:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§goto(addr133);
                                          §§push(this.§%[§);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr71);
                                 }
                              }
                              §§goto(addr182);
                              if(_loc5_ && param3)
                              {
                                 continue;
                              }
                              if(!(_loc5_ && param3))
                              {
                                 §§goto(addr71);
                              }
                              else
                              {
                                 §§goto(addr198);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr71);
                     }
                     addr166:
                  }
                  §§goto(addr197);
               }
            }
         }
         §§goto(addr154);
      }
      
      protected function §8!#§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6!H§.playSound("Menu_Confirm");
            if(_loc3_)
            {
               if(!this.§%[§)
               {
                  if(_loc3_)
                  {
                     addr48:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§>!F§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§>!F§ = _loc2_;
                     }
                     if(_loc3_)
                     {
                        addr70:
                        this.§try§(this.§>!F§);
                     }
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr70);
      }
      
      protected function §`!A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §6!H§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               addr43:
               if(!this.§%[§)
               {
                  if(!_loc4_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§>!F§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§>!F§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        this.§try§(this.§>!F§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(_loc10_)
         {
            this.§'!,§ = [];
            while(true)
            {
               this.§;A§ = [];
               addr75:
               if(!(_loc10_ || _loc1_))
               {
                  continue;
               }
               loop3:
               do
               {
                  this.§9!;§ = this.§>!F§;
                  while(_loc10_)
                  {
                     this.§7O§ = this.§>!F§;
                     if(_loc10_ || _loc3_)
                     {
                        continue loop3;
                     }
                  }
                  addr68:
                  addr87:
                  while(_loc10_ || _loc3_)
                  {
                     §§goto(addr75);
                  }
                  while(true)
                  {
                     this.§>!F§ = LevelManager.§'v§(LevelManager.§;`§).§-+§;
                     §§goto(addr68);
                  }
               }
               while(false);
               
               var _loc2_:§@+§ = LevelManager.§'v§(LevelManager.§;`§);
               var _loc3_:* = Number(0);
               loop5:
               while(_loc3_ < _loc2_.pageIndexes.length)
               {
                  _loc4_ = _loc2_.§=H§(_loc2_.pageIndexes[_loc3_]);
                  if(_loc10_ || _loc3_)
                  {
                     §§push(this.§'!,§);
                     while(true)
                     {
                        §§pop().push(_loc2_.§8=§(_loc3_));
                        loop7:
                        while(true)
                        {
                           §§push(this.§;A§);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§pop().push(_loc2_.§%c§(_loc3_));
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_));
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       loop12:
                                       while(!_loc9_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc10_ || _loc1_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             if(_loc10_ || this)
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc10_ || _loc1_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop10;
                                             }
                                             continue loop11;
                                          }
                                          continue loop5;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr174);
               }
               if(_loc10_)
               {
                  this.§++§ = new §9!b§(this.§'!,§[this.§>!F§].red,this.§'!,§[this.§>!F§].green,this.§'!,§[this.§>!F§].blue,1);
                  if(_loc10_)
                  {
                     addr234:
                     §`-§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§++§);
                     if(!_loc9_)
                     {
                        if(_loc2_.§0l§)
                        {
                           if(_loc9_ && _loc1_)
                           {
                           }
                           addr283:
                           if(_loc2_.§1!S§)
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 addr293:
                                 _loc8_ = new (_loc7_ = §9!N§.§0!k§(_loc2_.§1!S§))();
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §`-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                    if(!_loc9_)
                                    {
                                       addr324:
                                       this.§!!!§();
                                       if(_loc10_ || _loc2_)
                                       {
                                          if(§2s§ != StateCutScene.§3F§)
                                          {
                                             this.§try§(this.§>!F§,true);
                                             if(!_loc9_)
                                             {
                                                if(_loc9_ && _loc3_)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      this.§try§(this.§7O§);
                                                      addr371:
                                                      addr373:
                                                      while(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            §2s§ = "";
                                                            continue loop16;
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                   addr381:
                                                }
                                                return;
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr378);
                                          addr333:
                                       }
                                       §§goto(addr373);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr381);
                              }
                           }
                           else
                           {
                              §`-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                           }
                           §§goto(addr324);
                        }
                        else
                        {
                           §`-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           §§goto(addr283);
                        }
                     }
                     _loc6_ = new (_loc5_ = §9!N§.§0!k§(_loc2_.§0l§))();
                     if(!(_loc9_ && _loc2_))
                     {
                        §`-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                        if(_loc10_)
                        {
                           addr276:
                           §§goto(addr283);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr283);
               }
               §§goto(addr234);
            }
         }
         §§goto(addr87);
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§@+§) : Number
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
         var _loc6_:Class = §9!N§.§0!k§(this.§;A§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc14_ && param1))
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
            if(_loc15_ || param1)
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
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    _loc13_.@MouseUp = _loc10_;
                                    addr240:
                                    while(_loc15_ || param2)
                                    {
                                       while(true)
                                       {
                                       }
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.§2!y§);
                                       addr220:
                                       while(!(_loc14_ && param3))
                                       {
                                          continue loop1;
                                          if(_loc14_ && param1)
                                          {
                                             continue;
                                          }
                                          if(!(_loc14_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc14_ && param3))
                                                {
                                                   addr163:
                                                   if(!(_loc15_ || param2))
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                   }
                                                   else
                                                   {
                                                      while(_loc15_ || param3)
                                                      {
                                                         _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                                         continue loop7;
                                                      }
                                                      §§goto(addr240);
                                                      addr199:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc14_ && param2)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                                addr176:
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                while(!(_loc14_ && param2))
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc15_ || this)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc15_ || param2)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop13;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                                §§goto(addr176);
                                             }
                                             continue loop0;
                                          }
                                          addr252:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc13_.@scaleOnMouseOver = "True";
                                 §§goto(addr199);
                              }
                           }
                        }
                        addr235:
                     }
                     §§goto(addr252);
                  }
               }
            }
            §§goto(addr247);
         }
         _loc8_ = <Repeater/>;
         if(!_loc14_)
         {
            §§push(param1);
            loop17:
            while(true)
            {
               §§push(§§pop().length == 15);
               if(!(_loc14_ && param2))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc14_ && param3))
                           {
                              _loc8_.@name = "Repeater_LevelSelection15";
                              addr350:
                              loop26:
                              while(true)
                              {
                                 loop27:
                                 while(true)
                                 {
                                    _loc8_.@button = this.§;A§[param2];
                                    while(_loc15_)
                                    {
                                       _loc8_.@enabled = "True";
                                       while(_loc15_ || param1)
                                       {
                                          while(true)
                                          {
                                             _loc8_.@buttonSelectionType = "NO_SELECTION";
                                             while(true)
                                             {
                                                if(!_loc14_)
                                                {
                                                   _loc8_.@fromLibrary = "true";
                                                   if(_loc15_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                addr316:
                                                while(true)
                                                {
                                                   if(_loc15_ || param3)
                                                   {
                                                      continue loop27;
                                                   }
                                                   continue loop26;
                                                }
                                             }
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc9_:§[A§;
                                             (_loc9_ = new §[A§(_loc8_,this.§>!2§,null,null)).§@!+§(_loc5_);
                                             if(!(_loc14_ && this))
                                             {
                                                _loc9_.setVisibility(true);
                                                _loc9_.x += param3;
                                                this.§>!2§.addComponent(_loc9_);
                                                addr442:
                                                addr452:
                                                if(!_loc14_)
                                                {
                                                   this.§7z§.push(_loc9_);
                                                   addr434:
                                                   if(!_loc14_)
                                                   {
                                                      addr408:
                                                      §§push(param3);
                                                      if(_loc15_)
                                                      {
                                                         addr407:
                                                         §§push(Number(§§pop() + AngryBirdsFP11.§;!Z§));
                                                      }
                                                      param3 = §§pop();
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§push(param3);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  §§goto(addr407);
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr408);
                                                            addr428:
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr452);
                                                }
                                                addr456:
                                                §§goto(addr456);
                                             }
                                             §§goto(addr428);
                                          }
                                       }
                                    }
                                    continue loop17;
                                 }
                              }
                              addr350:
                           }
                           §§goto(addr350);
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        §§goto(addr316);
                     }
                     addr338:
                  }
               }
               addr364:
               while(true)
               {
                  §§pop();
                  continue loop17;
               }
            }
         }
         §§goto(addr350);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc9_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc8_ && param3))
                  {
                     _loc6_.gotoAndStop("Open");
                  }
                  loop1:
                  while(true)
                  {
                     _loc6_.MovieClip_MEInUse.visible = false;
                     loop2:
                     while(true)
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                        while(true)
                        {
                           §§push(param1);
                           addr184:
                           while(true)
                           {
                              §§push(§§pop().getEagleScoreForLevel(§§pop()));
                              addr185:
                              while(true)
                              {
                                 if(§§pop() == 100)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                       addr191:
                                       while(true)
                                       {
                                          _loc6_.MovieClip_Feather.mouseEnabled = false;
                                          while(!_loc8_)
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                if(_loc9_ || param2)
                                                {
                                                   addr34:
                                                   return _loc6_;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                    addr161:
                                    while(true)
                                    {
                                       _loc6_.MovieClip_Feather.mouseEnabled = false;
                                       addr153:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr161:
                                 }
                                 while(true)
                                 {
                                    addr132:
                                    while(true)
                                    {
                                       _loc6_.isOpen = param2;
                                       addr136:
                                       while(!_loc8_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr153);
                                 }
                              }
                           }
                           addr87:
                           §§push(AngryBirdsFP11.sUserProgress);
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           §§push(param1);
                           if(!(_loc8_ && param2))
                           {
                              §§push(§§pop().getStarsForLevel(§§pop()));
                              if(!(_loc8_ && this))
                              {
                                 _loc7_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc9_ || param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  §§goto(addr145);
               }
               §§goto(addr153);
            }
         }
         §§goto(addr161);
      }
      
      protected function §!!!§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§7z§.length == 1)
            {
               if(!(_loc5_ && _loc1_))
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(_loc6_ || _loc3_)
         {
            this.§?!R§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§7z§.length)
         {
            _loc1_ = §9!N§.§0!k§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc5_)
            {
               _loc2_.x = AngryBirdsFP11.§;!Z§ / 2 + _loc3_ - this.§7z§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§`-§.getItemByName("Button_Next") as §,c§).y - _loc2_.height / 2;
                  while(true)
                  {
                     if(_loc4_ != this.§>!F§)
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        loop3:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§;=§.mClip.addChild(_loc2_);
                                    loop5:
                                    while(true)
                                    {
                                       this.§?!R§[_loc2_] = _loc4_;
                                       loop6:
                                       while(!(_loc5_ && _loc1_))
                                       {
                                          continue loop1;
                                          addr97:
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc5_ && _loc1_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc6_)
                                          {
                                             _loc4_++;
                                             if(!_loc5_)
                                             {
                                                addr77:
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr84:
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_.buttonMode = true;
                                                         addr90:
                                                         while(!(_loc5_ && _loc1_))
                                                         {
                                                            §§goto(addr97);
                                                         }
                                                         continue loop3;
                                                         §§goto(addr84);
                                                      }
                                                      addr86:
                                                   }
                                                   continue loop0;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr86);
                                                         }
                                                         addr135:
                                                      }
                                                      break;
                                                   }
                                                   addr150:
                                                   while(true)
                                                   {
                                                      _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
                                                      continue loop9;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.updatePageNumber(_loc4_);
                                                   break loop6;
                                                }
                                                addr232:
                                             }
                                             §§goto(addr90);
                                          }
                                          while(true)
                                          {
                                             (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).y = _loc2_.y - _loc2_.height;
                                             §§goto(addr232);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr187:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_.gotoAndStop("Selected");
                                    addr251:
                                    while(true)
                                    {
                                       (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = _loc2_.x;
                                       §§goto(addr242);
                                    }
                                 }
                                 addr248:
                              }
                              while(true)
                              {
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr251);
                        }
                     }
                     §§goto(addr248);
                  }
               }
            }
            §§goto(addr135);
         }
         if(_loc6_ || _loc1_)
         {
            §§push(this.§7z§.length * _loc2_.width);
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_ || _loc2_)
                  {
                     addr326:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     (§`-§.getItemByName("Button_Next") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
                     loop18:
                     while(true)
                     {
                        (§`-§.getItemByName("Button_Prev") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
                        addr408:
                        while(true)
                        {
                           (§`-§.getItemByName("Button_Next") as §,c§).x = (§`-§.getItemByName("Button_Next") as §,c§).x + (_loc3_ + 10);
                           while(!(_loc5_ && _loc1_))
                           {
                              if(!_loc5_)
                              {
                                 (§`-§.getItemByName("Button_Prev") as §,c§).x = (§`-§.getItemByName("Button_Prev") as §,c§).x - (_loc3_ + 10);
                                 if(!(_loc5_ && this))
                                 {
                                    return;
                                    addr359:
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop18;
                           }
                        }
                     }
                  }
                  §§goto(addr359);
               }
            }
            §§goto(addr326);
         }
         §§goto(addr408);
      }
      
      protected function §1J§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§++§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  addr39:
                  if(!_loc2_)
                  {
                     §§push(this.§++§);
                  }
                  var _loc1_:int = 0;
                  loop0:
                  while(true)
                  {
                     if(_loc1_ >= this.§]!o§.length)
                     {
                        loop1:
                        while(_loc3_ || _loc2_)
                        {
                           this.§]!o§ = [];
                           loop2:
                           for(; !_loc2_; if(_loc3_ || this)
                           {
                              return;
                           })
                           {
                              do
                              {
                                 §§push(this.§>!2§);
                                 if(_loc3_)
                                 {
                                    if(§§pop().mClip.numChildren <= 0)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          this.§7z§ = [];
                                          continue loop2;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          this.§]!o§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
                                          addr174:
                                          addr117:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.§;=§);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§pop().mClip.removeChild(this.§]!o§[_loc1_]);
                                                break loop1;
                                             }
                                             addr158:
                                             while(true)
                                             {
                                                if(!§§pop().mClip.contains(this.§]!o§[_loc1_]))
                                                {
                                                   break loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             _loc1_++;
                                             break loop2;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§>!2§);
                                    }
                                 }
                                 §§pop().mClip.removeChildAt(0);
                              }
                              while(_loc3_);
                              
                              continue loop1;
                           }
                           while(_loc2_ && _loc2_)
                           {
                              §§goto(addr174);
                              §§goto(addr117);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr117);
                        }
                     }
                     else
                     {
                        §§push(this.§;=§);
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr39);
            }
            §§pop().clean();
         }
         §§goto(addr39);
      }
      
      protected function §#p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§%[§)
            {
               if(!_loc3_)
               {
                  this.§try§(this.§?!R§[param1.target]);
               }
            }
         }
      }
      
      protected function §4!>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§%[§)
            {
               if(_loc2_)
               {
                  mNextState = §6!U§.§3F§;
               }
            }
         }
      }
      
      protected function §try§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§%[§ = true;
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() <= this.§7z§.length - 1)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           loop3:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          loop14:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                addr101:
                                                while(true)
                                                {
                                                   this.§>!F§ = param1;
                                                   addr105:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§>!F§);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(this.§7O§);
                                                                     while(§§pop() <= §§pop())
                                                                     {
                                                                        §§push(this.§>!F§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(this.§7O§);
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           continue;
                                                                           continue;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr94:
                                                                     this.§9!;§ = this.§7O§ + 1;
                                                                     addr150:
                                                                     §§push(this.§7z§);
                                                                     break loop7;
                                                                     addr100:
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue;
                                                         addr84:
                                                      }
                                                      else
                                                      {
                                                         addr135:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§7z§);
                                                         if(_loc7_)
                                                         {
                                                            break loop7;
                                                         }
                                                         §§push(§§pop().length - 1);
                                                         if(_loc6_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                            }
                                                            addr144:
                                                         }
                                                         else
                                                         {
                                                            addr174:
                                                            var _loc3_:Number = §§pop();
                                                            var _loc4_:Number = this.§7z§[param1].x + this.§>!2§.x;
                                                            addr163:
                                                            var _loc5_:*;
                                                            §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() / 1024);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           addr228:
                                                                           addr227:
                                                                           §§push(§§pop() * §-,§);
                                                                           if(!_loc6_)
                                                                           {
                                                                           }
                                                                           addr232:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(this.§,P§);
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    addr356:
                                                                                    this.§,P§.stop();
                                                                                    addr354:
                                                                                 }
                                                                                 addr330:
                                                                                 if(param2)
                                                                                 {
                                                                                    addr331:
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       this.§>!2§.x = _loc3_;
                                                                                       addr256:
                                                                                       addr342:
                                                                                       §§push(param2);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                this.§7g§();
                                                                                             }
                                                                                             addr265:
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                if(_loc7_ && this)
                                                                                                {
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                §§goto(addr241);
                                                                                             }
                                                                                             addr293:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr256);
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             §§push(this.§,P§);
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                §§pop().onComplete = this.§7g§;
                                                                                                §§goto(addr293);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                             addr317:
                                                                                          }
                                                                                          §§push(this.§,P§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§pop().play();
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             addr241:
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 this.§,P§ = §5+§.§^Z§.§=!a§(this.§>!2§,{"x":_loc3_},null,_loc5_,§5+§.§^E§);
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr232);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                   }
                                                   §§push(-§§pop()[param1].x);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       addr123:
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                                 addr121:
                              }
                              §§goto(addr101);
                           }
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr123);
      }
      
      protected function §7g§() : void
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
               if(§§pop() >= this.§]!o§.length)
               {
                  if(!_loc2_)
                  {
                     this.§%[§ = false;
                  }
                  do
                  {
                     LevelManager.§'v§(LevelManager.§;`§).§-+§ = this.§>!F§;
                  }
                  while(!_loc3_);
                  
                  if(!(_loc2_ && this))
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           loop3:
                           while(true)
                           {
                              _loc1_++;
                              addr75:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(this.§]!o§);
                              addr139:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr140:
                                 while(true)
                                 {
                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                 }
                              }
                           }
                           addr137:
                        }
                        while(true)
                        {
                           (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr75);
               }
               else
               {
                  addr134:
                  if(_loc1_ != this.§>!F§)
                  {
                     §§push(this.§]!o§);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr95);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr134);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).§!!2§.text = LevelManager.§'v§(LevelManager.§;`§).pageIndexes[param1];
         }
      }
   }
}
