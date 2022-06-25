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
         if(!(_loc2_ && §2!=§))
         {
            §'!q§ = "LevelSelectionState";
         }
         while(true)
         {
            §`!?§ = 0.5;
            while(_loc1_)
            {
               §%!i§ = "";
               if(!_loc2_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
            while(!_loc1_);
            
         }
         while(true)
         {
            §§push(this.§>&§);
            if(!(_loc2_ && this))
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  while(_loc1_)
                  {
                     this.§?J§ = [];
                     do
                     {
                        this.§]!<§ = [];
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'!Q§ = new §&!G§(this);
            while(true)
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_LevelSelection[0]);
               while(!_loc2_)
               {
                  this.§>&§ = §'!Q§.getItemByName("Container_LevelRepeaters") as §^! §;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§>!+§ = §'!Q§.getItemByName("Container_LevelSelection") as §^! §;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
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
               loop1:
               while(true)
               {
                  §§pop().clearLevel();
                  addr214:
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr176);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            if(this.§?J§.length <= 1)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr95:
            }
            for(; param1.keyCode != Keyboard.LEFT; §§goto(addr95))
            {
               if(param1.keyCode == Keyboard.RIGHT)
               {
                  if(_loc3_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this.§1!E§();
                     }
                     addr20:
                     return;
                     addr81:
                  }
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr20);
            }
            this.§'!J§();
         }
         §§goto(addr81);
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
               if(§§pop() != §9![§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr101);
                  }
                  else
                  {
                     addr102:
                     while(true)
                     {
                     }
                     addr102:
                  }
               }
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
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return §9![§.STATE_STATUS_RUNNING;
                  }
                  return §9![§.STATE_STATUS_COMPLETED;
               }
            }
            addr101:
            return _loc2_;
         }
         §§goto(addr102);
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
            if(!(_loc3_ && this))
            {
               if(_loc4_)
               {
                  §§push(this.§]!<§);
                  if(_loc4_ || this)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           loop1:
                           for(; !(_loc3_ && _loc3_); if(_loc3_ && _loc3_)
                           {
                              continue;
                           },if(!(_loc3_ && _loc1_))
                           {
                              this.§`!%§.§,n§(this.§&!S§[this.§'!m§].red,this.§&!S§[this.§'!m§].green,this.§&!S§[this.§'!m§].blue);
                              §§goto(addr111);
                           },§§goto(addr330))
                           {
                              §§push(this.§<#§);
                              loop2:
                              while(true)
                              {
                                 §§push(this.§8C§);
                                 loop3:
                                 while(§§pop() != §§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§8C§);
                                       addr251:
                                       loop41:
                                       while(_loc4_)
                                       {
                                          §§push(this.§<#§);
                                          loop42:
                                          while(§§pop() <= §§pop())
                                          {
                                             §§push(this.§8C§);
                                             if(_loc3_)
                                             {
                                                continue loop41;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(this.§<#§);
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!(_loc4_ || _loc1_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         this.§'!m§ = this.§<#§ - 1;
                                                         loop43:
                                                         while(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               loop44:
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!S§);
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.§'!m§);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(!§§pop()[§§pop()])
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              addr111:
                                                                              addr111:
                                                                              loop45:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                break loop41;
                                                                                             }
                                                                                             addr525:
                                                                                             addr576:
                                                                                          }
                                                                                          addr294:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             this.updatePageNumber(_loc1_);
                                                                                             §§goto(addr294);
                                                                                             addr309:
                                                                                          }
                                                                                          addr287:
                                                                                          _loc1_++;
                                                                                          break;
                                                                                       }
                                                                                       break loop42;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          continue loop44;
                                                                                       }
                                                                                       addr473:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr475:
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§push(this.§ !I§);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      addr388:
                                                                                                      §§push(-§§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr390:
                                                                                                         §§push(this.§?J§);
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr439:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr442:
                                                                                                                                       _loc2_ = 0;
                                                                                                                                       addr441:
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             loop13:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                addr324:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§]!<§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop().length)
                                                                                                                                                         {
                                                                                                                                                            addr330:
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr332:
                                                                                                                                                               this.§<#§ = _loc1_;
                                                                                                                                                               break loop1;
                                                                                                                                                            }
                                                                                                                                                            continue loop39;
                                                                                                                                                         }
                                                                                                                                                         addr358:
                                                                                                                                                         §§push(this.§]!<§);
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            addr359:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                  loop7:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc2_++;
                                                                                                                                                                     addr345:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop7;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                     addr547:
                                                                                                                                                                     _loc2_++;
                                                                                                                                                                     addr537:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr525);
                                                                                                                                                                        §§goto(addr475);
                                                                                                                                                                     }
                                                                                                                                                                     addr543:
                                                                                                                                                                  }
                                                                                                                                                                  addr544:
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr328:
                                                                                                                                                   }
                                                                                                                                                   addr575:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      §§goto(addr576);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr445:
                                                                                                                                          }
                                                                                                                                          loop37:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§>&§);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(-§§pop().x);
                                                                                                                                                loop30:
                                                                                                                                                while(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§?J§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      addr458:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                         addr461:
                                                                                                                                                         while(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr531:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§goto(addr473);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§<#§ = _loc1_;
                                                                                                                                                                     addr511:
                                                                                                                                                                     §§push(this.§]!<§);
                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr519:
                                                                                                                                                                        §§pop()[_loc1_].gotoAndStop("Selected");
                                                                                                                                                                        addr522:
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
                                                                                                                                                                           this.updatePageNumber(_loc1_);
                                                                                                                                                                           continue loop37;
                                                                                                                                                                           addr507:
                                                                                                                                                                        }
                                                                                                                                                                        addr574:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr575);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr543);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr544);
                                                                                                                                                                  addr472:
                                                                                                                                                                  addr531:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr439);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr592:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§ !I§);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           break loop30;
                                                                                                                                                                        }
                                                                                                                                                                        break loop30;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr591:
                                                                                                                                                               }
                                                                                                                                                               addr572:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr574);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr570:
                                                                                                                                                         while(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr572);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr591);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr390);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§?J§);
                                                                                                                                                   addr566:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      addr567:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr570);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr581:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop().x);
                                                                                                                                                addr583:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§?J§);
                                                                                                                                                   addr585:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      addr586:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                         addr589:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr590);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr287);
                                                                                                                                 }
                                                                                                                                 §§goto(addr589);
                                                                                                                              }
                                                                                                                              §§goto(addr461);
                                                                                                                           }
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                        §§goto(addr586);
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                                  §§goto(addr458);
                                                                                                               }
                                                                                                               §§goto(addr585);
                                                                                                            }
                                                                                                            §§goto(addr566);
                                                                                                         }
                                                                                                         §§goto(addr457);
                                                                                                      }
                                                                                                      §§goto(addr453);
                                                                                                   }
                                                                                                   §§goto(addr583);
                                                                                                }
                                                                                                §§goto(addr388);
                                                                                             }
                                                                                             §§goto(addr592);
                                                                                          }
                                                                                          §§goto(addr537);
                                                                                       }
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    addr269:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break loop45;
                                                                                       }
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          continue loop44;
                                                                                       }
                                                                                    }
                                                                                    addr139:
                                                                                 }
                                                                                 §§goto(addr522);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr519);
                                                                        }
                                                                        addr316:
                                                                        if(_loc3_)
                                                                        {
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§pop()[§§pop()].gotoAndStop("Selected");
                                                                        break loop43;
                                                                     }
                                                                     §§goto(addr511);
                                                                  }
                                                                  break;
                                                               }
                                                               addr313:
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr316);
                                                                  §§push(_loc1_);
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            §§goto(addr441);
                                                         }
                                                         (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
                                                         addr203:
                                                         §§goto(addr309);
                                                         addr203:
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                else
                                                {
                                                   this.§'!m§ = this.§<#§;
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr442);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                this.§'!m§ = this.§<#§ + 1;
                                                §§goto(addr269);
                                             }
                                             §§goto(addr547);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§]!<§);
                                          addr529:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop().length)
                                             {
                                                §§goto(addr531);
                                             }
                                             else
                                             {
                                                §§push(this.§]!<§);
                                             }
                                             §§goto(addr537);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§ !I§ = this.§>&§.x;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          §§goto(addr511);
                                       }
                                       else
                                       {
                                          §§goto(addr203);
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§goto(addr313);
                                 §§push(this.§]!<§);
                              }
                              §§goto(addr345);
                              §§goto(addr332);
                           }
                           §§goto(addr287);
                        }
                        else
                        {
                           §§push(this.§>&§);
                        }
                        §§goto(addr581);
                     }
                     §§goto(addr529);
                  }
                  §§goto(addr328);
               }
               §§goto(addr324);
            }
            §§goto(addr251);
         }
      }
      
      protected function §2!e§() : void
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
               if(§§pop() >= this.§?J§.length)
               {
                  if(_loc4_)
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
                              loop2:
                              while(true)
                              {
                                 _loc1_++;
                                 addr44:
                                 while(!(_loc4_ || _loc2_))
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       §§push(Number(Math.abs(_loc2_)));
                                       addr224:
                                       while(!(_loc4_ || _loc1_))
                                       {
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop20;
                                          }
                                          continue loop20;
                                       }
                                       _loc2_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop() > 1000)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1000);
                                                      addr206:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr217:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr218:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr179:
                                                      loop11:
                                                      for(; !(_loc3_ && this); while(true)
                                                      {
                                                         §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                         continue loop11;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§?J§);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && _loc1_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  addr109:
                                                                  if(§§pop()[§§pop()].mClip.alpha < 1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(this.§?J§);
                                                                        §§goto(addr109);
                                                                     }
                                                                     addr124:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr54:
                                                                     §§push(this.§?J§);
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr66:
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr170:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           continue loop11;
                                                                           §§goto(addr66);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     break loop14;
                                                                     §§goto(addr54);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  (§§pop()[§§pop()] as §7!>§).setEnabled(false);
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(Math.abs(this.§?J§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr170);
                                                         §§push(this.§?J§);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr98);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr224);
                                             }
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr44);
               }
               else
               {
                  §§push(Number(this.§>&§.x + this.§?J§[_loc1_].x));
               }
               §§goto(addr245);
            }
            §§goto(addr206);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§'!Q§.stage)
            {
               while(true)
               {
                  §'!Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!X§);
                  addr101:
                  while(true)
                  {
                  }
                  addr77:
                  if(!(_loc2_ && _loc1_))
                  {
                     (§'!Q§.getItemByName("Button_Back") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     do
                     {
                        LevelManager.§>l§ = null;
                     }
                     while(_loc2_);
                     
                     addr84:
                     if(!(_loc1_ || this))
                     {
                        while(_loc1_)
                        {
                           §§goto(addr77);
                           §§goto(addr84);
                        }
                        while(_loc1_)
                        {
                           while(true)
                           {
                              this.§;w§();
                              §§goto(addr75);
                           }
                        }
                        addr75:
                        §§goto(addr101);
                        addr88:
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr88);
               §§goto(addr101);
            }
         }
         §§goto(addr90);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!!Z§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr71:
                     this.§!!Z§.stop();
                  }
                  while(true)
                  {
                     this.§!!Z§ = null;
                     addr54:
                     while(!_loc1_)
                     {
                     }
                  }
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr54);
               }
               return;
               addr49:
            }
            §§goto(addr71);
         }
         §§goto(addr49);
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
               addr225:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr227:
                        while(true)
                        {
                           §§push(param3 is §8!k§);
                           if(_loc6_ && param2)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr226:
                  }
                  addr183:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push((param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           addr211:
                           loop12:
                           while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 addr218:
                                 §§pop();
                                 loop11:
                                 while(true)
                                 {
                                    §§push((param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                    if(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop12;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§>!@§);
                                                break loop11;
                                             }
                                             addr162:
                                          }
                                          addr92:
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
                                                         addr254:
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            addr310:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr272:
                                                         §§push(1);
                                                         if(!_loc5_)
                                                         {
                                                            addr303:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("NEXT");
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr266:
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§push("PREV");
                                                            if(!_loc6_)
                                                            {
                                                               addr289:
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr297:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(2);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr307:
                                                                        §§push(3);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr310);
                                                                        }
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("FULLSCREEN_BUTTON");
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               addr306:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr307);
                                                               }
                                                               else
                                                               {
                                                                  addr315:
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
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr306);
                                                            §§push(_loc4_);
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr315);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr254);
                                       }
                                    }
                                    break;
                                    §§goto(addr218);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       do
                                       {
                                          LevelManager.§`!O§(LevelManager.§5l§(param2.toLowerCase()));
                                          do
                                          {
                                             mNextState = StateCutScene.§'!q§;
                                          }
                                          while(!(_loc5_ || param2));
                                          
                                       }
                                       while(!_loc5_);
                                       
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop4;
                                             }
                                             if(!(_loc5_ || this))
                                             {
                                                break;
                                             }
                                             §§goto(addr92);
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 addr219:
                                 §§goto(addr227);
                              }
                              else
                              {
                                 §§goto(addr226);
                              }
                           }
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
         §§goto(addr227);
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
