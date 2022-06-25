package §9c§
{
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterButtonRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class StateLevelSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const TWEEN_TIME:Number = 0.5;
      
      public static var sPreviousState:String = "";
      
      {
         var STATE_NAME:Boolean = true;
         var TWEEN_TIME:Boolean = false;
         if(STATE_NAME || TWEEN_TIME)
         {
         }
         loop0:
         while(true)
         {
            STATE_NAME = "LevelSelectionState";
            while(true)
            {
               loop2:
               while(STATE_NAME || STATE_NAME)
               {
                  TWEEN_TIME = 0.5;
                  loop3:
                  while(STATE_NAME)
                  {
                     while(STATE_NAME)
                     {
                        sPreviousState = "";
                        if(!(TWEEN_TIME && StateLevelSelection))
                        {
                           if(STATE_NAME)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected var §7!^§:Boolean = false;
      
      protected var §@v§:UIContainerRovio;
      
      protected var §'!L§:UIContainerRovio;
      
      protected var override:MovieClip;
      
      protected var §?!K§:Array;
      
      protected var §5!k§:Array;
      
      protected var §1i§:int = 0;
      
      protected var §#§:int = 0;
      
      protected var §?f§:int = 0;
      
      protected var § v§:Boolean = false;
      
      protected var §]!L§:§9h§ = null;
      
      protected var § !`§:Dictionary;
      
      protected var §^!A§:Array;
      
      protected var §04§:Array;
      
      protected var §@!A§:§5!9§;
      
      protected var §3!W§:Number = 0;
      
      public function StateLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               for(; !_loc3_; if(!(_loc4_ || _loc3_))
               {
                  continue;
               })
               {
                  while(true)
                  {
                     super(initState,name);
                     while(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            super.init();
            while(true)
            {
               while(!_loc1_)
               {
                  continue loop0;
                  this.initView();
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr83:
                  §§push(this.§'!L§);
                  if(!_loc1_)
                  {
                     if(§§pop().mClip.numChildren <= 0)
                     {
                        if(_loc1_ && _loc2_)
                        {
                        }
                        this.§5!k§ = [];
                        addr100:
                        addr82:
                        if(_loc2_ || _loc1_)
                        {
                           this.§?!K§ = [];
                           addr48:
                           if(_loc2_)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             addr103:
                                             §§goto(addr83);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr48);
                              }
                              §§goto(addr103);
                              addr121:
                           }
                           §§goto(addr82);
                        }
                        this.§'!L§.mClip.removeChildAt(0);
                        addr107:
                        §§goto(addr121);
                        addr126:
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr107);
               }
            }
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         while(true)
         {
            §^,§ = new §-!H§(this);
            loop1:
            while(_loc2_)
            {
               while(true)
               {
                  §^,§.init(§3!5§.§4@§.Views.View_LevelSelection[0]);
                  while(!(_loc1_ && this))
                  {
                     loop4:
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§'!L§ = §^,§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
                        loop5:
                        while(true)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop4;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§@v§ = §^,§.getItemByName("Container_LevelSelection") as UIContainerRovio;
                              while(!(_loc1_ && _loc1_))
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(§4!T§.§1t§);
                     loop3:
                     while(true)
                     {
                        §§pop().clearLevel();
                        addr364:
                        while(_loc2_)
                        {
                           continue loop3;
                        }
                        continue loop1;
                     }
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§goto(addr251);
                  }
               }
               while(!(_loc1_ && _loc2_))
               {
                  this.initLevelsRepeater();
                  §§goto(addr324);
                  §§goto(addr285);
               }
            }
         }
         §§goto(addr292);
      }
      
      protected function §'!D§(keyEvent:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(this.§5!k§.length <= 1)
                  {
                     addr133:
                     return;
                  }
                  addr109:
                  while(true)
                  {
                     if(keyEvent.keyCode != Keyboard.LEFT)
                     {
                        if(keyEvent.keyCode == Keyboard.RIGHT)
                        {
                           do
                           {
                              continue loop1;
                           }
                           while(!_loc2_);
                           
                           if(_loc2_ || this)
                           {
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              addr116:
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              continue;
                           }
                           loop7:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§2!Y§();
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 addr124:
                              }
                           }
                        }
                        §§goto(addr28);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr124);
               }
            }
            addr28:
            return;
         }
         while(true)
         {
            §§goto(addr109);
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc4_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr45);
            }
            §§goto(addr47);
         }
         §§push(super.run(deltaTime));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc4_)
         {
            §§push(superReturn);
            while(true)
            {
               if(§§pop() != StateBase.STATE_STATUS_RUNNING)
               {
                  continue;
               }
               addr142:
               this.§5!-§();
               while(true)
               {
                  this.§0!_§();
                  do
                  {
                     if(mNextState.length <= 0)
                     {
                        return StateBase.STATE_STATUS_RUNNING;
                     }
                  }
                  while(_loc3_ && this);
                  
               }
            }
            return §§pop();
         }
         while(true)
         {
            if(!_loc3_)
            {
               if(_loc4_ || deltaTime)
               {
                  break;
               }
               §§goto(addr184);
            }
            §§goto(addr142);
         }
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      protected function §5!-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         var j:* = 0;
         if(_loc4_)
         {
            if(_loc4_ || this)
            {
               addr38:
            }
            §§push(0);
            if(!(_loc3_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               loop1:
               while(!_loc3_)
               {
                  if(!(_loc3_ && i))
                  {
                     §§push(this.§?!K§);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!(_loc3_ && j))
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§?f§);
                                       loop3:
                                       for(; _loc4_; loop7:
                                       while(true)
                                       {
                                          if(_loc4_ || j)
                                          {
                                             if(!(_loc3_ && j))
                                             {
                                                if(!(_loc3_ && j))
                                                {
                                                   if(!(_loc3_ && j))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(this.§?f§);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  §§push(this.§1i§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.§?f§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        this.§#§ = this.§?f§;
                                                                        §§goto(addr193);
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  §§goto(addr838);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr333);
                                                            §§goto(addr87);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr810);
                                                   }
                                                   §§goto(addr606);
                                                }
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       },§§goto(addr686))
                                       {
                                          if(_loc4_ || i)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this.§1i§);
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            this.§3!W§ = this.§'!L§.x;
                                                            loop21:
                                                            for(; _loc4_ || i; if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            },addr63:,if(!(_loc3_ && i))
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr222);
                                                                  }
                                                                  addr221:
                                                               }
                                                               §§goto(addr766);
                                                            },while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr201);
                                                               §§goto(addr63);
                                                            },§§goto(addr234),addr126:)
                                                            {
                                                               addr100:
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_ || i)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_ || i)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr499:
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(!(_loc3_ && j))
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc3_ && j))
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(this.§?!K§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(i);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                addr487:
                                                                                                if(!(_loc3_ && i))
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr467:
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
                                                                                                         addr457:
                                                                                                         if(_loc4_ || j)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         addr847:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr838:
                                                                                                            this.§?!K§[j].gotoAndStop("UnSelected");
                                                                                                            §§push(j + 1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr822:
                                                                                                               j = int(§§pop());
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     loop37:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr810:
                                                                                                                        §§push(j);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr814:
                                                                                                                           if(§§pop() >= this.§?!K§.length)
                                                                                                                           {
                                                                                                                              addr816:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§?f§ = i;
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr795:
                                                                                                                                    while(_loc4_ || i)
                                                                                                                                    {
                                                                                                                                       §§push(this.§?!K§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(i);
                                                                                                                                          addr774:
                                                                                                                                          while(!(_loc3_ && this))
                                                                                                                                          {
                                                                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
                                                                                                                                                   addr766:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.updatePageNumber(i);
                                                                                                                                                      addr748:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr742:
                                                                                                                                                         loop25:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§'!L§);
                                                                                                                                                            if(!(_loc3_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop().x);
                                                                                                                                                               loop26:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§5!k§);
                                                                                                                                                                  addr706:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(i);
                                                                                                                                                                     addr707:
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc4_ || j)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr686:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr688:
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr617:
                                                                                                                                                                                                j = int(§§pop());
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr542:
                                                                                                                                                                                                      §§push(j);
                                                                                                                                                                                                      break loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                j = §§pop();
                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr853:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(i + 1);
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             break loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop1;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr739:
                                                                                                                                                                                          §§push(this.§3!W§);
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr862:
                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr871:
                                                                                                                                                                                          §§push(this.§5!k§);
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(i);
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          loop32:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr909:
                                                                                                                                                                                             §§push(§§pop() >= §§pop()[i].x);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr913:
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr917:
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr861:
                                                                                                                                                                                                      §§goto(addr862);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr917);
                                                                                                                                                                                                addr879:
                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr898:
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr900:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr857:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr852:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr906);
                                                                                                                                                                                       addr738:
                                                                                                                                                                                       §§goto(addr853);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr917);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr877:
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr879);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr918);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr738);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr913);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr862);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr877);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr923:
                                                                                                                                                               }
                                                                                                                                                               addr904:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr906);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr766);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr769:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr923);
                                                                                                                                             }
                                                                                                                                             §§goto(addr904);
                                                                                                                                          }
                                                                                                                                          §§goto(addr838);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr842);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr817:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr847);
                                                                                                                           }
                                                                                                                           §§goto(addr857);
                                                                                                                        }
                                                                                                                        §§goto(addr852);
                                                                                                                     }
                                                                                                                     §§goto(addr849);
                                                                                                                  }
                                                                                                                  §§goto(addr899);
                                                                                                               }
                                                                                                               §§goto(addr838);
                                                                                                            }
                                                                                                            addr842:
                                                                                                            addr849:
                                                                                                            addr837:
                                                                                                            addr833:
                                                                                                            addr821:
                                                                                                         }
                                                                                                         §§goto(addr857);
                                                                                                      }
                                                                                                      this.§?f§ = i;
                                                                                                      §§goto(addr499);
                                                                                                      addr541:
                                                                                                      addr563:
                                                                                                   }
                                                                                                   §§goto(addr748);
                                                                                                }
                                                                                                §§goto(addr691);
                                                                                             }
                                                                                             addr600:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                addr606:
                                                                                                §§push(int(j + 1));
                                                                                                if(!(_loc3_ && j))
                                                                                                {
                                                                                                   j = §§pop();
                                                                                                   addr576:
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                                §§goto(addr614);
                                                                                                addr586:
                                                                                             }
                                                                                             §§goto(addr774);
                                                                                          }
                                                                                          addr590:
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr600);
                                                                                                §§push(j);
                                                                                             }
                                                                                             §§goto(addr837);
                                                                                          }
                                                                                          §§goto(addr773);
                                                                                       }
                                                                                       §§goto(addr817);
                                                                                    }
                                                                                    §§goto(addr795);
                                                                                 }
                                                                                 §§goto(addr769);
                                                                              }
                                                                              §§goto(addr586);
                                                                           }
                                                                           §§goto(addr576);
                                                                        }
                                                                        §§goto(addr541);
                                                                     }
                                                                     break loop20;
                                                                  }
                                                                  addr334:
                                                                  while(true)
                                                                  {
                                                                     addr335:
                                                                     while(!(_loc3_ && i))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§1i§);
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr739);
                                                                     }
                                                                  }
                                                                  §§goto(addr688);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr169:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!(_loc3_ && i))
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr136:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§@!A§.§00§(this.§^!A§[this.§#§].red,this.§^!A§[this.§#§].green,this.§^!A§[this.§#§].blue);
                                                                                          break loop21;
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                       addr136:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr833);
                                                                                    }
                                                                                    §§goto(addr838);
                                                                                 }
                                                                                 §§goto(addr785);
                                                                              }
                                                                              §§goto(addr467);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr222:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.§#§ = this.§?f§ - 1;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr136);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr742);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr487);
                                                                                 }
                                                                                 addr201:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#§ = this.§?f§ + 1;
                                                                                             addr234:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_ || i)
                                                                                                   {
                                                                                                      if(_loc4_ || i)
                                                                                                      {
                                                                                                         §§goto(addr136);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr816);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr457);
                                                                                                }
                                                                                                addr399:
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr766);
                                                                                             }
                                                                                          }
                                                                                          addr304:
                                                                                       }
                                                                                       §§goto(addr766);
                                                                                    }
                                                                                    addr611:
                                                                                 }
                                                                                 addr294:
                                                                              }
                                                                              §§goto(addr590);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        break loop21;
                                                                     }
                                                                     addr409:
                                                                     if(_loc4_ || j)
                                                                     {
                                                                        §§goto(addr686);
                                                                     }
                                                                     §§goto(addr409);
                                                                     §§goto(addr100);
                                                                  }
                                                                  addr193:
                                                               }
                                                               §§goto(addr766);
                                                            }
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         if(_loc4_ || this)
                                                         {
                                                            this.updatePageNumber(i);
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr900);
                                                         addr87:
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   addr333:
                                                }
                                                §§goto(addr822);
                                             }
                                             §§goto(addr617);
                                          }
                                          §§goto(addr606);
                                       }
                                       addr546:
                                       if(§§pop() >= this.§?!K§.length)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr563);
                                             }
                                             §§goto(addr861);
                                          }
                                          §§goto(addr467);
                                       }
                                       §§goto(addr611);
                                    }
                                    addr384:
                                 }
                                 §§goto(addr617);
                              }
                              §§goto(addr384);
                           }
                           §§goto(addr923);
                        }
                        §§goto(addr814);
                     }
                     §§goto(addr546);
                  }
                  §§goto(addr606);
               }
               while(true)
               {
                  if(_loc4_ || i)
                  {
                     i = §§pop();
                     §§goto(addr399);
                  }
                  §§goto(addr821);
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §0!_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         var distance:* = NaN;
         if(!(_loc3_ && this))
         {
            if(!(_loc3_ && this))
            {
               addr38:
            }
            §§push(0);
            if(_loc4_ || this)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(!(_loc3_ && distance))
               {
                  if(§§pop() >= this.§5!k§.length)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           addr72:
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              loop29:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr107:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr92:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   i = §§pop();
                                                   addr93:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || distance)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         loop31:
                                                         while(true)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(Math.abs(this.§5!k§[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5!k§);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(i);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()].mClip.alpha = 1 - distance / 1000;
                                                                              while(true)
                                                                              {
                                                                                 loop22:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§5!k§);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(i);
                                                                                             addr181:
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop()[§§pop()].mClip.alpha >= 1)
                                                                                                {
                                                                                                   §§push(this.§5!k§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                if(_loc3_ && i)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr195:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§5!k§);
                                                                                                            break loop23;
                                                                                                         }
                                                                                                         addr340:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr336:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(this.§'!L§.x + this.§5!k§[i].x));
                                                                                                               addr332:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  distance = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr320:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Math.abs(distance)));
                                                                                                            addr316:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               distance = §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr195);
                                                                                                   }
                                                                                                   addr196:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(distance);
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && distance))
                                                                                                         {
                                                                                                            if(§§pop() <= 1000)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr289:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && i))
                                                                                                                  {
                                                                                                                     §§push(1000);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ && distance))
                                                                                                                        {
                                                                                                                           distance = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           addr269:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                        §§goto(addr296);
                                                                                                                     }
                                                                                                                     addr296:
                                                                                                                     addr253:
                                                                                                                  }
                                                                                                                  §§goto(addr320);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                §§push(i);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      (§§pop()[§§pop()] as UIComponentRovio).setEnabled(false);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr181);
                                                                                                   }
                                                                                                   §§goto(addr317);
                                                                                                   addr123:
                                                                                                   §§push(i);
                                                                                                   if(!(_loc4_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   (§§pop()[§§pop()] as UIComponentRovio).setEnabled(true);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr186);
                                                                                                         }
                                                                                                         §§goto(addr288);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr289);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr177:
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   continue loop0;
                                                }
                                                addr92:
                                             }
                                             §§goto(addr253);
                                          }
                                       }
                                       §§goto(addr92);
                                    }
                                 }
                                 §§goto(addr336);
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr340);
               }
               §§goto(addr92);
            }
            return;
         }
         §§goto(addr38);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               if(§^,§.stage)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §^,§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!D§);
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              break;
                              addr136:
                           }
                           while(!_loc2_)
                           {
                           }
                           continue loop2;
                           addr60:
                           if(_loc1_ || _loc1_)
                           {
                              loop13:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr36:
                                    if(!(_loc2_ && this))
                                    {
                                       addr43:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(!_loc2_)
                                          {
                                             addr103:
                                             if(!(_loc2_ && this))
                                             {
                                                (§^,§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      LevelManager.§ !Y§ = null;
                                                      while(!_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr60);
                                                         continue loop13;
                                                      }
                                                   }
                                                   §§goto(addr136);
                                                   §§goto(addr36);
                                                }
                                                addr96:
                                             }
                                             while(true)
                                             {
                                                break loop9;
                                                §§goto(addr103);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§;!`§();
                                             continue loop8;
                                          }
                                       }
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr56);
                              }
                              return;
                              addr77:
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  super.deActivate();
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr77);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               §§push(this.§]!L§);
               addr111:
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        super.cleanup();
                        loop3:
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop2;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§]!L§ = null;
                                       break loop3;
                                    }
                                    continue loop1;
                                    addr107:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop0;
                              }
                              addr65:
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr107);
                        }
                     }
                     return;
                  }
                  if(_loc2_)
                  {
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§]!L§);
            if(!_loc2_)
            {
               §§pop().stop();
               §§goto(addr107);
            }
            §§goto(addr111);
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            while(true)
            {
               addr383:
               addr323:
               while(true)
               {
               }
               if(_loc5_ && eventIndex)
               {
                  continue;
               }
               loop15:
               while(true)
               {
                  if(!_loc5_)
                  {
                     §§push((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                     loop16:
                     while(true)
                     {
                        if(!(_loc5_ && component))
                        {
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              loop17:
                              for(; _loc6_ || eventName; if(_loc5_ && eventIndex)
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    loop20:
                                    while(_loc6_ || eventName)
                                    {
                                       continue loop15;
                                       while(true)
                                       {
                                          if(!(_loc5_ && eventIndex))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop20;
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr144);
                              },§§goto(addr373))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr373:
                                       while(true)
                                       {
                                          addr273:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(this.§ v§);
                                                if(_loc6_)
                                                {
                                                   continue loop16;
                                                }
                                                continue loop17;
                                             }
                                             §§goto(addr383);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          addr374:
                                          while(true)
                                          {
                                             §§push(component is UIRepeaterButtonRovio);
                                             addr336:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr337:
                                                while(true)
                                                {
                                                   break loop17;
                                                }
                                             }
                                          }
                                       }
                                       addr373:
                                       addr272:
                                    }
                                    addr144:
                                    var _loc4_:* = eventName;
                                    if(!_loc5_)
                                    {
                                       §§push("BACK");
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || eventName)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(0);
                                                      if(_loc5_ && eventIndex)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr515:
                                                      §§push(3);
                                                      if(_loc6_)
                                                      {
                                                         addr518:
                                                      }
                                                      else
                                                      {
                                                         addr529:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("NEXT");
                                                   if(_loc6_ || eventIndex)
                                                   {
                                                      addr428:
                                                      if(!(_loc5_ && eventName))
                                                      {
                                                         addr436:
                                                         §§push(_loc4_);
                                                         if(_loc6_ || eventIndex)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && eventIndex))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc6_)
                                                                  {
                                                                  }
                                                                  §§goto(addr531);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr515);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("PREV");
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_ || component)
                                                                  {
                                                                     addr467:
                                                                     §§push(_loc4_);
                                                                     if(_loc6_ || component)
                                                                     {
                                                                        addr475:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(2);
                                                                              if(!_loc6_)
                                                                              {
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr515);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(_loc6_ || component)
                                                                           {
                                                                           }
                                                                           addr507:
                                                                           if(§§pop() === _loc4_)
                                                                           {
                                                                              if(_loc6_ || component)
                                                                              {
                                                                                 §§goto(addr515);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr521:
                                                                                 §§push(4);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§goto(addr529);
                                                                                 }
                                                                                 §§goto(addr531);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr521);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr531:
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       addr142:
                                                                                       SoundEngine.§`B§("Menu_Back");
                                                                                       mNextState = StateChapterSelection.STATE_NAME;
                                                                                       break;
                                                                                       addr143:
                                                                                       addr126:
                                                                                       addr136:
                                                                                       addr148:
                                                                                       addr133:
                                                                                    case 1:
                                                                                       this.§`!P§();
                                                                                       break;
                                                                                       addr113:
                                                                                       addr123:
                                                                                    case 2:
                                                                                       addr108:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          this.§2!Y§();
                                                                                          addr87:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr108);
                                                                                          }
                                                                                          if(_loc6_ || eventName)
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                addr80:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr143);
                                                                                             }
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr113);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr136);
                                                                                    case 3:
                                                                                       addr77:
                                                                                       §§push(SoundEngine.§`B§("Menu_Confirm"));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr77);
                                                                                          }
                                                                                          addr48:
                                                                                          AngryBirdsFP11.§8R§.§,!f§();
                                                                                          addr61:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_ || eventName)
                                                                                                      {
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr48);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr123);
                                                                                                         }
                                                                                                         §§goto(addr87);
                                                                                                      }
                                                                                                      §§goto(addr80);
                                                                                                   }
                                                                                                   §§goto(addr61);
                                                                                                }
                                                                                                §§goto(addr48);
                                                                                             }
                                                                                             §§goto(addr148);
                                                                                          }
                                                                                          §§goto(addr133);
                                                                                       }
                                                                                       §§goto(addr142);
                                                                                 }
                                                                                 return;
                                                                                 §§push(4);
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        §§goto(addr531);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr531);
                                                         }
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                   §§goto(addr436);
                                                }
                                                §§goto(addr531);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr467);
                                    }
                                    §§goto(addr521);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§goto(addr340);
                                    }
                                    addr339:
                                 }
                                 §§goto(addr144);
                                 §§goto(addr253);
                              }
                              addr253:
                           }
                           break;
                        }
                        §§goto(addr318);
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc6_ || eventIndex)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr372);
                     }
                  }
                  break;
                  while(!(_loc5_ && eventName))
                  {
                     LevelManager.§%<§(LevelManager.§[!U§(eventName.toLowerCase()));
                     §§goto(addr184);
                  }
               }
               while(!_loc5_)
               {
                  §§goto(addr323);
               }
               §§goto(addr339);
            }
         }
         §§goto(addr380);
      }
      
      protected function §`!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && this))
            {
               SoundEngine.§`B§("Menu_Confirm");
               if(!_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§ v§);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    continue loop0;
                                 }
                                 var _loc1_:*;
                                 §§push((_loc1_ = this).§1i§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc2_:* = §§pop();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc1_.§1i§ = _loc2_;
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr148:
                                    loop4:
                                    while(true)
                                    {
                                       this.§?M§(this.§1i§);
                                       addr139:
                                       addr146:
                                       while(!(_loc4_ || _loc2_))
                                       {
                                          continue loop4;
                                       }
                                       addr132:
                                       while(!_loc4_)
                                       {
                                          §§goto(addr139);
                                       }
                                       addr132:
                                       break loop1;
                                    }
                                    addr148:
                                 }
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr148);
                        }
                        break;
                     }
                     return;
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr148);
         }
         §§goto(addr132);
      }
      
      protected function §2!Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc3_)
            {
               SoundEngine.§`B§("Menu_Confirm");
               if(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        addr120:
                        break;
                     }
                     §§push(this.§ v§);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        return;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        var _loc1_:*;
                        §§push((_loc1_ = this).§1i§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.§1i§ = _loc2_;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        §§goto(addr120);
                        addr132:
                     }
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     this.§?M§(this.§1i§);
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
         }
         var levels:Array = null;
         var leftThemeCls:Class = null;
         var leftThemeClip:MovieClip = null;
         var rightThemeCls:Class = null;
         var rightThemeClip:MovieClip = null;
         if(_loc10_)
         {
            while(true)
            {
               loop1:
               for(; !(_loc9_ && offsetX); while(!(_loc9_ && offsetX))
               {
                  if(!(_loc10_ || offsetX))
                  {
                     continue;
                  }
                  §§goto(addr53);
               })
               {
                  while(true)
                  {
                     do
                     {
                        continue loop1;
                     }
                     while(false);
                     
                     var offsetX:Number = 0;
                     if(!(_loc9_ && i))
                     {
                        loop5:
                        while(true)
                        {
                           this.§^!A§ = [];
                           while(true)
                           {
                              while(true)
                              {
                                 this.§04§ = [];
                                 loop8:
                                 while(_loc10_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       this.§1i§ = LevelManager.§ m§(LevelManager.§3V§).§9!O§;
                                       loop10:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             this.§#§ = this.§1i§;
                                             loop12:
                                             while(_loc10_)
                                             {
                                                if(_loc10_)
                                                {
                                                   while(_loc10_)
                                                   {
                                                      this.§?f§ = this.§1i§;
                                                      continue loop10;
                                                      loop15:
                                                      for(; !(_loc9_ && this); if(_loc10_ || offsetX)
                                                      {
                                                         continue loop12;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            trace("We are at page: " + this.§1i§);
                                                            loop17:
                                                            while(_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               var chapter:ChapterModel = LevelManager.§ m§(LevelManager.§3V§);
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               var i:Number = 0;
                                                               while(true)
                                                               {
                                                                  if(i >= chapter.pageIndexes.length)
                                                                  {
                                                                     if(!(_loc9_ && i))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           this.§@!A§ = new §5!9§(this.§^!A§[this.§1i§].red,this.§^!A§[this.§1i§].green,this.§^!A§[this.§1i§].blue,1);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §^,§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@!A§);
                                                                                 if(!(_loc9_ && i))
                                                                                 {
                                                                                    addr420:
                                                                                    if(chapter.§=F§)
                                                                                    {
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          addr415:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr385:
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(!(_loc9_ && offsetX))
                                                                                                   {
                                                                                                      addr383:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr385);
                                                                                                      }
                                                                                                      leftThemeCls = AssetCache.§,!k§(chapter.§=F§);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                      }
                                                                                                      leftThemeClip = new leftThemeCls();
                                                                                                      if(!(_loc9_ && offsetX))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §^,§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(leftThemeClip);
                                                                                                            if(!(_loc9_ && chapter))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr601:
                                                                                                            this.§2?§();
                                                                                                            if(_loc10_ || chapter)
                                                                                                            {
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(sPreviousState != StateCutScene.STATE_NAME)
                                                                                                                  {
                                                                                                                     this.§?M§(this.§1i§,true);
                                                                                                                     while(_loc10_ || chapter)
                                                                                                                     {
                                                                                                                        if(_loc9_ && offsetX)
                                                                                                                        {
                                                                                                                           this.§?M§(this.§?f§);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr679:
                                                                                                                        addr679:
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && chapter))
                                                                                                                           {
                                                                                                                              break loop32;
                                                                                                                           }
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        addr684:
                                                                                                                        while(_loc9_ && i)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr679);
                                                                                                                     }
                                                                                                                     §§goto(addr612);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr612:
                                                                                                               return;
                                                                                                               addr611:
                                                                                                            }
                                                                                                            §§goto(addr699);
                                                                                                         }
                                                                                                         addr547:
                                                                                                         if(!(_loc9_ && chapter))
                                                                                                         {
                                                                                                            rightThemeCls = AssetCache.§,!k§(chapter.§,`§);
                                                                                                            if(_loc9_ && offsetX)
                                                                                                            {
                                                                                                            }
                                                                                                            rightThemeClip = new rightThemeCls();
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §^,§.getItemByName("MovieClip_ThemeRight").changeMovieClip(rightThemeClip);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr588:
                                                                                                                     §§goto(addr601);
                                                                                                                  }
                                                                                                                  §§goto(addr679);
                                                                                                               }
                                                                                                               §§goto(addr611);
                                                                                                            }
                                                                                                            §§goto(addr588);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr600:
                                                                                                         }
                                                                                                         §§goto(addr601);
                                                                                                      }
                                                                                                      if(!(_loc9_ && offsetX))
                                                                                                      {
                                                                                                         if(!(_loc9_ && chapter))
                                                                                                         {
                                                                                                            §§goto(addr547);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr600);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             addr519:
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §^,§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr519);
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(!(_loc9_ && chapter))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        levels = chapter.§]l§(chapter.pageIndexes[i]);
                                                                        if(_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§^!A§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().push(chapter.§>!O§(i));
                                                                                 addr355:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                              if(_loc9_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr383);
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr383);
                                                               }
                                                               if(chapter.§,`§)
                                                               {
                                                                  if(!(_loc9_ && i))
                                                                  {
                                                                     §§goto(addr383);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §^,§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr600);
                                                                  }
                                                               }
                                                               §§goto(addr601);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop8;
                                                if(!(_loc9_ && chapter))
                                                {
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc10_ || i))
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr127);
                              }
                              §§goto(addr210);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:ChapterModel) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc15_)
         {
         }
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         if(!(_loc14_ && pageNum))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc14_)
                  {
                     while(!(_loc14_ && pageNum))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            while(_loc15_)
            {
               loop6:
               while(_loc15_ || pageNum)
               {
                  while(true)
                  {
                     while(!_loc14_)
                     {
                        loop9:
                        while(true)
                        {
                           while(_loc15_)
                           {
                              if(_loc15_)
                              {
                                 continue loop9;
                              }
                           }
                           continue loop6;
                        }
                     }
                  }
               }
            }
            §§goto(addr81);
         }
      }
      
      protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || level)
         {
         }
         var numStars:Number = NaN;
         if(!(_loc8_ && buttonClass))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop1;
                     loop6:
                     while(!(_loc8_ && this))
                     {
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              continue loop6;
                           }
                           addr40:
                           if(_loc9_ || buttonClass)
                           {
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr40);
                              }
                              addr63:
                           }
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                        var clip:MovieClip = new buttonClass();
                        if(_loc9_)
                        {
                           loop8:
                           while(true)
                           {
                              clip.TextField_LevelNum.text.text = (index + 1).toString();
                              loop9:
                              while(true)
                              {
                                 addr376:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(isOpen);
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop35:
                                          while(_loc9_)
                                          {
                                             loop33:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop10;
                                                }
                                                clip.gotoAndStop("Open");
                                                loop34:
                                                while(true)
                                                {
                                                   loop31:
                                                   while(true)
                                                   {
                                                      clip.MovieClip_MEInUse.visible = false;
                                                      addr355:
                                                      while(!_loc9_)
                                                      {
                                                         continue loop31;
                                                         §§goto(addr355);
                                                      }
                                                      addr323:
                                                      if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level) == 100)
                                                      {
                                                         addr326:
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr326:
                                                      }
                                                      else
                                                      {
                                                         addr268:
                                                         clip.MovieClip_Feather.gotoAndStop("Hidden");
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  clip.MovieClip_Feather.mouseEnabled = false;
                                                                  addr261:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr264:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ || isOpen))
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                               }
                                                               addr284:
                                                            }
                                                            loop26:
                                                            while(true)
                                                            {
                                                               addr237:
                                                               while(true)
                                                               {
                                                                  clip.isOpen = isOpen;
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     loop16:
                                                                     while(!_loc8_)
                                                                     {
                                                                        continue loop11;
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || buttonClass)
                                                                           {
                                                                              if(_loc9_ || isOpen)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && isOpen))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             while(!(_loc8_ && this))
                                                                                             {
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || isOpen)
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                continue loop34;
                                                                                             }
                                                                                             continue loop34;
                                                                                             addr223:
                                                                                             addr310:
                                                                                          }
                                                                                          clip.MovieClip_Stars.gotoAndStop(numStars.toString() + "_stars");
                                                                                          loop22:
                                                                                          for(; _loc9_ || buttonClass; while(true)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop22;
                                                                                          })
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          addr135:
                                                                                          while(true)
                                                                                          {
                                                                                             break loop21;
                                                                                             §§goto(addr135);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                       if(_loc8_ && buttonClass)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr96:
                                                                                             return clip;
                                                                                          }
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && level))
                                                                                       {
                                                                                          §§push(AngryBirdsFP11.sUserProgress);
                                                                                          if(!(_loc9_ || level))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(level);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().getStarsForLevel(§§pop()));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                numStars = §§pop();
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             break loop16;
                                                                                          }
                                                                                          addr255:
                                                                                       }
                                                                                       §§goto(addr147);
                                                                                    }
                                                                                    addr147:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        while(_loc9_ || level)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop35;
                                                                           }
                                                                           clip.MovieClip_Feather.mouseEnabled = false;
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr355);
                                                                     }
                                                                  }
                                                                  continue loop26;
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         addr274:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                       clip.gotoAndStop("Locked");
                                       §§goto(addr255);
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr274);
                                          }
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr144);
                     }
                  }
               }
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§goto(addr63);
            }
         }
         §§goto(addr60);
      }
      
      protected function §2?§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(_loc6_)
         {
            while(true)
            {
               loop1:
               for(; _loc6_; if(!(_loc6_ || image))
               {
                  continue;
               })
               {
                  while(this.§5!k§.length == 1)
                  {
                     if(_loc6_ || image)
                     {
                        continue loop1;
                     }
                  }
                  var offsetX:* = Number(0);
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§ !`§ = new Dictionary();
                           while(!(_loc6_ || image))
                           {
                           }
                           if(_loc5_ && image)
                           {
                              break;
                           }
                           while(false)
                           {
                              continue loop4;
                           }
                           §§push(0);
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           var i:* = §§pop();
                           loop7:
                           while(true)
                           {
                              if(i >= this.§5!k§.length)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(this.§5!k§.length * image.width);
                                       if(_loc6_ || dotCls)
                                       {
                                          §§push(§§pop() / 2);
                                          if(_loc6_ || image)
                                          {
                                             addr699:
                                             §§push(§§pop() + image.width * 1.5);
                                             if(!_loc5_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          offsetX = §§pop();
                                          break;
                                       }
                                       §§goto(addr699);
                                    }
                                    (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = (§^,§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
                                    addr624:
                                 }
                                 loop46:
                                 while(true)
                                 {
                                    loop47:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          addr585:
                                          if(_loc6_ || dotCls)
                                          {
                                             (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
                                             while(!(_loc5_ && image))
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop47;
                                                }
                                             }
                                             loop44:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break loop47;
                                                   }
                                                   break;
                                                }
                                                addr646:
                                                while(true)
                                                {
                                                   (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
                                                   continue loop44;
                                                }
                                             }
                                             addr573:
                                             while(true)
                                             {
                                                (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
                                                addr661:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§goto(addr646);
                                                   break loop47;
                                                }
                                             }
                                             addr666:
                                          }
                                          break;
                                       }
                                       continue loop46;
                                    }
                                    while(_loc6_ || image)
                                    {
                                       §§goto(addr624);
                                       §§goto(addr585);
                                    }
                                    §§goto(addr661);
                                 }
                              }
                              else
                              {
                                 if(!(_loc6_ || this))
                                 {
                                    break;
                                 }
                                 dotCls = AssetCache.§,!k§("Button_Dot");
                                 if(_loc5_)
                                 {
                                 }
                                 image = new dotCls();
                                 if(_loc6_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       image.x = AngryBirdsFP11.§8!Z§ / 2 + offsetX - this.§5!k§.length * image.width / 2;
                                       loop9:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             image.y = (§^,§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
                                             loop11:
                                             for(; _loc6_ || this; while(true)
                                             {
                                                if(!(_loc6_ || dotCls))
                                                {
                                                   continue loop11;
                                                }
                                                this.updatePageNumber(i);
                                                §§goto(addr398);
                                             })
                                             {
                                                while(true)
                                                {
                                                   §§push(i);
                                                   while(true)
                                                   {
                                                      if(§§pop() != this.§1i§)
                                                      {
                                                         image.gotoAndStop("UnSelected");
                                                         while(true)
                                                         {
                                                            if(_loc6_ || offsetX)
                                                            {
                                                               if(!(_loc5_ && dotCls))
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        while(_loc6_)
                                                                        {
                                                                        }
                                                                        continue loop8;
                                                                        addr398:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§@v§.mClip.addChild(image);
                                                                        while(true)
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              this.§ !`§[image] = i;
                                                                              continue loop15;
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && image)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(_loc5_ && offsetX)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(offsetX);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop() + image.width));
                                                                                    }
                                                                                    offsetX = §§pop();
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || image))
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             image.addEventListener(MouseEvent.MOUSE_DOWN,this.§1c§);
                                                                                             loop25:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                while(_loc6_ || image)
                                                                                                {
                                                                                                   image.buttonMode = true;
                                                                                                   continue loop21;
                                                                                                   if(_loc6_ || dotCls)
                                                                                                   {
                                                                                                      if(_loc6_ || offsetX)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop21;
                                                                                                   }
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                          while(_loc6_ || image)
                                                                                          {
                                                                                             (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          addr432:
                                                                                          addr451:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr467:
                                                                                             while(true)
                                                                                             {
                                                                                                image.gotoAndStop("Selected");
                                                                                                addr460:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop23;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr466:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
                                                                                       §§goto(addr451);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                            §§goto(addr460);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               do
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                               while(false);
                                                               
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr466);
                                                      if(!(_loc6_ || image))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr179);
                                                      §§push(int(§§pop()));
                                                   }
                                                   if(_loc5_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr215);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr429);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr666);
                           }
                        }
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
      }
      
      protected function §;!`§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || i)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§@!A§);
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(_loc3_)
                     {
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§@!A§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§pop().clean();
                              while(!_loc3_)
                              {
                              }
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              if(_loc2_ && i)
                              {
                                 continue loop3;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr44);
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§push(0);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  loop8:
                  while(true)
                  {
                     §§push(i);
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(§§pop() >= this.§?!K§.length)
                           {
                              if(_loc3_ || _loc2_)
                              {
                              }
                              loop9:
                              while(true)
                              {
                                 this.§?!K§ = [];
                                 addr200:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§'!L§);
                                       if(_loc3_)
                                       {
                                          if(§§pop().mClip.numChildren <= 0)
                                          {
                                             while(!(_loc2_ && _loc3_))
                                             {
                                                continue loop9;
                                             }
                                             continue;
                                             addr117:
                                          }
                                          else
                                          {
                                             addr188:
                                          }
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr172:
                                             this.§'!L§.mClip.removeChildAt(0);
                                             if(!(_loc3_ || this))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr237:
                                          if(_loc3_ || i)
                                          {
                                             continue loop8;
                                          }
                                          addr267:
                                          loop17:
                                          for(; !_loc2_; §§goto(addr237))
                                          {
                                             while(true)
                                             {
                                                §§push(i);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr235:
                                                   §§push(§§pop() + 1);
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr236:
                                                      while(true)
                                                      {
                                                         i = §§pop();
                                                         continue loop17;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr235:
                                                }
                                                §§goto(addr235);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr247);
                                          }
                                          addr247:
                                       }
                                       §§goto(addr172);
                                    }
                                    addr304:
                                    addr280:
                                    this.§?!K§[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.§1c§);
                                    §§push(this.§@v§);
                                    if(!(_loc3_ || this))
                                    {
                                       while(§§pop().mClip.contains(this.§?!K§[i]))
                                       {
                                          §§goto(addr304);
                                          §§goto(addr280);
                                       }
                                       §§goto(addr225);
                                       addr297:
                                    }
                                    §§pop().mClip.removeChild(this.§?!K§[i]);
                                    §§goto(addr267);
                                 }
                              }
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr236);
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function §1c§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && e))
         {
            while(true)
            {
               loop1:
               while(_loc3_ || _loc2_)
               {
                  while(true)
                  {
                     §§push(this.§ v§);
                     if(_loc3_ || e)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        do
                        {
                           while(true)
                           {
                              this.§?M§(this.§ !`§[e.target]);
                              while(!(_loc2_ && e))
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    §§goto(addr54);
                                 }
                                 §§goto(addr102);
                              }
                              continue loop1;
                           }
                        }
                        while(!(_loc3_ || e));
                        
                        break;
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr112);
      }
      
      protected function §2!N§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(this.§ v§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  loop2:
                  while(_loc2_)
                  {
                     loop3:
                     do
                     {
                        mNextState = StateLevelSelection.STATE_NAME;
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               §§goto(addr38);
            }
         }
         addr38:
      }
      
      protected function §?M§(pageNum:int, instantMove:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && instantMove))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           addr269:
                           while(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 this.§ v§ = true;
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(!(_loc6_ && instantMove))
                        {
                           §§goto(addr169);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr223);
      }
      
      protected function §=!N§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            if(!_loc2_)
            {
            }
         }
         §§push(0);
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop0:
         while(true)
         {
            §§push(i);
            if(!(_loc3_ && _loc2_))
            {
               if(!(_loc3_ && this))
               {
                  if(§§pop() >= this.§?!K§.length)
                  {
                     loop1:
                     while(true)
                     {
                        addr137:
                        addr254:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§ v§ = false;
                              continue loop1;
                           }
                        }
                        loop11:
                        while(true)
                        {
                           if(§§pop() != this.§1i§)
                           {
                              §§push(this.§?!K§);
                              if(_loc2_ || i)
                              {
                                 §§push(i);
                                 if(!_loc3_)
                                 {
                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                    loop12:
                                    while(true)
                                    {
                                       addr161:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc2_ || i)
                                             {
                                                addr175:
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(i);
                                                   addr142:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            i = §§pop();
                                                            addr149:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!(_loc3_ && i))
                                                               {
                                                                  break;
                                                               }
                                                               addr251:
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  addr240:
                                                                  while(!_loc2_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  addr237:
                                                                  (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
                                                                  while(true)
                                                                  {
                                                                     addr212:
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        this.updatePageNumber(i);
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr240);
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr148:
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr257:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§?!K§);
                                                addr246:
                                                while(true)
                                                {
                                                   §§push(i);
                                                   addr247:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()].gotoAndStop("Selected");
                                                      §§goto(addr251);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr257);
                        }
                     }
                  }
                  §§goto(addr254);
                  §§push(i);
               }
               §§goto(addr142);
            }
            §§goto(addr148);
         }
      }
      
      protected function updatePageNumber(index:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_)
         {
         }
         while(true)
         {
            while(!(_loc3_ && _loc2_))
            {
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§ ^§.text = LevelManager.§ m§(LevelManager.§3V§).pageIndexes[index];
               while(_loc3_)
               {
               }
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
