package §2!U§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§8!k§;
   import §2y§.§<N§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §2!=§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelSelectionState";
      
      protected static const §`!?§:Number = 0.5;
      
      public static var §%!i§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!q§ = "LevelSelectionState";
         }
         while(true)
         {
            §`!?§ = 0.5;
            while(_loc1_)
            {
               §%!i§ = "";
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §9!d§:Boolean = false;
      
      protected var §>!+§:§^! §;
      
      protected var §>&§:§^! §;
      
      protected var §@L§:MovieClip;
      
      protected var §]!<§:Array;
      
      protected var §?J§:Array;
      
      protected var §8C§:int = 0;
      
      protected var §'!m§:int = 0;
      
      protected var §<#§:int = 0;
      
      protected var §>!@§:Boolean = false;
      
      protected var §!!Z§:§^v§ = null;
      
      protected var § !%§:Dictionary;
      
      protected var §&!S§:Array;
      
      protected var §8!d§:Array;
      
      protected var §`!%§:§!^§;
      
      protected var § !I§:Number = 0;
      
      public function §2!=§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            this.initView();
         }
         while(_loc1_ && _loc2_);
         
         while(true)
         {
            §§push(this.§>&§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  while(_loc2_)
                  {
                     this.§?J§ = [];
                     do
                     {
                        this.§]!<§ = [];
                     }
                     while(!(_loc2_ || this));
                     
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§push(this.§>&§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!Q§ = new §&!G§(this);
            while(true)
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_LevelSelection[0]);
            }
            addr93:
         }
         while(true)
         {
            this.§>&§ = §'!Q§.getItemByName("Container_LevelRepeaters") as §^! §;
            for(; _loc2_ || _loc2_; this.§>!+§ = §'!Q§.getItemByName("Container_LevelSelection") as §^! §,if(!_loc1_)
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr93);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§,!s§.§=!I§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§,!s§.§=!I§);
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     §§pop().§!C§(false);
                     loop3:
                     while(true)
                     {
                        this.initLevelsRepeater();
                        while(true)
                        {
                           this.playThemeMusic();
                           loop5:
                           while(!(_loc2_ && this))
                           {
                              if(this.§?J§.length != 1)
                              {
                                 (§'!Q§.getItemByName("Button_Prev") as §[!i§).setVisibility(true);
                                 loop12:
                                 while(true)
                                 {
                                    (§'!Q§.getItemByName("Button_Next") as §[!i§).setVisibility(true);
                                    loop13:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).setVisibility(true);
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             addr103:
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr110:
                                                loop10:
                                                while(true)
                                                {
                                                   this.§ !I§ = this.§>&§.x;
                                                   while(§'!Q§.stage)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!(_loc1_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr50:
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            while(!_loc2_)
                                                            {
                                                               continue loop10;
                                                               §§goto(addr50);
                                                            }
                                                            while(!_loc2_)
                                                            {
                                                               (§'!Q§.getItemByName("Button_Next") as §[!i§).setVisibility(false);
                                                               while(true)
                                                               {
                                                                  (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).setVisibility(false);
                                                                  §§goto(addr141);
                                                                  continue loop14;
                                                               }
                                                            }
                                                            addr141:
                                                            continue loop2;
                                                            addr166:
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §'!Q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2!X§);
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop12;
                                                   }
                                                   return;
                                                }
                                                continue loop5;
                                             }
                                             addr159:
                                             while(true)
                                             {
                                                (§'!Q§.getItemByName("Button_Prev") as §[!i§).setVisibility(false);
                                                §§goto(addr103);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                 }
                                 addr132:
                              }
                              §§goto(addr159);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      protected function §2!X§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§?J§.length > 1)
            {
               while(true)
               {
                  if(param1.keyCode != Keyboard.LEFT)
                  {
                     if(param1.keyCode == Keyboard.RIGHT)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§1!E§();
                        }
                        if(!_loc3_)
                        {
                           addr86:
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr94:
                        }
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue;
                        return;
                     }
                     break;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     this.§'!J§();
                  }
                  §§goto(addr86);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§>R§();
                     loop1:
                     while(true)
                     {
                        this.§2!e§();
                        while(mNextState.length > 0)
                        {
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           if(!(_loc4_ && param1))
                           {
                              if(!_loc4_)
                              {
                                 addr85:
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        return §9![§.STATE_STATUS_RUNNING;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        return §9![§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr85);
      }
      
      protected function §>R§() : void
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
               §§push(this.§]!<§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§<#§);
                        if(!(_loc3_ && this))
                        {
                           loop48:
                           while(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(this.§8C§);
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§push(this.§8C§);
                                                   loop2:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(this.§<#§);
                                                      loop3:
                                                      for(; §§pop() <= §§pop(); §§push(this.§<#§),if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      },if(§§pop() >= §§pop())
                                                      {
                                                         this.§'!m§ = this.§<#§;
                                                         continue loop1;
                                                      },if(_loc4_ || this)
                                                      {
                                                         this.§'!m§ = this.§<#§ - 1;
                                                      },loop9:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§&!S§);
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(this.§'!m§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop()[§§pop()])
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr75:
                                                                                 if(!(_loc4_ || _loc1_))
                                                                                 {
                                                                                    break loop3;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       this.§`!%§.§,n§(this.§&!S§[this.§'!m§].red,this.§&!S§[this.§'!m§].green,this.§&!S§[this.§'!m§].blue);
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          addr26:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§ !I§ = this.§>&§.x;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          if(!(_loc4_ || this))
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr554);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       addr112:
                                                                                    }
                                                                                    §§goto(addr516);
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              addr270:
                                                                           }
                                                                           §§goto(addr112);
                                                                        }
                                                                        §§goto(addr26);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr563);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr309);
                                                            addr53:
                                                         }
                                                         §§goto(addr348);
                                                      })
                                                      {
                                                         §§push(this.§8C§);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         addr600:
                                                         _loc2_ = §§pop();
                                                         loop26:
                                                         while(true)
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr547:
                                                               while(true)
                                                               {
                                                                  §§push(this.§]!<§);
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() < §§pop().length)
                                                                     {
                                                                        addr563:
                                                                        §§push(this.§]!<§);
                                                                        §§push(_loc2_);
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§<#§ = _loc1_;
                                                                        addr554:
                                                                        §§push(this.§]!<§);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           addr534:
                                                                           addr364:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                              continue loop26;
                                                                           }
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(!(_loc4_ || _loc1_))
                                                                              {
                                                                                 break loop28;
                                                                              }
                                                                              §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr454:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    break loop48;
                                                                                 }
                                                                                 continue loop27;
                                                                                 addr454:
                                                                              }
                                                                              _loc2_++;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || _loc1_))
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 addr358:
                                                                                 while(true)
                                                                                 {
                                                                                    break loop2;
                                                                                    §§goto(addr358);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr534);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr334:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(§§pop() >= §§pop().length)
                                                                        {
                                                                           addr343:
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§<#§ = _loc1_;
                                                                              addr309:
                                                                              §§push(this.§]!<§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr312:
                                                                                 §§push(_loc1_);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
                                                                                          this.updatePageNumber(_loc1_);
                                                                                          addr282:
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc1_++;
                                                                                             addr273:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this.§ !I§);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr400:
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this.§?J§);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr442:
                                                                                                                                       §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                       if(!(_loc4_ || this))
                                                                                                                                       {
                                                                                                                                          addr494:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop42;
                                                                                                                                             }
                                                                                                                                             addr616:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                break loop42;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr494:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          §§goto(addr454);
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                       addr452:
                                                                                                                                    }
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                       loop15:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop16:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr616);
                                                                                                                                             }
                                                                                                                                             loop24:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop27;
                                                                                                                                                }
                                                                                                                                                addr606:
                                                                                                                                                addr459:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§>&§);
                                                                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(-§§pop().x);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§?J§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            addr483:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr452);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc4_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop15;
                                                                                                                                                                  addr590:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr494);
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr574:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§?J§);
                                                                                                                                                         addr576:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§?J§);
                                                                                                                                                      addr610:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr608);
                                                                                                                                                   §§goto(addr459);
                                                                                                                                                }
                                                                                                                                                addr459:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr483);
                                                                                                                           }
                                                                                                                           §§goto(addr610);
                                                                                                                        }
                                                                                                                        §§goto(addr576);
                                                                                                                     }
                                                                                                                     §§goto(addr482);
                                                                                                                  }
                                                                                                                  §§goto(addr471);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr574);
                                                                                                               }
                                                                                                               addr573:
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr567:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         _loc2_++;
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr573);
                                                                                                   }
                                                                                                }
                                                                                                addr458:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop28;
                                                                                          addr305:
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    addr322:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr364);
                                                                              }
                                                                              addr348:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.updatePageNumber(_loc1_);
                                                                                 addr516:
                                                                              }
                                                                              addr529:
                                                                           }
                                                                           §§goto(addr459);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§]!<§);
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                     §§goto(addr567);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr600);
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§'!m§ = this.§<#§ + 1;
                                                         §§goto(addr270);
                                                         §§goto(addr75);
                                                      }
                                                   }
                                                   §§goto(addr334);
                                                   §§push(this.§]!<§);
                                                   addr254:
                                                }
                                                §§goto(addr551);
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr26);
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr547);
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              §§goto(addr458);
                           }
                           addr210:
                        }
                        §§goto(addr254);
                        while(true)
                        {
                           if(_loc3_ && _loc1_)
                           {
                              continue loop1;
                           }
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr53);
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr305);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§>&§);
                  }
                  §§goto(addr606);
               }
               §§goto(addr334);
            }
            §§goto(addr210);
         }
      }
      
      protected function §2!e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() >= this.§?J§.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 if(Math.abs(this.§?J§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§?J§);
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr169:
                                          addr108:
                                          while(true)
                                          {
                                             §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                          }
                                          if(_loc3_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc1_);
                                          loop11:
                                          for(; §§pop()[§§pop()].mClip.alpha >= 1; if(_loc3_ && _loc1_)
                                          {
                                             continue;
                                          },if(!(_loc3_ && _loc1_))
                                          {
                                             (§§pop()[§§pop()] as §7!>§).setEnabled(true);
                                             while(true)
                                             {
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   break loop11;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             addr88:
                                          }
                                          else
                                          {
                                             §§goto(addr169);
                                          },while(!(_loc3_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§?J§);
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr108);
                                             }
                                             §§goto(addr133);
                                          },§§goto(addr196),addr177:)
                                          {
                                             §§push(this.§?J§);
                                             if(_loc4_)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                addr133:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                }
                                                addr133:
                                             }
                                             while(true)
                                             {
                                                (§§pop()[§§pop()] as §7!>§).setEnabled(false);
                                                addr139:
                                                while(_loc3_ && _loc1_)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr194:
                                                         if(§§pop() > 1000)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(1000);
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr205:
                                                                     addr224:
                                                                     while(_loc4_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           continue loop13;
                                                                        }
                                                                        addr245:
                                                                        addr245:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr204:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr224);
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            addr196:
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr133);
                                          }
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr98);
                              }
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr88);
                  }
                  continue;
               }
               §§push(Number(this.§>&§.x + this.§?J§[_loc1_].x));
               §§goto(addr245);
            }
            §§goto(addr204);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§'!Q§.stage)
            {
               loop0:
               while(true)
               {
                  §'!Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!X§);
                  addr102:
                  addr84:
                  while(true)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        continue loop0;
                     }
                     this.§;w§();
                     while(true)
                     {
                        (§'!Q§.getItemByName("Button_Back") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop5:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              LevelManager.§>l§ = null;
                              if(!_loc1_)
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr102);
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr84);
               §§goto(addr102);
            }
         }
         §§goto(addr76);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§!!Z§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§!!Z§);
                     addr80:
                     while(true)
                     {
                        §§pop().stop();
                        addr81:
                        while(true)
                        {
                           this.§!!Z§ = null;
                           addr65:
                           addr67:
                           while(!_loc1_)
                           {
                              continue loop0;
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
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr65);
                  §§goto(addr67);
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr230:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr232:
                        while(true)
                        {
                           §§push(param3 is §8!k§);
                           if(_loc6_ && param2)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr231:
                  }
                  addr188:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§push((param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           addr216:
                           loop5:
                           while(_loc5_ || param1)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push((param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                 if(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc6_ && param2)
                                             {
                                                continue loop12;
                                             }
                                             §§push(this.§>!@§);
                                          }
                                          else
                                          {
                                             do
                                             {
                                                mNextState = StateCutScene.§'!q§;
                                             }
                                             while(!(_loc5_ || param2));
                                             
                                             if(_loc6_ && param1)
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc6_)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr232);
                                             addr176:
                                          }
                                       }
                                       break;
                                       addr134:
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       break loop6;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           §§goto(addr231);
                        }
                        addr190:
                     }
                     var _loc4_:* = param2;
                     if(!(_loc6_ && param1))
                     {
                        §§push("BACK");
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param3))
                                 {
                                    addr259:
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       addr315:
                                    }
                                 }
                                 else
                                 {
                                    addr277:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr308:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("NEXT");
                                 if(!(_loc6_ && this))
                                 {
                                    addr271:
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr277);
                                          }
                                          §§goto(addr320);
                                       }
                                       §§push("PREV");
                                       if(!_loc6_)
                                       {
                                          addr294:
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr302:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(2);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr308);
                                                   }
                                                }
                                                else
                                                {
                                                   addr312:
                                                   §§push(3);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr315);
                                                   }
                                                }
                                                §§goto(addr320);
                                             }
                                             else
                                             {
                                                §§push("FULLSCREEN_BUTTON");
                                             }
                                             §§goto(addr312);
                                          }
                                          addr311:
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr312);
                                          }
                                          else
                                          {
                                             addr320:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §-!Q§.§#3§("Menu_Back");
                                                   mNextState = §8"!§.§'!q§;
                                                   break;
                                                   addr98:
                                                   addr91:
                                                case 1:
                                                   this.§1!E§();
                                                   break;
                                                   addr85:
                                                case 2:
                                                   this.§'!J§();
                                                   if(_loc5_ || param3)
                                                   {
                                                      if(_loc5_ || param3)
                                                      {
                                                         addr46:
                                                         break;
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                   break;
                                                case 3:
                                                   §-!Q§.§#3§("Menu_Confirm");
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      AngryBirdsFP11.§'!g§.§]8§();
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc5_ || param3)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr46);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr91);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr85);
                                                         }
                                                      }
                                                      break;
                                                   }
                                             }
                                             return;
                                             §§push(4);
                                          }
                                          §§goto(addr320);
                                       }
                                       §§goto(addr311);
                                       §§push(_loc4_);
                                       §§goto(addr312);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr294);
                              }
                              §§goto(addr320);
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr271);
                     }
                     §§goto(addr259);
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      protected function §1!E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §-!Q§.§#3§("Menu_Confirm");
            if(!(_loc4_ && _loc3_))
            {
               if(!this.§>!@§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr63:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§8C§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        _loc1_.§8C§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        addr85:
                        this.§5!]§(this.§8C§);
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr63);
      }
      
      protected function §'!J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §-!Q§.§#3§("Menu_Confirm");
            if(_loc4_ || _loc1_)
            {
               if(!this.§>!@§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr64:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§8C§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc1_.§8C§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr85);
                  }
                  this.§5!]§(this.§8C§);
               }
            }
            addr85:
            return;
         }
         §§goto(addr64);
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
         if(_loc10_ || this)
         {
            this.§&!S§ = [];
            loop0:
            while(true)
            {
               this.§8!d§ = [];
               while(true)
               {
                  this.§8C§ = LevelManager.§!!A§(LevelManager.§`^§).§9J§;
                  addr55:
                  if(_loc9_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        this.§'!m§ = this.§8C§;
                        addr71:
                        addr87:
                        while(_loc10_ || _loc2_)
                        {
                           this.§<#§ = this.§8C§;
                           if(!(_loc10_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr55);
                        }
                        while(true)
                        {
                           continue loop3;
                           §§goto(addr71);
                        }
                     }
                  }
                  var _loc2_:§8K§ = LevelManager.§!!A§(LevelManager.§`^§);
                  var _loc3_:* = Number(0);
                  loop5:
                  while(_loc3_ < _loc2_.pageIndexes.length)
                  {
                     _loc4_ = _loc2_.§#E§(_loc2_.pageIndexes[_loc3_]);
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(this.§&!S§);
                        loop6:
                        while(true)
                        {
                           §§pop().push(_loc2_.§;y§(_loc3_));
                           addr196:
                           loop7:
                           while(true)
                           {
                              §§push(this.§8!d§);
                              if(!_loc10_)
                              {
                                 continue loop6;
                              }
                              §§pop().push(_loc2_.§,G§(_loc3_));
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
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                if(_loc9_ && _loc1_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc3_);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(§§pop() + 1);
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc10_ || _loc3_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop5;
                                                }
                                                continue;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr196);
                  }
                  if(!_loc9_)
                  {
                     this.§`!%§ = new §!^§(this.§&!S§[this.§8C§].red,this.§&!S§[this.§8C§].green,this.§&!S§[this.§8C§].blue,1);
                     if(_loc10_ || _loc2_)
                     {
                        addr234:
                        §'!Q§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§`!%§);
                        if(_loc10_ || this)
                        {
                           if(_loc2_.§?E§)
                           {
                              if(!_loc10_)
                              {
                              }
                              addr288:
                              if(_loc2_.§2?§)
                              {
                                 if(_loc10_)
                                 {
                                    addr293:
                                    _loc8_ = new (_loc7_ = §,!j§.§!!N§(_loc2_.§2?§))();
                                    if(_loc10_)
                                    {
                                       §'!Q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr324:
                                          this.§2!A§();
                                          if(_loc10_)
                                          {
                                             if(§%!i§ != StateCutScene.§'!q§)
                                             {
                                                this.§5!]§(this.§8C§,true);
                                                if(_loc10_)
                                                {
                                                   if(!(_loc10_ || _loc2_))
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         this.§5!]§(this.§<#§);
                                                         addr366:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               break loop13;
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                      addr376:
                                                   }
                                                   else
                                                   {
                                                      addr360:
                                                   }
                                                   return;
                                                }
                                                §§goto(addr366);
                                             }
                                             §§goto(addr373);
                                             addr328:
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr376);
                                    }
                                    §§goto(addr328);
                                 }
                              }
                              else
                              {
                                 §'!Q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                              }
                              §§goto(addr324);
                           }
                           else
                           {
                              §'!Q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                              §§goto(addr288);
                           }
                        }
                        _loc6_ = new (_loc5_ = §,!j§.§!!N§(_loc2_.§?E§))();
                        if(!(_loc9_ && this))
                        {
                           §'!Q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                           if(_loc10_ || this)
                           {
                              addr281:
                              §§goto(addr288);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr281);
                     }
                     §§goto(addr288);
                  }
                  §§goto(addr234);
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§8K§) : Number
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
         var _loc6_:Class = §,!j§.§!!N§(this.§8!d§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc15_ && param2))
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc15_ && param1)
               {
                  break;
               }
               _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(_loc14_)
               {
                  §§push(_loc11_);
                  if(_loc14_ || param3)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc14_)
                     {
                        addr229:
                        if(§§pop())
                        {
                           loop4:
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
                                 while(true)
                                 {
                                    if(!(_loc15_ && param3))
                                    {
                                       _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                       continue loop4;
                                    }
                                    §§goto(addr214);
                                    addr132:
                                    if(!(_loc15_ && param3))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc7_ = §§pop();
                                          if(!(_loc15_ && param1))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                             }
                                             addr117:
                                          }
                                          addr123:
                                          addr158:
                                          loop13:
                                          while(!(_loc15_ && param1))
                                          {
                                             if(_loc14_)
                                             {
                                                §§goto(addr132);
                                             }
                                             else
                                             {
                                                while(!(_loc15_ && param3))
                                                {
                                                   _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                   break loop13;
                                                }
                                                §§goto(addr217);
                                                addr147:
                                             }
                                          }
                                          while(!(_loc15_ && this))
                                          {
                                             if(_loc14_ || this)
                                             {
                                                §§goto(addr117);
                                             }
                                             else
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(AngryBirdsFP11.§?C§);
                                                   addr199:
                                                   addr231:
                                                   while(!_loc15_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                       addr139:
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr231);
                  }
                  §§goto(addr229);
               }
               §§goto(addr139);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(_loc14_)
         {
            §§push(param1);
            loop15:
            while(true)
            {
               §§push(§§pop().length == 15);
               addr341:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop15;
                     }
                     addr343:
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                           loop20:
                           while(true)
                           {
                              if(!(_loc15_ && param2))
                              {
                                 while(true)
                                 {
                                    addr286:
                                    while(true)
                                    {
                                       _loc8_.@button = this.§8!d§[param2];
                                       loop22:
                                       for(; !_loc15_; if(_loc15_ && param1)
                                       {
                                          continue;
                                       },if(!_loc14_)
                                       {
                                          continue loop20;
                                       },if(false)
                                       {
                                          §§goto(addr274);
                                       },var _loc9_:§<N§,(_loc9_ = new §<N§(_loc8_,this.§>&§,null,null)).§>k§(_loc5_),if(!(_loc15_ && this))
                                       {
                                          _loc9_.setVisibility(true);
                                          _loc9_.x += param3;
                                          addr434:
                                          if(!_loc15_)
                                          {
                                             this.§>&§.addComponent(_loc9_);
                                             this.§?J§.push(_loc9_);
                                             addr426:
                                             if(!(_loc15_ && param2))
                                             {
                                                addr381:
                                                §§push(param3);
                                                if(!_loc15_)
                                                {
                                                   §§push(§§pop() + AngryBirdsFP11.§!Z§);
                                                }
                                                param3 = §§pop();
                                                if(!(_loc15_ && param1))
                                                {
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(param3);
                                                      if(_loc14_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §§goto(addr381);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                }
                                                §§goto(addr426);
                                             }
                                             §§goto(addr434);
                                             addr436:
                                          }
                                          addr440:
                                          §§goto(addr440);
                                       },§§goto(addr436))
                                       {
                                          _loc8_.@enabled = "True";
                                          loop23:
                                          while(_loc14_)
                                          {
                                             while(true)
                                             {
                                                _loc8_.@buttonSelectionType = "NO_SELECTION";
                                                do
                                                {
                                                   _loc8_.@fromLibrary = "true";
                                                }
                                                while(_loc15_ && param3);
                                                
                                                if(_loc14_ || this)
                                                {
                                                   continue loop22;
                                                }
                                                continue loop23;
                                             }
                                             continue loop22;
                                          }
                                       }
                                       continue loop15;
                                    }
                                 }
                                 addr309:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc8_.@name = "Repeater_LevelSelection15";
                                 }
                                 addr333:
                              }
                              while(true)
                              {
                                 §§goto(addr286);
                              }
                           }
                        }
                        §§goto(addr333);
                     }
                     addr331:
                  }
               }
            }
         }
         §§goto(addr309);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc9_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.gotoAndStop("Locked");
                  loop1:
                  while(true)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_)
                        {
                           if(_loc9_ || param2)
                           {
                              loop2:
                              while(true)
                              {
                                 _loc6_.isOpen = param2;
                                 addr134:
                                 while(true)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       continue loop0;
                                    }
                                    addr212:
                                    while(true)
                                    {
                                       _loc6_.gotoAndStop("Open");
                                    }
                                 }
                                 addr209:
                                 while(true)
                                 {
                                    §§push(AngryBirdsFP11.sUserProgress);
                                    addr195:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr196:
                                       while(true)
                                       {
                                          §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                          addr197:
                                          while(true)
                                          {
                                             if(§§pop() == 100)
                                             {
                                                while(true)
                                                {
                                                   _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                                }
                                                addr199:
                                             }
                                             else
                                             {
                                                _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                                while(true)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr165:
                                                   }
                                                }
                                                addr173:
                                             }
                                             while(true)
                                             {
                                                _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                addr191:
                                                while(true)
                                                {
                                                   continue loop2;
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
                              _loc6_.MovieClip_MEInUse.visible = false;
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr173);
                     addr86:
                     while(true)
                     {
                        if(_loc8_ && param2)
                        {
                           continue loop1;
                        }
                        if(_loc9_ || param3)
                        {
                           if(!_loc8_)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(_loc9_ || param1)
                              {
                                 §§push(param1);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop().getStarsForLevel(§§pop()));
                                    if(!_loc8_)
                                    {
                                       _loc7_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr195);
                           }
                           break;
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr212);
            }
         }
         §§goto(addr129);
      }
      
      protected function §2!A§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc6_ || _loc1_)
         {
            if(this.§?J§.length == 1)
            {
               if(_loc6_ || _loc1_)
               {
                  §§goto(addr42);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc6_)
            {
               this.§ !%§ = new Dictionary();
            }
            var _loc4_:int = 0;
            loop0:
            while(_loc4_ < this.§?J§.length)
            {
               _loc1_ = §,!j§.§!!N§("Button_Dot");
               _loc2_ = new _loc1_();
               if(!(_loc5_ && _loc2_))
               {
                  _loc2_.x = AngryBirdsFP11.§!Z§ / 2 + _loc3_ - this.§?J§.length * _loc2_.width / 2;
                  while(true)
                  {
                     _loc2_.y = (§'!Q§.getItemByName("Button_Next") as §[!i§).y - _loc2_.height / 2;
                  }
                  addr289:
               }
               loop2:
               while(true)
               {
                  if(_loc4_ == this.§8C§)
                  {
                     continue;
                  }
                  _loc2_.gotoAndStop("UnSelected");
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§>!+§.mClip.addChild(_loc2_);
                        while(!(_loc5_ && _loc1_))
                        {
                           this.§ !%§[_loc2_] = _loc4_;
                           while(true)
                           {
                              this.§]!<§.push(_loc2_);
                              while(_loc6_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(Number(§§pop() + _loc2_.width));
                                 }
                                 _loc3_ = §§pop();
                                 loop8:
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop8;
                                       }
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc5_)
                                       {
                                          do
                                          {
                                             _loc2_.buttonMode = true;
                                             continue loop9;
                                          }
                                          while(false);
                                          
                                          continue loop0;
                                       }
                                       §§goto(addr289);
                                    }
                                    while(true)
                                    {
                                       (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = _loc2_.x;
                                       §§goto(addr240);
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.updatePageNumber(_loc4_);
                           §§goto(addr217);
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ && this))
            {
               §§push(this.§?J§.length * _loc2_.width);
               if(!_loc5_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr326:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     if(!(_loc5_ && _loc1_))
                     {
                        (§'!Q§.getItemByName("Button_Next") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
                        while(true)
                        {
                           (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
                           while(true)
                           {
                              (§'!Q§.getItemByName("Button_Next") as §[!i§).x = (§'!Q§.getItemByName("Button_Next") as §[!i§).x + (_loc3_ + 10);
                              §§goto(addr406);
                           }
                        }
                     }
                     §§goto(addr406);
                  }
               }
               §§goto(addr326);
            }
            addr406:
            while(true)
            {
               (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = (§'!Q§.getItemByName("Button_Prev") as §[!i§).x - (_loc3_ + 10);
               if(_loc6_ || this)
               {
                  if(_loc6_ || this)
                  {
                     continue loop17;
                  }
                  continue loop18;
               }
            }
            addr378:
            return;
         }
         addr42:
      }
      
      protected function §;w§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§`!%§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr37:
                     this.§`!%§.clean();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§]!<§.length)
                  {
                     loop1:
                     while(!(_loc3_ && _loc3_))
                     {
                        this.§]!<§ = [];
                        loop2:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break;
                              addr45:
                           }
                           while(true)
                           {
                              §§push(this.§>&§);
                              if(!_loc3_)
                              {
                                 if(§§pop().mClip.numChildren <= 0)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§?J§ = [];
                                          addr66:
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             break loop0;
                                          }
                                          addr152:
                                       }
                                       else
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§>!+§);
                                             if(_loc2_)
                                             {
                                                §§pop().mClip.removeChild(this.§]!<§[_loc1_]);
                                                §§goto(addr152);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop().mClip.contains(this.§]!<§[_loc1_]))
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop4;
                                                }
                                                addr157:
                                             }
                                          }
                                          addr173:
                                       }
                                       _loc1_++;
                                       break loop2;
                                    }
                                    §§goto(addr66);
                                 }
                                 else
                                 {
                                    §§push(this.§>&§);
                                 }
                              }
                              §§pop().mClip.removeChildAt(0);
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr45);
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§]!<§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
                        §§goto(addr173);
                     }
                  }
                  else
                  {
                     §§push(this.§>!+§);
                  }
                  §§goto(addr157);
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      protected function §]!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§>!@§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr44:
                  this.§5!]§(this.§ !%§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §3W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§>!@§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  mNextState = §2!=§.§'!q§;
               }
            }
         }
      }
      
      protected function §5!]§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc3_))
         {
            this.§>!@§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  if(§§pop() <= this.§?J§.length - 1)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        addr123:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              addr130:
                              if(_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 while(true)
                                 {
                                    param1 = §§pop();
                                 }
                                 addr129:
                              }
                              while(true)
                              {
                              }
                              addr130:
                           }
                           addr113:
                           while(true)
                           {
                              this.§8C§ = param1;
                              addr117:
                              while(true)
                              {
                                 addr93:
                                 while(true)
                                 {
                                    §§push(this.§8C§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§<#§);
                                       addr98:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             addr99:
                                             this.§'!m§ = this.§<#§ + 1;
                                             if(_loc6_ || this)
                                             {
                                                addr160:
                                                §§push(this.§?J§);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§?J§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop().length - 1);
                                                      if(_loc6_)
                                                      {
                                                         addr147:
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            param1 = §§pop();
                                                            continue loop0;
                                                         }
                                                         addr147:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr162:
                                                      §§push(-§§pop()[param1].x);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   var _loc4_:Number = this.§?J§[param1].x + this.§>&§.x;
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(§§pop() / 1024);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr247:
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  addr237:
                                                                  §§push(§`!?§);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(this.§!!Z§);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§!!Z§);
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
                                                                              this.§!!Z§ = §`!G§.§[U§.§-]§(this.§>&§,{"x":_loc3_},null,_loc5_,§`!G§.§-!%§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(this.§!!Z§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ && param2)
                                                                                       {
                                                                                          break loop21;
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§pop().onComplete = this.§7S§;
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             addr297:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   break loop23;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr251:
                                                                                             return;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                    addr310:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          this.§>&§.x = _loc3_;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                    }
                                                                                    addr358:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           §§goto(addr358);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_ || this)
                                                            {
                                                               addr246:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                addr138:
                                             }
                                             §§goto(addr162);
                                          }
                                          else
                                          {
                                             §§push(this.§8C§);
                                             if(_loc7_)
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr138);
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§push(this.§<#§);
                  if(!_loc7_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc6_ || _loc3_)
                           {
                              if(_loc6_ || param2)
                              {
                                 if(_loc6_)
                                 {
                                    this.§'!m§ = this.§<#§ - 1;
                                    addr82:
                                    if(_loc6_)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr93);
                                             }
                                             §§goto(addr160);
                                          }
                                          addr91:
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr117);
                                 }
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §7S§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() >= this.§]!<§.length)
               {
                  while(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_ || _loc1_)
                        {
                           this.§>!@§ = false;
                           do
                           {
                              LevelManager.§!!A§(LevelManager.§`^§).§9J§ = this.§8C§;
                           }
                           while(!_loc2_);
                           
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 break loop0;
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr124);
                           continue;
                        }
                        addr124:
                        addr161:
                        addr164:
                        addr163:
                        this.§]!<§[_loc1_].gotoAndStop("Selected");
                        loop3:
                        while(true)
                        {
                           (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
                           addr147:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        this.updatePageNumber(_loc1_);
                     }
                     else
                     {
                        addr119:
                     }
                     _loc1_++;
                     break;
                  }
                  continue;
               }
               addr158:
               if(_loc1_ == this.§8C§)
               {
                  §§goto(addr161);
               }
               else
               {
                  §§push(this.§]!<§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr119);
                     }
                     else
                     {
                        §§goto(addr164);
                     }
                  }
                  else
                  {
                     §§goto(addr163);
                  }
                  §§goto(addr124);
               }
               §§goto(addr124);
            }
            §§goto(addr158);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).§5!B§.text = LevelManager.§!!A§(LevelManager.§`^§).pageIndexes[param1];
         }
      }
   }
}
