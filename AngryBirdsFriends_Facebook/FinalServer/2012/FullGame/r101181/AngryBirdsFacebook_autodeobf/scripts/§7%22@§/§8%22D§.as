package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§+w§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§5!a§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §8"D§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §-!9§:Number = 0.5;
      
      public static var §5;§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            STATE_NAME = "LevelSelectionState";
            while(true)
            {
               §-!9§ = 0.5;
               while(_loc2_)
               {
                  §5;§ = "";
                  if(!(_loc1_ && §8"D§))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      protected var §>"&§:Boolean = false;
      
      protected var §]!d§:§08§;
      
      protected var §4!5§:§08§;
      
      protected var §71§:MovieClip;
      
      protected var §#o§:Array;
      
      protected var §>]§:Array;
      
      protected var §#!L§:int = 0;
      
      protected var §1m§:int = 0;
      
      protected var §`&§:int = 0;
      
      protected var §6!H§:Boolean = false;
      
      protected var §@"0§:§"m§ = null;
      
      protected var §-",§:Dictionary;
      
      protected var §!"E§:Array;
      
      protected var §@H§:Array;
      
      protected var §-9§:§%1§;
      
      protected var final:Number = 0;
      
      public function §8"D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
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
            this.initView();
         }
         while(_loc1_ && this);
         
         while(true)
         {
            §§push(this.§4!5§);
            if(!_loc1_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(!(_loc1_ && this))
                  {
                     this.§>]§ = [];
                  }
                  while(!(_loc1_ && this))
                  {
                     this.§#o§ = [];
                     if(_loc2_ || this)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§push(this.§4!5§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6w§ = new §7!A§(this);
            loop0:
            do
            {
               §6w§.init(§ "A§.§4[§.Views.View_LevelSelection[0]);
               while(true)
               {
                  this.§4!5§ = §6w§.getItemByName("Container_LevelRepeaters") as §08§;
                  while(_loc2_ || _loc2_)
                  {
                     this.§]!d§ = §6w§.getItemByName("Container_LevelSelection") as §08§;
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§#6§.§6!z§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§#6§.§6!z§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§pop().§3H§(false);
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
                              if(this.§>]§.length == 1)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       (§6w§.getItemByName("Button_Prev") as §^!D§).setVisibility(false);
                                    }
                                    addr183:
                                 }
                                 while(true)
                                 {
                                    (§6w§.getItemByName("Button_Next") as §^!D§).setVisibility(false);
                                    addr48:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §6w§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2!N§);
                                       addr62:
                                       if(_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             addr112:
                                             loop9:
                                             while(true)
                                             {
                                                this.final = this.§4!5§.x;
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc1_ || this)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!§6w§.stage)
                                                      {
                                                         addr24:
                                                         return;
                                                      }
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            break loop9;
                                                         }
                                                         §§goto(addr48);
                                                      }
                                                      §§goto(addr62);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         (§6w§.getItemByName("Button_Next") as §^!D§).setVisibility(true);
                                                         break loop10;
                                                      }
                                                      addr134:
                                                   }
                                                }
                                                §§goto(addr112);
                                             }
                                             while(true)
                                             {
                                                (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).setVisibility(false);
                                                continue loop5;
                                                §§goto(addr41);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                break loop11;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 (§6w§.getItemByName("Button_Prev") as §^!D§).setVisibility(true);
                                 §§goto(addr134);
                              }
                              §§goto(addr159);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      protected function §2!N§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§>]§.length > 1)
            {
               do
               {
                  if(param1.keyCode != Keyboard.LEFT)
                  {
                     if(param1.keyCode == Keyboard.RIGHT)
                     {
                        if(_loc2_ || param1)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              addr78:
                              this.§3Z§();
                              continue;
                           }
                           this.§'!S§();
                        }
                        if(!(_loc2_ || this))
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr78);
               }
               while(!(_loc2_ || _loc2_));
               
               addr19:
               return;
            }
         }
         addr93:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§-"7§();
                     addr99:
                     loop1:
                     while(true)
                     {
                        this.§>!p§();
                        while(mNextState.length > 0)
                        {
                           if(!(_loc3_ && param1))
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue;
                              continue;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return §1-§.STATE_STATUS_RUNNING;
                     }
                     if(_loc4_ || _loc2_)
                     {
                        return §1-§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr99);
      }
      
      protected function §-"7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(this.§#o§);
               if(!_loc3_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     loop1:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(this.§`&§);
                           if(_loc4_ || this)
                           {
                              while(true)
                              {
                                 §§push(this.§#!L§);
                                 if(_loc4_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop50:
                                       while(true)
                                       {
                                          §§push(this.§#!L§);
                                          addr220:
                                          loop2:
                                          while(_loc4_ || _loc2_)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(this.§`&§);
                                                loop3:
                                                while(§§pop() <= §§pop())
                                                {
                                                   §§push(this.§#!L§);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§`&§);
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         this.§1m§ = this.§`&§;
                                                         loop4:
                                                         while(true)
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§!"E§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.§1m§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(§§pop()[§§pop()])
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   this.§-9§.§[!A§(this.§!"E§[this.§1m§].red,this.§!"E§[this.§1m§].green,this.§!"E§[this.§1m§].blue);
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.final = this.§4!5§.x;
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop50;
                                                                                                                  }
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr273:
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && this))
                                                                                                                     {
                                                                                                                        this.updatePageNumber(_loc1_);
                                                                                                                        addr260:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc1_++;
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        addr251:
                                                                                                                     }
                                                                                                                     loop48:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr521:
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr523:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this.§#o§);
                                                                                                                              while(§§pop() < §§pop().length)
                                                                                                                              {
                                                                                                                                 §§push(this.§#o§);
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          _loc2_++;
                                                                                                                                          continue loop48;
                                                                                                                                       }
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.final);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          addr569:
                                                                                                                                          loop23:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§>]§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   addr574:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                      addr577:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr578:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop23;
                                                                                                                                                            }
                                                                                                                                                            addr579:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop40;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr573:
                                                                                                                                             }
                                                                                                                                             addr588:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§>]§);
                                                                                                                                                addr590:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   addr591:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                      addr594:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         addr595:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr577);
                                                                                                                                                            }
                                                                                                                                                            addr596:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               continue loop31;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr430:
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§4!5§);
                                                                                                                                             if(_loc4_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop().x);
                                                                                                                                                loop18:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§>]§);
                                                                                                                                                   addr444:
                                                                                                                                                   while(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      while(!(_loc3_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                            loop21:
                                                                                                                                                            while(_loc4_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc4_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr594);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                        addr413:
                                                                                                                                                                        break;
                                                                                                                                                                        if(_loc4_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr425:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    addr349:
                                                                                                                                                                                    break loop2;
                                                                                                                                                                                    if(!(_loc3_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§`&§ = _loc1_;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§#o§);
                                                                                                                                                                                             break loop5;
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          addr319:
                                                                                                                                                                                          if(!(_loc4_ || _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
                                                                                                                                                                                          §§goto(addr273);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                       addr359:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break loop17;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop21;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr596);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr425);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr595);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr578);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr591);
                                                                                                                                                         }
                                                                                                                                                         if(_loc3_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr413);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr574);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr442:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr588);
                                                                                                                                                }
                                                                                                                                                addr586:
                                                                                                                                             }
                                                                                                                                             §§goto(addr590);
                                                                                                                                          }
                                                                                                                                          §§goto(addr251);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr529:
                                                                                                                              this.§`&§ = _loc1_;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§#o§);
                                                                                                                                 addr516:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr517:
                                                                                                                                    §§pop()[_loc1_].gotoAndStop("Selected");
                                                                                                                                    addr520:
                                                                                                                                    (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
                                                                                                                                    addr503:
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          this.updatePageNumber(_loc1_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr430);
                                                                                                                                             §§goto(addr273);
                                                                                                                                          }
                                                                                                                                          addr490:
                                                                                                                                       }
                                                                                                                                       §§goto(addr579);
                                                                                                                                    }
                                                                                                                                    §§goto(addr529);
                                                                                                                                    break loop5;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr527:
                                                                                                                              addr532:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr581:
                                                                                                                           §§goto(addr521);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr490);
                                                                                                               }
                                                                                                               addr26:
                                                                                                            }
                                                                                                            §§goto(addr503);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(this.final);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§>]§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                            §§goto(addr573);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr250:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   this.§1m§ = this.§`&§ - 1;
                                                                                                   break loop6;
                                                                                                }
                                                                                             }
                                                                                             addr158:
                                                                                          }
                                                                                          §§goto(addr581);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                 }
                                                                              }
                                                                              §§goto(addr26);
                                                                           }
                                                                           §§goto(addr517);
                                                                        }
                                                                        addr309:
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                           §§goto(addr319);
                                                                        }
                                                                        addr378:
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                           _loc2_++;
                                                                           addr364:
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr371:
                                                                              while(true)
                                                                              {
                                                                                 addr329:
                                                                                 §§push(_loc2_);
                                                                                 addr331:
                                                                                 §§push(this.§#o§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(§§pop() >= §§pop().length)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr377:
                                                                                          §§goto(addr378);
                                                                                          §§push(this.§#o§);
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                       §§goto(addr542);
                                                                                    }
                                                                                    §§goto(addr527);
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              addr327:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr327);
                                                                              §§goto(addr364);
                                                                           }
                                                                           addr429:
                                                                           addr383:
                                                                        }
                                                                     }
                                                                     §§goto(addr542);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               break;
                                                            }
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               §§goto(addr309);
                                                               §§push(_loc1_);
                                                            }
                                                            §§goto(addr516);
                                                         }
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      this.§1m§ = this.§`&§ + 1;
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr319);
                                                }
                                                addr236:
                                             }
                                             §§goto(addr523);
                                          }
                                          _loc2_ = §§pop();
                                          §§goto(addr429);
                                       }
                                    }
                                    §§goto(addr26);
                                 }
                                 §§goto(addr236);
                              }
                              addr213:
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr383);
                     }
                     while(_loc3_)
                     {
                        §§goto(addr532);
                        §§goto(addr260);
                     }
                     continue;
                  }
                  §§push(this.§4!5§);
                  §§goto(addr586);
               }
               §§goto(addr331);
            }
            §§goto(addr213);
         }
      }
      
      protected function §>!p§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§>]§.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§>]§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr97:
                                    loop6:
                                    while(!(_loc3_ && this))
                                    {
                                       if(§§pop()[§§pop()].mClip.alpha < 1)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§>]§);
                                          }
                                          addr119:
                                       }
                                       else
                                       {
                                          §§push(this.§>]§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             continue loop5;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_);
                                             while(true)
                                             {
                                                (§§pop()[§§pop()] as §7'§).setEnabled(false);
                                                addr129:
                                                while(true)
                                                {
                                                   if(!(_loc4_ || this))
                                                   {
                                                      addr220:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         addr137:
                                                         while(true)
                                                         {
                                                            if(Math.abs(this.§>]§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) <= 0.0001)
                                                            {
                                                               continue loop7;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§>]§);
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  break loop6;
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      addr220:
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             addr124:
                                          }
                                          §§goto(addr156);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(§§pop() > 1000)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(1000);
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr212:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                addr201:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(Math.abs(_loc2_)));
                                                   continue loop3;
                                                }
                                                addr241:
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr137);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       addr240:
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr212);
                              }
                              _loc2_ = §§pop();
                           }
                           §§goto(addr220);
                        }
                     }
                     §§goto(addr81);
                  }
                  continue;
               }
               §§push(Number(this.§4!5§.x + this.§>]§[_loc1_].x));
               §§goto(addr240);
            }
            §§goto(addr201);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6w§.stage)
            {
               while(true)
               {
                  §6w§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!N§);
                  addr97:
                  while(true)
                  {
                  }
               }
               addr90:
            }
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  if(_loc2_)
                  {
                     this.§3!y§();
                     loop2:
                     while(true)
                     {
                        (§6w§.getItemByName("Button_Back") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§@"0§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr75:
                     this.§@"0§.stop();
                     addr76:
                     while(true)
                     {
                        this.§@"0§ = null;
                        addr65:
                        while(true)
                        {
                        }
                     }
                     addr76:
                  }
                  §§goto(addr76);
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param2.length > 0);
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
                           §§push(param3 is §+w§);
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                       addr194:
                                       while(true)
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
                                                while(true)
                                                {
                                                   §§push((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                                   if(_loc5_ || this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   loop7:
                                                   while(!(_loc6_ && param1))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  LevelManager.§-!4§(LevelManager.§;!f§(param2.toLowerCase()));
                                                                  continue;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§goto(addr77);
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr137);
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              addr184:
                           }
                           §§goto(addr194);
                        }
                     }
                  }
                  §§goto(addr184);
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function §'!S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §>!E§.§7N§("Menu_Confirm");
            if(_loc4_)
            {
               if(!this.§6!H§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr49:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§#!L§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.§#!L§ = _loc2_;
                     }
                     if(_loc4_)
                     {
                        addr86:
                        this.§`6§(this.§#!L§);
                     }
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr86);
      }
      
      protected function §3Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §>!E§.§7N§("Menu_Confirm");
            if(!(_loc4_ && this))
            {
               addr28:
               if(!this.§6!H§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§#!L§);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.§#!L§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        this.§`6§(this.§#!L§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr28);
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
         if(_loc10_ || _loc3_)
         {
            this.§!"E§ = [];
            loop0:
            while(true)
            {
               this.§@H§ = [];
               loop1:
               while(true)
               {
                  this.§#!L§ = LevelManager.§;X§(LevelManager.§2?§).§9!f§;
                  addr70:
                  while(_loc10_)
                  {
                     while(true)
                     {
                        this.§1m§ = this.§#!L§;
                        addr59:
                        while(!_loc9_)
                        {
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§`&§ = this.§#!L§;
            if(_loc10_)
            {
               if(!_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr54);
               }
               §§goto(addr70);
            }
            §§goto(addr59);
         }
         var _loc2_:§>x§ = LevelManager.§;X§(LevelManager.§2?§);
         var _loc3_:Number = 0;
         loop6:
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§<6§(_loc2_.pageIndexes[_loc3_]);
            if(!_loc9_)
            {
               §§push(this.§!"E§);
               while(true)
               {
                  §§pop().push(_loc2_.§^" §(_loc3_));
                  while(true)
                  {
                     §§push(this.§@H§);
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§pop().push(_loc2_.§?T§(_loc3_));
                     loop9:
                     for(; _loc10_ || _loc1_; while(true)
                     {
                        if(_loc9_ && _loc3_)
                        {
                           continue loop9;
                        }
                        §§push(_loc3_);
                        if(_loc10_)
                        {
                           if(!_loc9_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    addr116:
                                    _loc3_ = §§pop();
                                    if(_loc9_)
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr116);
                           }
                           break;
                        }
                        §§goto(addr116);
                     },§§goto(addr129))
                     {
                        while(true)
                        {
                           addr121:
                           while(true)
                           {
                              §§push(this.§[k§(_loc4_,_loc3_,_loc1_,_loc2_));
                              addr128:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr129:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    continue loop9;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr154);
         }
         if(_loc10_)
         {
            this.§-9§ = new §%1§(this.§!"E§[this.§#!L§].red,this.§!"E§[this.§#!L§].green,this.§!"E§[this.§#!L§].blue,1);
            if(_loc10_)
            {
               §6w§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§-9§);
               if(_loc10_)
               {
                  addr212:
                  if(_loc2_.§return§)
                  {
                     if(_loc10_ || _loc2_)
                     {
                     }
                     addr258:
                     if(_loc2_.§!!u§)
                     {
                        if(_loc10_)
                        {
                           _loc8_ = new (_loc7_ = §8B§.§6"C§(_loc2_.§!!u§))();
                           if(_loc10_ || _loc3_)
                           {
                              §6w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                              if(_loc10_)
                              {
                                 addr294:
                                 this.§3!j§();
                                 if(!_loc9_)
                                 {
                                    if(§5;§ != StateCutScene.STATE_NAME)
                                    {
                                       this.§`6§(this.§#!L§,true);
                                       if(_loc10_)
                                       {
                                          if(_loc10_ || this)
                                          {
                                             if(_loc9_ && _loc3_)
                                             {
                                                addr348:
                                                §5;§ = "";
                                                this.§`6§(this.§`&§);
                                                addr351:
                                                addr343:
                                             }
                                             else
                                             {
                                                addr337:
                                             }
                                             return;
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr348);
                                    addr298:
                                 }
                                 §§goto(addr337);
                                 addr287:
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr287);
                        }
                     }
                     else
                     {
                        §6w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                     }
                     §§goto(addr294);
                  }
                  else
                  {
                     §6w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                     §§goto(addr258);
                  }
               }
               _loc6_ = new (_loc5_ = §8B§.§6"C§(_loc2_.§return§))();
               if(!(_loc9_ && _loc1_))
               {
                  §6w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                  if(_loc10_ || _loc1_)
                  {
                     §§goto(addr258);
                  }
               }
               §§goto(addr294);
            }
            §§goto(addr212);
         }
         §§goto(addr258);
      }
      
      protected function §[k§(param1:Array, param2:int, param3:Number, param4:§>x§) : Number
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
         var _loc6_:Class = §8B§.§6"C§(this.§@H§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc15_)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc14_ || param2))
               {
                  break;
               }
            }
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc14_)
            {
               §§push(_loc11_);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
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
                              §§push(AngryBirdsFP11.§4x§);
                              if(_loc14_)
                              {
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              while(_loc14_)
                              {
                                 addr173:
                                 §§push(_loc11_);
                                 if(_loc15_ && param3)
                                 {
                                    continue;
                                 }
                                 if(_loc15_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    loop12:
                                    for(; _loc14_; if(!(_loc14_ || this))
                                    {
                                       continue;
                                    },if(true)
                                    {
                                       continue loop0;
                                    })
                                    {
                                       while(true)
                                       {
                                          _loc12_.MovieClip_Stars.mouseEnabled = false;
                                          loop16:
                                          while(true)
                                          {
                                             if(_loc14_ || param2)
                                             {
                                                while(true)
                                                {
                                                   _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(_loc14_ || param3)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            _loc7_ = §§pop();
                                                            if(_loc14_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue;
                                                         }
                                                         addr166:
                                                         while(true)
                                                         {
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§goto(addr173);
                                                            }
                                                            else
                                                            {
                                                               addr201:
                                                               while(true)
                                                               {
                                                                  _loc13_.@MouseUp = _loc10_;
                                                                  break loop12;
                                                               }
                                                               addr201:
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue loop16;
                                                }
                                                continue loop0;
                                                addr119:
                                             }
                                             addr178:
                                             while(true)
                                             {
                                                _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                                §§goto(addr166);
                                                continue loop16;
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          _loc13_.@scaleOnMouseOver = "True";
                                          §§goto(addr178);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr119);
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr201);
                        }
                        §§goto(addr174);
                     }
                  }
               }
            }
            §§goto(addr144);
         }
         _loc8_ = <Repeater/>;
         if(_loc14_)
         {
            §§push(param1);
            loop17:
            while(true)
            {
               §§push(§§pop().length == 15);
               if(_loc14_ || param3)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc14_ || param3)
                           {
                              _loc8_.@name = "Repeater_LevelSelection15";
                           }
                           while(true)
                           {
                              addr251:
                              while(true)
                              {
                                 _loc8_.@button = this.§@H§[param2];
                                 loop21:
                                 while(true)
                                 {
                                    _loc8_.@enabled = "True";
                                    loop22:
                                    while(_loc14_)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          _loc8_.@buttonSelectionType = "NO_SELECTION";
                                          while(_loc14_)
                                          {
                                             if(_loc15_)
                                             {
                                                continue loop21;
                                             }
                                             _loc8_.@fromLibrary = "true";
                                             if(_loc15_)
                                             {
                                                continue;
                                             }
                                             if(!_loc14_)
                                             {
                                                break loop23;
                                             }
                                             while(false)
                                             {
                                                continue loop23;
                                             }
                                             var _loc9_:§5!a§;
                                             (_loc9_ = new §5!a§(_loc8_,this.§4!5§,null,null)).§^,§(_loc5_);
                                             if(_loc14_)
                                             {
                                                _loc9_.setVisibility(true);
                                             }
                                             while(true)
                                             {
                                                _loc9_.x += param3;
                                                while(_loc14_)
                                                {
                                                   this.§4!5§.addComponent(_loc9_);
                                                   while(_loc14_ || param1)
                                                   {
                                                      this.§>]§.push(_loc9_);
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() + AngryBirdsFP11.§=!u§);
                                                            if(!(_loc14_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(_loc15_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop22;
                                       }
                                       continue loop17;
                                    }
                                 }
                                 addr267:
                              }
                           }
                           addr294:
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        while(true)
                        {
                           if(!_loc15_)
                           {
                              §§goto(addr267);
                           }
                           else
                           {
                              §§goto(addr294);
                           }
                        }
                        addr272:
                        §§push(§§pop().length == 10);
                        if(_loc14_ || this)
                        {
                           continue;
                        }
                        addr308:
                        while(true)
                        {
                           §§pop();
                           continue loop17;
                           §§goto(addr272);
                        }
                        addr308:
                     }
                  }
               }
               §§goto(addr308);
            }
         }
         §§goto(addr233);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc8_ || param3)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr206:
                  while(true)
                  {
                     _loc6_.gotoAndStop("Open");
                     loop8:
                     while(true)
                     {
                        _loc6_.MovieClip_MEInUse.visible = false;
                        addr203:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           addr189:
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
                                       loop13:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             while(true)
                                             {
                                             }
                                             addr155:
                                          }
                                          else
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                addr193:
                                                while(true)
                                                {
                                                   _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                _loc6_.isOpen = param2;
                                                addr126:
                                                while(true)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(_loc8_ || param3)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop13;
                                                   }
                                                   addr149:
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop13;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr193);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr206:
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
               }
               §§goto(addr149);
            }
            addr205:
         }
         loop16:
         while(true)
         {
            §§push(param2);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(_loc8_ || param3)
                  {
                     if(_loc8_ || param2)
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(_loc8_)
                        {
                           §§push(param1);
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop().getStarsForLevel(§§pop()));
                              if(!_loc9_)
                              {
                                 _loc7_ = §§pop();
                                 for(; !_loc9_; _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars"),if(!(_loc9_ && this))
                                 {
                                    break loop16;
                                 })
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          continue;
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr126);
                                 addr105:
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr105);
               }
               break;
            }
            §§goto(addr205);
            §§goto(addr206);
         }
         return _loc6_;
      }
      
      protected function §3!j§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§>]§.length == 1)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(!(_loc5_ && this))
         {
            this.§-",§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§>]§.length)
         {
            _loc1_ = §8B§.§6"C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc5_)
            {
               _loc2_.x = AngryBirdsFP11.§=!u§ / 2 + _loc3_ - this.§>]§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§6w§.getItemByName("Button_Next") as §^!D§).y - _loc2_.height / 2;
                  while(true)
                  {
                     if(_loc4_ == this.§#!L§)
                     {
                        continue;
                     }
                     _loc2_.gotoAndStop("UnSelected");
                     loop3:
                     while(true)
                     {
                        addr163:
                        while(true)
                        {
                           this.§]!d§.mClip.addChild(_loc2_);
                           continue loop3;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc5_ && _loc1_)
                     {
                        continue loop1;
                     }
                     §§goto(addr235);
                  }
               }
            }
            §§goto(addr135);
         }
         if(_loc6_ || this)
         {
            §§push(this.§>]§.length * _loc2_.width);
            if(_loc6_ || this)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc3_ = §§pop();
            if(_loc6_ || this)
            {
               (§6w§.getItemByName("Button_Next") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
               loop17:
               while(true)
               {
                  (§6w§.getItemByName("Button_Prev") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
                  while(true)
                  {
                     (§6w§.getItemByName("Button_Next") as §^!D§).x = (§6w§.getItemByName("Button_Next") as §^!D§).x + (_loc3_ + 10);
                     loop19:
                     while(_loc6_ || _loc3_)
                     {
                        while(true)
                        {
                           (§6w§.getItemByName("Button_Prev") as §^!D§).x = (§6w§.getItemByName("Button_Prev") as §^!D§).x - (_loc3_ + 10);
                           if(_loc6_ || this)
                           {
                              continue loop17;
                           }
                           continue loop19;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr411);
      }
      
      protected function §3!y§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§-9§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr32:
                     this.§-9§.clean();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§#o§.length)
                  {
                     loop1:
                     while(!(_loc3_ && _loc2_))
                     {
                        this.§#o§ = [];
                        loop2:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§4!5§);
                              if(_loc2_)
                              {
                                 if(§§pop().mClip.numChildren <= 0)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       this.§>]§ = [];
                                       break;
                                    }
                                    continue;
                                 }
                                 §§push(this.§4!5§);
                              }
                              §§pop().mClip.removeChildAt(0);
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc3_ && _loc1_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              addr154:
                              while(true)
                              {
                                 this.§#o§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
                                 break loop2;
                              }
                           }
                           addr118:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§]!d§);
                           if(_loc2_)
                           {
                              §§pop().mClip.removeChild(this.§#o§[_loc1_]);
                              break loop1;
                           }
                           addr147:
                           while(true)
                           {
                              if(§§pop().mClip.contains(this.§#o§[_loc1_]))
                              {
                                 continue loop4;
                              }
                              addr116:
                              while(true)
                              {
                                 _loc1_++;
                                 §§goto(addr118);
                              }
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        §§goto(addr116);
                     }
                  }
                  else
                  {
                     §§push(this.§]!d§);
                  }
                  §§goto(addr147);
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      protected function §null §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§6!H§)
            {
               if(_loc3_)
               {
                  addr24:
                  this.§`6§(this.§-",§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected function §"6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§6!H§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr44:
                  mNextState = §8"D§.STATE_NAME;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §`6§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§6!H§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc6_ || param2)
               {
                  if(§§pop() <= this.§>]§.length - 1)
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(_loc6_)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr140:
                                    addr26:
                                    while(true)
                                    {
                                    }
                                    if(_loc7_ && param2)
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(this.§`&§);
                                       if(_loc7_)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      this.§1m§ = this.§`&§ + 1;
                                                      addr108:
                                                      if(!_loc6_)
                                                      {
                                                         loop7:
                                                         while(_loc6_ || param1)
                                                         {
                                                            if(_loc6_ || param2)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr80:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#!L§);
                                                                     break loop14;
                                                                  }
                                                               }
                                                               addr129:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  addr111:
                                                                  while(true)
                                                                  {
                                                                     this.§#!L§ = param1;
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               addr170:
                                                            }
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      addr177:
                                                      §§push(-this.§>]§[param1].x);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§>]§);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().length - 1);
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr169:
                                                            §§push(int(§§pop()));
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               §§goto(addr170);
                                                            }
                                                            addr169:
                                                         }
                                                      }
                                                      §§goto(addr177);
                                                      addr155:
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   var _loc4_:Number = this.§>]§[param1].x + this.§4!5§.x;
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(§§pop() / 1024);
                                                      if(_loc6_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_)
                                                         {
                                                            addr226:
                                                            §§push(§§pop());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  addr238:
                                                                  §§push(§§pop() * §-!9§);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr246:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(this.§@"0§);
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§@"0§);
                                                                           addr386:
                                                                           while(true)
                                                                           {
                                                                              §§pop().stop();
                                                                              addr387:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        addr384:
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 this.§4!5§.x = _loc3_;
                                                                                 loop19:
                                                                                 while(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr262:
                                                                                                §§push(this.§@"0§);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§pop().play();
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            addr289:
                                                                                                            if(!(_loc6_ || param1))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§@"0§);
                                                                                                                  addr324:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().onComplete = this.§[5§;
                                                                                                                     continue loop23;
                                                                                                                     §§goto(addr262);
                                                                                                                  }
                                                                                                                  §§goto(addr289);
                                                                                                               }
                                                                                                               addr345:
                                                                                                            }
                                                                                                            §§goto(addr256);
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr318:
                                                                                                      addr318:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr386);
                                                                                                }
                                                                                                §§goto(addr324);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          addr256:
                                                                                          return;
                                                                                       }
                                                                                       addr372:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§@"0§ = §>!+§.§;"§.§^!K§(this.§4!5§,{"x":_loc3_},null,_loc5_,§>!+§.§;U§);
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr108);
                                             }
                                             else
                                             {
                                                §§push(this.§#!L§);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr26);
                                             }
                                          }
                                          continue loop1;
                                          addr92:
                                       }
                                       if(!(_loc6_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             this.§1m§ = this.§`&§ - 1;
                                          }
                                          if(_loc6_ || this)
                                          {
                                             if(_loc7_ && param2)
                                             {
                                                continue loop3;
                                             }
                                             if(true)
                                             {
                                                §§goto(addr108);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr108);
                                          }
                                          §§goto(addr80);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr169);
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr169);
            }
         }
         §§goto(addr129);
      }
      
      protected function §[5§() : void
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
               if(§§pop() >= this.§#o§.length)
               {
                  if(_loc3_)
                  {
                     this.§6!H§ = false;
                  }
                  loop1:
                  for(; _loc3_; LevelManager.§;X§(LevelManager.§2?§).§9!f§ = this.§#!L§,if(_loc2_ && _loc1_)
                  {
                     continue;
                  },if(_loc3_)
                  {
                     break loop0;
                  })
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue;
                     }
                     addr103:
                     if(_loc3_)
                     {
                        while(true)
                        {
                           _loc1_++;
                           break loop1;
                           addr127:
                        }
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           §§goto(addr127);
                        }
                        else
                        {
                           while(true)
                           {
                              (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
                              addr140:
                              while(true)
                              {
                                 this.updatePageNumber(_loc1_);
                                 continue loop4;
                              }
                           }
                           addr153:
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr140);
                  }
               }
               else
               {
                  addr144:
                  if(_loc1_ == this.§#!L§)
                  {
                     addr147:
                     §§push(this.§#o§);
                  }
                  else
                  {
                     §§push(this.§#o§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr103);
                        }
                        else
                        {
                           addr150:
                           §§pop()[§§pop()].gotoAndStop("Selected");
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        addr149:
                        §§push(_loc1_);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr149);
               }
               §§goto(addr147);
            }
            §§goto(addr144);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).§5!=§.text = LevelManager.§;X§(LevelManager.§2?§).pageIndexes[param1];
         }
      }
   }
}
