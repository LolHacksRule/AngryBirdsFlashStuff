package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UIRepeaterButtonRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UITextFieldRovio;
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
         if(!(TWEEN_TIME && STATE_NAME))
         {
            while(true)
            {
               STATE_NAME = "LevelSelectionState";
               addr44:
               if(!(STATE_NAME || STATE_NAME))
               {
                  continue;
               }
               return;
               addr61:
            }
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               TWEEN_TIME = 0.5;
               while(!TWEEN_TIME)
               {
                  while(STATE_NAME)
                  {
                     continue loop2;
                     sPreviousState = "";
                     if(TWEEN_TIME)
                     {
                        continue;
                     }
                     §§goto(addr44);
                  }
               }
               continue loop1;
            }
         }
         §§goto(addr61);
      }
      
      protected var §6T§:Boolean = false;
      
      protected var §5!?§:UIContainerRovio;
      
      protected var §;!W§:UIContainerRovio;
      
      protected var §=!X§:MovieClip;
      
      protected var §[!2§:Array;
      
      protected var §5!3§:Array;
      
      protected var §,!!§:int = 0;
      
      protected var §3[§:int = 0;
      
      protected var §3!&§:int = 0;
      
      protected var §^!U§:Boolean = false;
      
      protected var §9!f§:§!T§ = null;
      
      protected var §%g§:Dictionary;
      
      protected var §+q§:Array;
      
      protected var §!!"§:Array;
      
      protected var § !A§:§!!8§;
      
      protected var §6Z§:Number = 0;
      
      public function StateLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               while(_loc3_ || _loc3_)
               {
                  loop2:
                  while(!(_loc4_ && name))
                  {
                     while(true)
                     {
                        super(initState,name);
                        while(!_loc3_)
                        {
                        }
                        if(!_loc4_)
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
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               super.init();
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     while(_loc1_)
                     {
                        this.initView();
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§;!W§);
                           if(_loc1_)
                           {
                              if(§§pop().mClip.numChildren <= 0)
                              {
                                 loop5:
                                 while(_loc1_ || _loc1_)
                                 {
                                    do
                                    {
                                       this.§5!3§ = [];
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc2_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc2_ && _loc1_)
                                                {
                                                   this.§;!W§.mClip.removeChildAt(0);
                                                   break;
                                                }
                                                addr135:
                                                this.§[!2§ = [];
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          break loop5;
                                       }
                                    }
                                    while(!(_loc1_ || this));
                                    
                                    return;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr135);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §5!M§ = new §6"§(this);
               addr137:
               while(true)
               {
               }
               addr120:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               loop4:
               while(_loc2_)
               {
                  this.§;!W§ = §5!M§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
                  loop5:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           this.§5!?§ = §5!M§.getItemByName("Container_LevelSelection") as UIContainerRovio;
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop4;
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr120);
                     }
                     else
                     {
                        while(true)
                        {
                           §5!M§.init(§>!^§.§8'§.Views.View_LevelSelection[0]);
                           continue loop3;
                        }
                        addr130:
                     }
                  }
               }
               §§goto(addr137);
            }
         }
         §§goto(addr130);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            while(true)
            {
               super.activate();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(§]!B§.§>F§);
                     while(true)
                     {
                        §§pop().clearLevel();
                        addr370:
                        addr363:
                        while(true)
                        {
                           continue loop2;
                        }
                        §§push(§]!B§.§>F§);
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§pop().§,>§(false);
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              this.initLevelsRepeater();
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    AngryBirdsFP11.playThemeMusic();
                                    loop10:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(this.§5!3§.length != 1)
                                          {
                                             (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(true);
                                             loop12:
                                             while(!_loc2_)
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr291:
                                                      while(true)
                                                      {
                                                         (§5!M§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(false);
                                                         addr288:
                                                         while(true)
                                                         {
                                                            addr276:
                                                            while(true)
                                                            {
                                                               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(false);
                                                               addr259:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      addr139:
                                                      while(_loc1_ || _loc2_)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§6Z§ = this.§;!W§.x;
                                                               addr122:
                                                               while(_loc1_ || this)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr273:
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr370);
                                                loop20:
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               while(§5!M§.stage)
                                                               {
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr99:
                                                                              while(true)
                                                                              {
                                                                                 §5!M§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&-§);
                                                                                 continue loop20;
                                                                              }
                                                                              addr99:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(_loc1_ || _loc1_)
                                                                              {
                                                                                 if(_loc1_ || this)
                                                                                 {
                                                                                    (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(true);
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr139);
                                                                                    }
                                                                                    addr165:
                                                                                 }
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(false);
                                                                                    addr303:
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr291);
                                                                                       continue loop25;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr168);
                                                                              }
                                                                              addr168:
                                                                              addr204:
                                                                           }
                                                                        }
                                                                        §§goto(addr165);
                                                                     }
                                                                     §§goto(addr122);
                                                                  }
                                                                  §§goto(addr99);
                                                               }
                                                               addr33:
                                                               return;
                                                               addr115:
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr288);
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr313);
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr33);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      protected function §&-§(keyEvent:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  if(this.§5!3§.length <= 1)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     while(true)
                     {
                     }
                     addr135:
                  }
                  while(true)
                  {
                     if(keyEvent.keyCode != Keyboard.LEFT)
                     {
                        if(keyEvent.keyCode == Keyboard.RIGHT)
                        {
                           loop4:
                           while(_loc3_ || keyEvent)
                           {
                              if(_loc3_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§+B§();
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(_loc2_ && keyEvent)
                                          {
                                             this.§!![§();
                                             break loop4;
                                          }
                                          addr120:
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr29);
                                 }
                              }
                              else
                              {
                                 addr119:
                              }
                              §§goto(addr120);
                           }
                           addr110:
                        }
                        addr29:
                        return;
                     }
                     §§goto(addr119);
                     §§goto(addr135);
                  }
               }
               return;
            }
         }
         §§goto(addr110);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || superReturn)
         {
         }
         if(!_loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc3_ || superReturn))
               {
               }
               if(_loc4_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(super.run(deltaTime));
               if(!(_loc4_ && deltaTime))
               {
                  §§push(int(§§pop()));
               }
               var superReturn:* = §§pop();
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(superReturn);
                     loop4:
                     while(true)
                     {
                        if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                        {
                           this.§7v§();
                           loop5:
                           while(true)
                           {
                              addr156:
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.§%<§();
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               while(true)
               {
                  §§goto(addr183);
               }
            }
         }
      }
      
      protected function §7v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var j:* = 0;
         if(!_loc3_)
         {
            if(!_loc3_)
            {
               addr28:
            }
            §§push(0);
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               loop1:
               while(_loc4_ || i)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§[!2§);
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              loop2:
                              while(true)
                              {
                                 loop3:
                                 while(!(_loc3_ && i))
                                 {
                                    §§push(this.§3!&§);
                                    loop4:
                                    for(; !(_loc3_ && this); if(_loc3_ && i)
                                    {
                                       continue;
                                    },if(!_loc3_)
                                    {
                                       §§goto(addr233);
                                    },§§goto(addr567))
                                    {
                                       if(!(_loc3_ && j))
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(this.§,!!§);
                                             loop5:
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      loop7:
                                                      while(_loc4_ || this)
                                                      {
                                                         §§push(this.§,!!§);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && j))
                                                            {
                                                               if(_loc4_ || j)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§3!&§);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§,!!§);
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§push(this.§3!&§);
                                                                        addr233:
                                                                        continue loop5;
                                                                        if(!(_loc4_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           this.§3[§ = this.§3!&§;
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!(_loc4_ || j))
                                                                                       {
                                                                                          break loop9;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§3[§ = this.§3!&§ - 1;
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          addr262:
                                                                                       }
                                                                                       §§goto(addr514);
                                                                                    }
                                                                                    addr324:
                                                                                    while(_loc4_ || this)
                                                                                    {
                                                                                       this.§3[§ = this.§3!&§ + 1;
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                    break loop10;
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr243:
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || i)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || i)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc4_ || i))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_ || i)
                                                                                                {
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      addr92:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§ !A§.§`]§(this.§+q§[this.§3[§].red,this.§+q§[this.§3[§].green,this.§+q§[this.§3[§].blue);
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr92:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop57:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(j);
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr844:
                                                                                                            if(§§pop() >= this.§[!2§.length)
                                                                                                            {
                                                                                                               addr846:
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§3!&§ = i;
                                                                                                                  addr837:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break loop29;
                                                                                                                     }
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                               }
                                                                                                               loop55:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§[!2§);
                                                                                                                  addr824:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(i);
                                                                                                                     loop61:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                        addr829:
                                                                                                                        (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && this))
                                                                                                                           {
                                                                                                                              addr788:
                                                                                                                              if(_loc4_ || i)
                                                                                                                              {
                                                                                                                                 this.updatePageNumber(i);
                                                                                                                                 addr779:
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§;!W§);
                                                                                                                                    if(_loc4_ || i)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop().x);
                                                                                                                                       loop32:
                                                                                                                                       for(; !(_loc3_ && j); §§push(this.§6Z§),if(_loc4_ || i)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       },if(!(_loc4_ || i))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr652);
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          §§push(this.§5!3§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || j)
                                                                                                                                             {
                                                                                                                                                §§push(i);
                                                                                                                                                while(!(_loc3_ && i))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr928:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop35:
                                                                                                                                                         while(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr769:
                                                                                                                                                                        if(_loc4_ || j)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                        addr856:
                                                                                                                                                                        addr691:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(j);
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr700:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr703:
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                       addr623:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          j = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop27:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(j);
                                                                                                                                                                                                addr538:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ || i)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr561:
                                                                                                                                                                                                            if(§§pop() >= this.§[!2§.length)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr610:
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr584:
                                                                                                                                                                                                                  §§push(this.§[!2§);
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr587:
                                                                                                                                                                                                                     §§push(j);
                                                                                                                                                                                                                     if(!(_loc4_ || i))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop61;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                                     if(!(_loc4_ || j))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr569:
                                                                                                                                                                                                                     j++;
                                                                                                                                                                                                                     if(_loc4_ || j)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop27;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr853:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop57;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr568:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(j);
                                                                                                                                                                                                                        addr861:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                                           addr865:
                                                                                                                                                                                                                           §§goto(addr856);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr860:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr905:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr873:
                                                                                                                                                                                                               j = int(0);
                                                                                                                                                                                                               §§goto(addr875);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr851:
                                                                                                                                                                                                            break loop8;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr850:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr568);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr569);
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr705);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr705:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr702:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr403:
                                                                                                                                                                                 §§push(i);
                                                                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr623);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + 1);
                                                                                                                                                                              break loop4;
                                                                                                                                                                              addr401:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop35;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop57;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr700);
                                                                                                                                                                  §§goto(addr850);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr926:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop35;
                                                                                                                                                               }
                                                                                                                                                               addr892:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop31;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr929:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§6Z§);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  break loop32;
                                                                                                                                                               }
                                                                                                                                                               break loop32;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr752:
                                                                                                                                                         addr928:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr925:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr926);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr752);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                   if(_loc4_ || j)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr925);
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr928);
                                                                                                                                                }
                                                                                                                                                addr735:
                                                                                                                                                addr914:
                                                                                                                                             }
                                                                                                                                             §§push(this.§5!3§);
                                                                                                                                             addr652:
                                                                                                                                             break;
                                                                                                                                             if(_loc3_ && i)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(i);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && j))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr691);
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr892);
                                                                                                                                                         }
                                                                                                                                                         addr891:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr691);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr891);
                                                                                                                                                   }
                                                                                                                                                   addr888:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr735);
                                                                                                                                                }
                                                                                                                                                §§goto(addr928);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr913:
                                                                                                                                             }
                                                                                                                                             §§goto(addr914);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr888);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr887);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop().x);
                                                                                                                                       }
                                                                                                                                       addr909:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr913);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr785:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr933:
                                                                                                                           §§push(this.§;!W§);
                                                                                                                           §§goto(addr909);
                                                                                                                        }
                                                                                                                        §§goto(addr905);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.§[!2§);
                                                                                                               addr870:
                                                                                                            }
                                                                                                            §§goto(addr860);
                                                                                                         }
                                                                                                      }
                                                                                                      addr875:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr829);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr270:
                                                                                                   while(!(_loc3_ && j))
                                                                                                   {
                                                                                                      if(!(_loc3_ && i))
                                                                                                      {
                                                                                                         §§goto(addr92);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§3!&§ = i;
                                                                                                         while(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc3_ && j)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.§[!2§);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(i);
                                                                                                                     if(!(_loc3_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                           §§goto(addr507);
                                                                                                                        }
                                                                                                                        §§goto(addr861);
                                                                                                                     }
                                                                                                                     §§goto(addr587);
                                                                                                                  }
                                                                                                                  §§goto(addr824);
                                                                                                               }
                                                                                                               §§goto(addr584);
                                                                                                            }
                                                                                                            §§goto(addr702);
                                                                                                         }
                                                                                                         §§goto(addr837);
                                                                                                         addr564:
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                   addr270:
                                                                                                }
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   if(!(_loc3_ && j))
                                                                                                   {
                                                                                                      §§goto(addr92);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr769);
                                                                                                   }
                                                                                                }
                                                                                                addr507:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr626);
                                                                                                }
                                                                                                §§goto(addr569);
                                                                                                §§goto(addr837);
                                                                                             }
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
                                                                                                break loop7;
                                                                                             }
                                                                                             addr199:
                                                                                          }
                                                                                          §§goto(addr610);
                                                                                       }
                                                                                       continue loop7;
                                                                                       addr132:
                                                                                    }
                                                                                    §§goto(addr788);
                                                                                 }
                                                                                 §§goto(addr785);
                                                                              }
                                                                              §§goto(addr779);
                                                                              §§goto(addr270);
                                                                           }
                                                                           addr443:
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr430);
                                                                           }
                                                                           §§goto(addr598);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && i)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§goto(addr324);
                                                                        }
                                                                        this.updatePageNumber(i);
                                                                        §§goto(addr443);
                                                                     }
                                                                  }
                                                                  §§goto(addr873);
                                                               }
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         j = §§pop();
                                                         §§goto(addr853);
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr458);
                                                      }
                                                      §§goto(addr580);
                                                   }
                                                }
                                                §§goto(addr53);
                                             }
                                          }
                                          §§goto(addr873);
                                       }
                                       §§goto(addr403);
                                    }
                                    §§push(int(§§pop()));
                                    break loop1;
                                 }
                                 §§goto(addr564);
                              }
                           }
                           §§goto(addr933);
                        }
                        §§goto(addr844);
                     }
                     §§goto(addr561);
                  }
                  §§goto(addr851);
               }
               while(true)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!(_loc3_ && i))
                     {
                        break;
                     }
                     §§goto(addr622);
                  }
                  §§goto(addr538);
                  §§goto(addr411);
               }
               i = §§pop();
            }
         }
         §§goto(addr28);
      }
      
      protected function §%<§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         var distance:* = NaN;
         if(!(_loc3_ && this))
         {
            if(_loc4_ || this)
            {
               addr43:
            }
            §§push(0);
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            while(true)
            {
               §§push(i);
               if(!_loc3_)
               {
                  if(_loc4_ || this)
                  {
                     if(§§pop() >= this.§5!3§.length)
                     {
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && i))
                              {
                                 if(_loc4_ || this)
                                 {
                                    addr88:
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          loop30:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr275:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         distance = §§pop();
                                                         while(true)
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  if(Math.abs(this.§5!3§[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr269:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5!3§);
                                                                           addr238:
                                                                           while(true)
                                                                           {
                                                                              §§push(i);
                                                                              addr239:
                                                                              while(true)
                                                                              {
                                                                                 §§pop()[§§pop()].mClip.alpha = 1 - distance / 1000;
                                                                                 addr247:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr268:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§5!3§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(i);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop()[§§pop()].mClip.alpha < 1)
                                                                           {
                                                                              while(_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(this.§5!3§);
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(i);
                                                                                                   addr199:
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      (§§pop()[§§pop()] as UIComponentRovio).setEnabled(false);
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(i);
                                                                                                            addr97:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            addr144:
                                                                                                         }
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                      loop4:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(Math.abs(distance)));
                                                                                                         addr302:
                                                                                                         while(_loc4_)
                                                                                                         {
                                                                                                            distance = §§pop();
                                                                                                            break loop26;
                                                                                                         }
                                                                                                         addr337:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            distance = §§pop();
                                                                                                            addr338:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                addr198:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr295:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(distance);
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                       while(_loc4_ || i)
                                                                                       {
                                                                                          §§goto(addr295);
                                                                                       }
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          addr341:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr337);
                                                                                             continue loop33;
                                                                                          }
                                                                                       }
                                                                                       addr345:
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr268);
                                                                                 }
                                                                              }
                                                                              §§goto(addr247);
                                                                              addr220:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§5!3§);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           §§goto(addr198);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         addr286:
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() > 1000)
                                                   {
                                                      continue loop30;
                                                   }
                                                   §§goto(addr250);
                                                   §§goto(addr275);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr286);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr345);
                  }
                  §§goto(addr97);
               }
               §§goto(addr106);
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               if(§5!M§.stage)
               {
                  while(true)
                  {
                     addr160:
                     addr83:
                     while(true)
                     {
                        §5!M§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&-§);
                        addr152:
                        while(true)
                        {
                           addr140:
                           while(true)
                           {
                           }
                        }
                     }
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     LevelManager.§;p§ = null;
                     loop10:
                     for(; _loc1_ || this; if(!_loc1_)
                     {
                        continue;
                     },if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr152);
                        }
                        while(true)
                        {
                        }
                        addr104:
                     },loop9:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr83);
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
                           (§5!M§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                           §§goto(addr104);
                           continue loop9;
                        }
                     },§§goto(addr160))
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr137:
                        while(true)
                        {
                           break loop10;
                        }
                     }
                     while(!(_loc2_ && this))
                     {
                        this.§9!§();
                        §§goto(addr112);
                        §§goto(addr52);
                     }
                     addr52:
                     §§goto(addr140);
                  }
               }
               while(true)
               {
                  super.deActivate();
                  §§goto(addr137);
                  §§goto(addr140);
               }
            }
         }
         §§goto(addr152);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               §§push(this.§9!f§);
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        super.cleanup();
                        addr48:
                        loop9:
                        while(_loc1_ || _loc1_)
                        {
                           addr65:
                           if(!(_loc2_ && _loc1_))
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr36);
                              }
                              §§goto(addr43);
                              continue;
                           }
                           addr115:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§9!f§ = null;
                                 while(_loc1_)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       break loop9;
                                    }
                                    if(_loc1_ || _loc2_)
                                    {
                                       return;
                                       addr43:
                                    }
                                 }
                              }
                              §§goto(addr65);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           continue loop8;
                           §§goto(addr48);
                        }
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
                  addr131:
                  §§push(this.§9!f§);
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§pop().stop();
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               loop8:
               while(_loc6_ || eventName)
               {
                  §§push(component is UIRepeaterButtonRovio);
                  loop9:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop10:
                     while(_loc6_)
                     {
                        loop11:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop12:
                              for(; _loc6_ || this; if(_loc5_ && eventIndex)
                              {
                                 continue;
                              },LevelManager.§]!R§(LevelManager.§"%§(eventName.toLowerCase())),while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr221);
                              },§§goto(addr338))
                              {
                                 while(_loc6_)
                                 {
                                    §§push((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                    while(_loc6_)
                                    {
                                       continue loop9;
                                       addr211:
                                       if(!(_loc6_ || this))
                                       {
                                          continue;
                                       }
                                       addr219:
                                       if(!§§pop())
                                       {
                                          do
                                          {
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(this.§^!U§);
                                                   if(!(_loc5_ && eventName))
                                                   {
                                                      addr202:
                                                      if(_loc6_ || eventName)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr211);
                                                         }
                                                         else
                                                         {
                                                            loop16:
                                                            while(_loc6_ || eventName)
                                                            {
                                                               §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  addr276:
                                                                  addr374:
                                                                  while(_loc6_)
                                                                  {
                                                                     §§push((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr246:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(!(_loc5_ && eventIndex))
                                                                           {
                                                                              §§goto(addr202);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || component)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              addr356:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr302:
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr263:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop22;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr246:
                                                                           addr347:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr302);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr356);
                                                                           addr299:
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr347);
                                                               §§goto(addr311);
                                                            }
                                                            addr311:
                                                            addr346:
                                                         }
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr219);
                                                }
                                             }
                                             continue loop12;
                                          }
                                          while(_loc5_);
                                          
                                       }
                                       var _loc4_:* = eventName;
                                       if(_loc6_ || eventName)
                                       {
                                          §§push("BACK");
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || eventName)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || eventName)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || eventIndex)
                                                      {
                                                         §§push(0);
                                                         if(_loc5_ && component)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr491:
                                                         §§push(3);
                                                         if(_loc5_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("NEXT");
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr432:
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               addr435:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc5_)
                                                                     {
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr491);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("PREV");
                                                                  if(_loc6_)
                                                                  {
                                                                     addr450:
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc5_ && eventName))
                                                                        {
                                                                           addr466:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr469:
                                                                                 §§push(2);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr491);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("FULLSCREEN_BUTTON");
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr487:
                                                                                 §§push(_loc4_);
                                                                                 addr486:
                                                                              }
                                                                              §§goto(addr487);
                                                                           }
                                                                           §§goto(addr507);
                                                                        }
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr491);
                                                                           }
                                                                        }
                                                                        else if(true)
                                                                        {
                                                                           addr507:
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 addr143:
                                                                                 SoundEngine.§9!X§("Menu_Back");
                                                                                 addr144:
                                                                                 if(!(_loc6_ || component))
                                                                                 {
                                                                                    §§goto(addr144);
                                                                                 }
                                                                                 mNextState = StateChapterSelection.STATE_NAME;
                                                                                 addr127:
                                                                                 if(!(_loc6_ || eventName))
                                                                                 {
                                                                                    §§goto(addr127);
                                                                                 }
                                                                                 break;
                                                                              case 1:
                                                                                 this.§+B§();
                                                                                 break;
                                                                                 addr110:
                                                                                 addr105:
                                                                              case 2:
                                                                                 this.§!![§();
                                                                                 addr97:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr97);
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_ || eventIndex)
                                                                                    {
                                                                                       break;
                                                                                       addr76:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr110);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr105);
                                                                              case 3:
                                                                                 addr71:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && component))
                                                                                          {
                                                                                             addr46:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr37:
                                                                                                AngryBirdsFP11.§5V§.§>J§();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc6_ || eventName)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr37);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr46);
                                                                                                }
                                                                                                addr43:
                                                                                                §§goto(addr43);
                                                                                             }
                                                                                             §§goto(addr71);
                                                                                          }
                                                                                          §§goto(addr127);
                                                                                       }
                                                                                       §§goto(addr97);
                                                                                    }
                                                                                    §§goto(addr143);
                                                                                 }
                                                                                 §§goto(addr76);
                                                                           }
                                                                           return;
                                                                           §§push(4);
                                                                        }
                                                                        §§goto(addr507);
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                                  §§goto(addr486);
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                      §§goto(addr450);
                                                   }
                                                   §§goto(addr507);
                                                }
                                                §§goto(addr435);
                                             }
                                             §§goto(addr450);
                                          }
                                          §§goto(addr432);
                                       }
                                       §§goto(addr469);
                                    }
                                    continue loop10;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr346);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr368);
                                 §§goto(addr330);
                              }
                              addr330:
                           }
                           else
                           {
                              §§goto(addr145);
                           }
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop8;
                     }
                  }
               }
            }
         }
         §§goto(addr374);
      }
      
      protected function §+B§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            if(_loc3_ || _loc2_)
            {
               SoundEngine.§9!X§("Menu_Confirm");
               if(!(_loc4_ && this))
               {
                  loop0:
                  while(!_loc4_)
                  {
                     §§push(this.§^!U§);
                     if(!(_loc4_ && this))
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           addr145:
                           if(_loc3_ || _loc1_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              addr138:
                              var _loc1_:*;
                              §§push((_loc1_ = this).§,!!§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc2_:* = §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc1_.§,!!§ = _loc2_;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr138:
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                           }
                           §§goto(addr138);
                           addr145:
                        }
                        §§goto(addr138);
                     }
                     return;
                  }
                  while(true)
                  {
                     this.§,!N§(this.§,!!§);
                     §§goto(addr145);
                  }
               }
            }
            §§goto(addr145);
         }
         §§goto(addr138);
      }
      
      protected function §!![§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && this))
            {
               SoundEngine.§9!X§("Menu_Confirm");
               if(_loc4_ || _loc3_)
               {
                  loop0:
                  while(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        §§push(this.§^!U§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_)
                              {
                                 if(true)
                                 {
                                    var _loc1_:*;
                                    §§push((_loc1_ = this).§,!!§);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!_loc3_)
                                    {
                                       _loc1_.§,!!§ = _loc2_;
                                    }
                                 }
                                 else
                                 {
                                    addr142:
                                 }
                                 continue loop0;
                                 if(!_loc3_)
                                 {
                                    addr128:
                                    loop3:
                                    while(true)
                                    {
                                       this.§,!N§(this.§,!!§);
                                       addr149:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr153:
                                    addr128:
                                 }
                                 break;
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr128);
                        }
                        break;
                     }
                     return;
                  }
               }
               while(_loc3_ && this)
               {
                  §§goto(addr149);
               }
               §§goto(addr142);
            }
            §§goto(addr128);
         }
         §§goto(addr72);
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc9_)
         {
         }
         var levels:Array = null;
         var leftThemeCls:Class = null;
         var leftThemeClip:MovieClip = null;
         var rightThemeCls:Class = null;
         var rightThemeClip:MovieClip = null;
         if(_loc9_ || i)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr61:
                  while(true)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr61);
         }
         var offsetX:Number = 0;
         if(_loc9_ || i)
         {
            loop5:
            while(true)
            {
               this.§+q§ = [];
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     this.§!!"§ = [];
                     addr173:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           this.§,!!§ = LevelManager.§;![§(LevelManager.§?Q§).§ !_§;
                           addr161:
                           while(!_loc10_)
                           {
                              if(!_loc10_)
                              {
                                 continue loop9;
                              }
                              continue loop5;
                           }
                           continue loop7;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            loop14:
            while(true)
            {
               this.§3!&§ = this.§,!!§;
               loop15:
               while(_loc9_)
               {
                  loop16:
                  while(!_loc10_)
                  {
                     loop17:
                     while(true)
                     {
                        trace("We are at page: " + this.§,!!§);
                        while(!_loc10_)
                        {
                           if(_loc9_)
                           {
                              if(_loc9_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       break loop17;
                                    }
                                    continue loop14;
                                 }
                                 continue loop16;
                              }
                              continue;
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr138);
                     }
                     continue loop15;
                  }
                  §§goto(addr173);
               }
               §§goto(addr161);
            }
         }
      }
      
      protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:ChapterModel) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || pageNum)
         {
         }
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         if(!(_loc14_ && offsetX))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     loop7:
                     while(!(_loc14_ && levels))
                     {
                        while(true)
                        {
                           do
                           {
                              addr72:
                              loop10:
                              while(!(_loc14_ && pageNum))
                              {
                                 if(_loc14_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc14_)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc15_)
                                 {
                                    continue loop1;
                                 }
                                 addr107:
                                 while(true)
                                 {
                                    addr104:
                                    while(true)
                                    {
                                       break loop10;
                                    }
                                 }
                              }
                              while(_loc15_)
                              {
                                 if(_loc15_ || pageNum)
                                 {
                                    continue loop7;
                                 }
                                 continue loop0;
                                 §§goto(addr72);
                              }
                              §§goto(addr104);
                           }
                           while(false);
                           
                           var list:Array = new Array();
                           if(!_loc14_)
                           {
                              loop11:
                              while(true)
                              {
                                 addr141:
                                 while(true)
                                 {
                                    list[0] = new Array();
                                    continue loop11;
                                 }
                              }
                              addr149:
                           }
                           while(true)
                           {
                              if(!_loc15_)
                              {
                                 continue;
                              }
                              if(!_loc14_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                              §§goto(addr141);
                           }
                           var buttonCls:Class = AssetCache.§-9§(this.§!!"§[pageNum]);
                           if(_loc15_ || pageNum)
                           {
                           }
                           var i:Number = 0;
                           while(true)
                           {
                              if(i >= levels.length)
                              {
                                 if(!(_loc14_ && offsetX))
                                 {
                                    addr508:
                                 }
                                 addr509:
                                 repeaterXML = <Repeater/>;
                                 if(!(_loc14_ && offsetX))
                                 {
                                    addr683:
                                    §§push(Boolean(levels.length == 15));
                                    §§push(Boolean(levels.length == 15));
                                    if(!_loc14_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr692:
                                    if(!§§pop())
                                    {
                                       addr689:
                                       §§pop();
                                       addr690:
                                       §§push(levels);
                                       if(_loc15_ || pageNum)
                                       {
                                          §§push(§§pop().length == 10);
                                          if(!_loc14_)
                                          {
                                             if(_loc15_)
                                             {
                                                addr660:
                                                §§push(Boolean(§§pop()));
                                                if(_loc15_ || this)
                                                {
                                                   if(!(_loc14_ && pageNum))
                                                   {
                                                      addr674:
                                                      if(§§pop())
                                                      {
                                                         repeaterXML.@name = "Repeater_LevelSelection15";
                                                         addr619:
                                                         repeaterXML.@button = this.§!!"§[pageNum];
                                                         addr676:
                                                         addr677:
                                                         addr642:
                                                         if(!_loc14_)
                                                         {
                                                            repeaterXML.@enabled = "True";
                                                            addr588:
                                                            if(_loc15_)
                                                            {
                                                               if(_loc15_ || offsetX)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        if(_loc15_ || pageNum)
                                                                        {
                                                                           repeaterXML.@buttonSelectionType = "NO_SELECTION";
                                                                           addr573:
                                                                           if(_loc15_ || offsetX)
                                                                           {
                                                                              addr566:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr543:
                                                                                 repeaterXML.@fromLibrary = "true";
                                                                                 if(_loc15_ || pageNum)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(!(_loc14_ && levels))
                                                                                             {
                                                                                                if(_loc15_ || levels)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                   var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,this.§;!W§,null,null);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      levelRepeater.§%U§(list);
                                                                                                      addr842:
                                                                                                      addr855:
                                                                                                      if(!(_loc14_ && levels))
                                                                                                      {
                                                                                                         levelRepeater.setVisibility(true);
                                                                                                         addr837:
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr814:
                                                                                                            if(!(_loc14_ && levels))
                                                                                                            {
                                                                                                               levelRepeater.x += offsetX;
                                                                                                               addr796:
                                                                                                               if(!(_loc14_ && offsetX))
                                                                                                               {
                                                                                                                  this.§;!W§.addComponent(levelRepeater);
                                                                                                                  addr789:
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        this.§5!3§.push(levelRepeater);
                                                                                                                        addr775:
                                                                                                                        addr782:
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              addr766:
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr736:
                                                                                                                                 addr748:
                                                                                                                                 §§push(offsetX + AngryBirdsFP11.§8!6§);
                                                                                                                                 if(!(_loc14_ && pageNum))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 offsetX = §§pop();
                                                                                                                                 if(!(_loc14_ && pageNum))
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc15_ || pageNum)
                                                                                                                                       {
                                                                                                                                          §§push(offsetX);
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc14_ && pageNum)
                                                                                                                                             {
                                                                                                                                                §§goto(addr736);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr748);
                                                                                                                                       }
                                                                                                                                       §§goto(addr736);
                                                                                                                                    }
                                                                                                                                    §§goto(addr775);
                                                                                                                                 }
                                                                                                                                 §§goto(addr766);
                                                                                                                              }
                                                                                                                              §§goto(addr782);
                                                                                                                              addr779:
                                                                                                                           }
                                                                                                                           §§goto(addr814);
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     §§goto(addr837);
                                                                                                                  }
                                                                                                                  §§goto(addr796);
                                                                                                               }
                                                                                                               addr811:
                                                                                                               §§goto(addr811);
                                                                                                            }
                                                                                                            §§goto(addr842);
                                                                                                         }
                                                                                                         §§goto(addr855);
                                                                                                      }
                                                                                                      addr857:
                                                                                                      §§goto(addr857);
                                                                                                   }
                                                                                                   §§goto(addr779);
                                                                                                }
                                                                                                §§goto(addr676);
                                                                                             }
                                                                                             §§goto(addr588);
                                                                                          }
                                                                                          §§goto(addr543);
                                                                                       }
                                                                                       §§goto(addr676);
                                                                                    }
                                                                                    §§goto(addr573);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              §§goto(addr690);
                                                                           }
                                                                           addr583:
                                                                           §§goto(addr583);
                                                                        }
                                                                        §§goto(addr692);
                                                                     }
                                                                     §§goto(addr677);
                                                                  }
                                                                  §§goto(addr642);
                                                               }
                                                               addr637:
                                                            }
                                                            §§goto(addr619);
                                                         }
                                                         addr626:
                                                         §§goto(addr626);
                                                      }
                                                      repeaterXML.@name = "Repeater_LevelSelection";
                                                      §§goto(addr637);
                                                   }
                                                   §§goto(addr683);
                                                }
                                                §§goto(addr689);
                                             }
                                             §§goto(addr683);
                                          }
                                          §§goto(addr660);
                                       }
                                       §§goto(addr683);
                                    }
                                    §§goto(addr674);
                                 }
                                 §§goto(addr619);
                              }
                              else
                              {
                                 loop15:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       addr230:
                                       while(!_loc14_)
                                       {
                                          while(true)
                                          {
                                             continue loop15;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr508);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var numStars:Number = NaN;
         if(_loc8_ || isOpen)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc8_ || level)
                  {
                     while(_loc8_)
                     {
                        while(true)
                        {
                           addr52:
                           while(true)
                           {
                              addr40:
                              while(true)
                              {
                                 while(_loc8_ || isOpen)
                                 {
                                    if(_loc9_)
                                    {
                                       continue;
                                    }
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr40);
                                          }
                                          else
                                          {
                                             var clip:MovieClip = new buttonClass();
                                             if(_loc8_ || isOpen)
                                             {
                                                clip.TextField_LevelNum.text.text = (index + 1).toString();
                                                addr350:
                                                addr362:
                                                addr360:
                                                if(isOpen)
                                                {
                                                   addr344:
                                                   if(_loc8_)
                                                   {
                                                      clip.gotoAndStop("Open");
                                                      clip.MovieClip_MEInUse.visible = false;
                                                      addr340:
                                                      addr334:
                                                      if(_loc8_)
                                                      {
                                                         addr307:
                                                         addr313:
                                                         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level) == 100)
                                                         {
                                                            clip.MovieClip_Feather.gotoAndStop("Visible");
                                                            addr310:
                                                            addr309:
                                                            if(_loc8_ || this)
                                                            {
                                                               clip.MovieClip_Feather.mouseEnabled = false;
                                                               addr215:
                                                               clip.isOpen = isOpen;
                                                               addr205:
                                                               addr219:
                                                               addr283:
                                                               addr286:
                                                               addr232:
                                                               if(!(_loc9_ && isOpen))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(isOpen);
                                                                     if(_loc8_ || level)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!(_loc9_ && level))
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr193:
                                                                                       if(!(_loc9_ && isOpen))
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr156:
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(AngryBirdsFP11.sUserProgress);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(level);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop().getStarsForLevel(§§pop()));
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         numStars = §§pop();
                                                                                                         addr142:
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc8_ || this)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr118:
                                                                                                                  if(!(_loc9_ && isOpen))
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        clip.MovieClip_Stars.gotoAndStop(numStars.toString() + "_stars");
                                                                                                                        addr106:
                                                                                                                        if(_loc8_ || level)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr193);
                                                                                                                                 }
                                                                                                                                 §§goto(addr85);
                                                                                                                              }
                                                                                                                              §§goto(addr106);
                                                                                                                           }
                                                                                                                           §§goto(addr142);
                                                                                                                        }
                                                                                                                        §§goto(addr118);
                                                                                                                     }
                                                                                                                     §§goto(addr310);
                                                                                                                  }
                                                                                                                  §§goto(addr205);
                                                                                                               }
                                                                                                               addr222:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && buttonClass))
                                                                                                                  {
                                                                                                                     §§goto(addr215);
                                                                                                                  }
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr219);
                                                                                                         }
                                                                                                         §§goto(addr156);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             addr240:
                                                                                             if(!(_loc9_ && isOpen))
                                                                                             {
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 addr268:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       clip.MovieClip_Feather.mouseEnabled = false;
                                                                                       addr253:
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                       addr258:
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        addr85:
                                                                        return clip;
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         clip.MovieClip_Feather.gotoAndStop("Hidden");
                                                         §§goto(addr268);
                                                      }
                                                      addr347:
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                clip.gotoAndStop("Locked");
                                                §§goto(addr240);
                                             }
                                             §§goto(addr253);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr55);
                                       }
                                    }
                                    §§goto(addr52);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §6?§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || offsetX)
         {
         }
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(!(_loc5_ && image))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr68:
                  if(_loc6_ || this)
                  {
                     addr76:
                     if(_loc5_)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              if(this.§5!3§.length != 1)
                              {
                                 var offsetX:* = Number(0);
                                 if(_loc6_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       addr113:
                                       while(true)
                                       {
                                          this.§%g§ = new Dictionary();
                                          continue loop4;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc6_ || dotCls)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var i:* = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    if(i >= this.§5!3§.length)
                                    {
                                       if(_loc6_ || image)
                                       {
                                          if(_loc6_ || image)
                                          {
                                             §§push(this.§5!3§.length * image.width);
                                             if(!(_loc5_ && dotCls))
                                             {
                                                §§push(§§pop() / 2);
                                                if(!(_loc5_ && offsetX))
                                                {
                                                   §§push(§§pop() + image.width * 1.5);
                                                   if(!_loc5_)
                                                   {
                                                      addr696:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   offsetX = §§pop();
                                                   (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
                                                   loop44:
                                                   while(true)
                                                   {
                                                      addr638:
                                                      while(true)
                                                      {
                                                         (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
                                                         addr635:
                                                         while(true)
                                                         {
                                                            continue loop44;
                                                         }
                                                      }
                                                   }
                                                   addr698:
                                                   addr656:
                                                   addr653:
                                                }
                                             }
                                             §§goto(addr696);
                                          }
                                       }
                                       §§goto(addr653);
                                    }
                                    else
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       dotCls = AssetCache.§-9§("Button_Dot");
                                       if(_loc5_)
                                       {
                                       }
                                       image = new dotCls();
                                       if(_loc6_ || offsetX)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             image.x = AngryBirdsFP11.§8!6§ / 2 + offsetX - this.§5!3§.length * image.width / 2;
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   image.y = (§5!M§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
                                                   while(true)
                                                   {
                                                      loop13:
                                                      for(; _loc6_; if(!(_loc6_ || dotCls))
                                                      {
                                                         continue;
                                                      },§§goto(addr245))
                                                      {
                                                         §§push(i);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(§§pop() == this.§,!!§)
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr444:
                                                            }
                                                            else
                                                            {
                                                               image.gotoAndStop("UnSelected");
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     loop16:
                                                                     for(; !_loc5_; loop30:
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        this.§[!2§.push(image);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && dotCls))
                                                                           {
                                                                              §§goto(addr286);
                                                                           }
                                                                           break;
                                                                           loop36:
                                                                           while(_loc6_ || this)
                                                                           {
                                                                              image.buttonMode = true;
                                                                              continue loop10;
                                                                              addr203:
                                                                              if(_loc5_ && image)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(i);
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(§§pop() + 1);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              addr179:
                                                                              i = §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc6_ || dotCls))
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr197:
                                                                                             if(false)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr201:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr203);
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                   §§goto(addr197);
                                                                                                }
                                                                                                addr199:
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       if(_loc5_ && image)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       image.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                    addr245:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop36;
                                                                                 }
                                                                              }
                                                                              §§goto(addr201);
                                                                           }
                                                                        }
                                                                        §§goto(addr417);
                                                                     })
                                                                     {
                                                                        if(_loc5_ && image)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           this.§5!?§.mClip.addChild(image);
                                                                           loop18:
                                                                           while(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§%g§[image] = i;
                                                                                    addr345:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    addr288:
                                                                                    if(_loc5_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc6_ || this))
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(offsetX);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          §§push(Number(§§pop() + image.width));
                                                                                       }
                                                                                       offsetX = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || offsetX)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr286:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr345);
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       continue loop13;
                                                                                       addr269:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr432:
                                                                                       while(true)
                                                                                       {
                                                                                          (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
                                                                                          addr429:
                                                                                          while(true)
                                                                                          {
                                                                                             addr417:
                                                                                             while(true)
                                                                                             {
                                                                                                (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr429);
                                                                              }
                                                                           }
                                                                           addr392:
                                                                           while(true)
                                                                           {
                                                                              this.updatePageNumber(i);
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr432);
                                                               }
                                                            }
                                                            if(_loc5_ && image)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr179);
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!(_loc5_ && image))
                                                {
                                                   §§goto(addr199);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr345);
                                    }
                                 }
                                 loop40:
                                 while(true)
                                 {
                                    (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
                                    while(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop40;
                                          }
                                          continue loop40;
                                       }
                                    }
                                    §§goto(addr635);
                                 }
                                 return;
                              }
                              if(!(_loc6_ || dotCls))
                              {
                                 continue loop2;
                              }
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr68);
                           }
                           continue loop1;
                        }
                        addr86:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function §9!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && i)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§ !A§);
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(!_loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           addr35:
                           while(true)
                           {
                              §§push(this.§ !A§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().clean();
                              do
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              while(_loc2_);
                              
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  addr68:
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  loop8:
                  while(true)
                  {
                     §§push(i);
                     if(_loc3_ || i)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(§§pop() >= this.§[!2§.length)
                              {
                                 loop9:
                                 for(; _loc3_ || this; if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 },if(_loc3_ || i)
                                 {
                                    this.§5!3§ = [];
                                    §§goto(addr113);
                                 })
                                 {
                                    if(!_loc2_)
                                    {
                                       loop10:
                                       while(!_loc2_)
                                       {
                                          this.§[!2§ = [];
                                          while(true)
                                          {
                                             do
                                             {
                                                §§push(this.§;!W§);
                                                if(!(_loc2_ && i))
                                                {
                                                   if(§§pop().mClip.numChildren <= 0)
                                                   {
                                                      addr292:
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc3_ || i)
                                                               {
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop13;
                                                            }
                                                            break loop10;
                                                         }
                                                         addr113:
                                                         addr260:
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop().mClip.contains(this.§[!2§[i]))
                                                         {
                                                            while(true)
                                                            {
                                                               addr300:
                                                               addr288:
                                                               this.§[!2§[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
                                                               addr288:
                                                               break loop9;
                                                            }
                                                            addr299:
                                                         }
                                                         addr234:
                                                         i++;
                                                         continue loop8;
                                                      }
                                                      addr292:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr189);
                                             }
                                             while(!_loc2_);
                                             
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc3_ || _loc2_)
                                          {
                                             return;
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr234);
                                    }
                                    else
                                    {
                                       §§goto(addr300);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§5!?§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().mClip.removeChild(this.§[!2§[i]);
                                          §§goto(addr260);
                                       }
                                       else
                                       {
                                          §§goto(addr292);
                                       }
                                    }
                                    §§goto(addr299);
                                    §§goto(addr288);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr292);
                              §§push(this.§5!?§);
                           }
                        }
                     }
                     §§goto(addr234);
                  }
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr35);
            }
            §§goto(addr68);
         }
      }
      
      protected function §]4§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§^!U§);
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  loop2:
                  while(_loc3_ || _loc2_)
                  {
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.§,!N§(this.§%g§[e.target]);
                           while(_loc2_ && _loc3_)
                           {
                           }
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr99);
      }
      
      protected function §"s§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr103:
               while(true)
               {
                  §§push(this.§^!U§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               addr23:
               return;
            }
         }
         §§goto(addr79);
      }
      
      protected function §,!N§(pageNum:int, instantMove:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addr220:
                        if(_loc7_ && pageNum)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc6_ || newX)
                        {
                           if(!_loc7_)
                           {
                              §§push(int(§§pop()));
                              loop13:
                              while(!_loc7_)
                              {
                                 pageNum = §§pop();
                                 loop14:
                                 while(true)
                                 {
                                    addr186:
                                    while(true)
                                    {
                                       addr172:
                                       addr146:
                                       while(true)
                                       {
                                          this.§,!!§ = pageNum;
                                          continue loop1;
                                       }
                                       if(!(_loc6_ || instantMove))
                                       {
                                          continue;
                                       }
                                       loop27:
                                       while(true)
                                       {
                                          if(!(_loc7_ && pageNum))
                                          {
                                             if(_loc6_ || pageNum)
                                             {
                                                this.§3[§ = this.§3!&§ + 1;
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr118:
                                                         if(!(_loc7_ && instantMove))
                                                         {
                                                            if(_loc6_ || instantMove)
                                                            {
                                                               §§goto(addr302);
                                                            }
                                                            else
                                                            {
                                                               addr210:
                                                               while(!(_loc7_ && this))
                                                               {
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(pageNum);
                                                                  break loop13;
                                                                  §§goto(addr210);
                                                               }
                                                               addr210:
                                                               addr262:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr220);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr240:
                                                            }
                                                            §§goto(addr172);
                                                            §§goto(addr118);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop27;
                                                   §§goto(addr168);
                                                }
                                                addr168:
                                                continue loop1;
                                                addr114:
                                             }
                                             while(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop2;
                                             addr249:
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 loop20:
                                 for(; _loc6_ || instantMove; §§push(this.§,!!§),if(!(_loc6_ || newX))
                                 {
                                    continue;
                                 },if(_loc6_)
                                 {
                                    §§push(this.§3!&§);
                                    if(_loc7_)
                                    {
                                       §§goto(addr145);
                                    }
                                    if(!(_loc7_ && newX))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr84:
                                                if(!(_loc6_ || instantMove))
                                                {
                                                   break;
                                                }
                                                loop23:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && newX))
                                                   {
                                                      if(_loc7_ && this)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§3[§ = this.§3!&§ - 1;
                                                         while(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               continue loop23;
                                                            }
                                                         }
                                                         addr171:
                                                         while(true)
                                                         {
                                                            continue loop20;
                                                         }
                                                         addr209:
                                                         while(true)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         §§goto(addr36);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                         addr36:
                                                         if(!(_loc6_ || pageNum))
                                                         {
                                                            break loop24;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop24;
                                                         }
                                                         addr302:
                                                         §§goto(addr304);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr114);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§5!3§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop().length - 1);
                                                      if(!_loc7_)
                                                      {
                                                         addr239:
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            pageNum = §§pop();
                                                            §§goto(addr240);
                                                         }
                                                         addr239:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr310);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr304:
                                                      §§goto(addr311);
                                                   }
                                                   addr311:
                                                   §§push(-this.§5!3§[pageNum].x);
                                                   if(_loc6_)
                                                   {
                                                      addr310:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var newX:* = §§pop();
                                                   if(_loc6_ || this)
                                                   {
                                                   }
                                                   var distance:Number = this.§5!3§[pageNum].x + this.§;!W§.x;
                                                   if(_loc7_ && instantMove)
                                                   {
                                                   }
                                                   var tweenTime:* = Number(Math.abs(distance));
                                                   if(_loc6_ || this)
                                                   {
                                                      addr607:
                                                      §§push(tweenTime);
                                                      if(_loc6_)
                                                      {
                                                         addr606:
                                                         §§push(Number(§§pop() / 1024));
                                                      }
                                                      tweenTime = §§pop();
                                                      addr608:
                                                      addr610:
                                                      addr599:
                                                      §§push(tweenTime);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * TWEEN_TIME);
                                                         if(_loc6_ || instantMove)
                                                         {
                                                            addr590:
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr595:
                                                                  tweenTime = Number(§§pop());
                                                                  addr565:
                                                                  addr596:
                                                                  if(this.§9!f§ != null)
                                                                  {
                                                                     if(_loc6_ || pageNum)
                                                                     {
                                                                     }
                                                                     addr544:
                                                                     this.§9!f§.stop();
                                                                     addr562:
                                                                     if(_loc6_)
                                                                     {
                                                                        addr540:
                                                                        if(instantMove)
                                                                        {
                                                                           this.§;!W§.x = newX;
                                                                           addr536:
                                                                           addr537:
                                                                           addr532:
                                                                           §§push(instantMove);
                                                                           if(!(_loc7_ && pageNum))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr444:
                                                                                 if(!(_loc7_ && instantMove))
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr456:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                this.§4!I§();
                                                                                                addr426:
                                                                                                if(_loc7_ && this)
                                                                                                {
                                                                                                   §§goto(addr536);
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             §§goto(addr608);
                                                                                          }
                                                                                          §§goto(addr537);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                    §§goto(addr540);
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                              §§push(this.§9!f§);
                                                                              if(!(_loc7_ && instantMove))
                                                                              {
                                                                                 if(_loc6_ || instantMove)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    addr400:
                                                                                    if(_loc6_ || newX)
                                                                                    {
                                                                                       if(_loc6_ || newX)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_ || pageNum)
                                                                                                {
                                                                                                   if(_loc6_ || pageNum)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr463:
                                                                                                         if(!(_loc7_ && pageNum))
                                                                                                         {
                                                                                                            §§goto(addr536);
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(_loc6_ || instantMove)
                                                                                                            {
                                                                                                               §§goto(addr463);
                                                                                                            }
                                                                                                            §§goto(addr596);
                                                                                                         }
                                                                                                         addr491:
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            addr474:
                                                                                                            §§push(this.§9!f§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§pop().onComplete = this.§4!I§;
                                                                                                               §§goto(addr463);
                                                                                                            }
                                                                                                            §§goto(addr544);
                                                                                                         }
                                                                                                         if(!(_loc7_ && instantMove))
                                                                                                         {
                                                                                                            §§goto(addr491);
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             §§goto(addr400);
                                                                                          }
                                                                                          §§goto(addr610);
                                                                                       }
                                                                                       §§goto(addr544);
                                                                                    }
                                                                                    §§goto(addr456);
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              §§goto(addr474);
                                                                           }
                                                                           §§goto(addr540);
                                                                        }
                                                                        this.§9!f§ = TweenManager.§8!X§.§8m§(this.§;!W§,{"x":newX},null,tweenTime,TweenManager.§&T§);
                                                                        §§goto(addr491);
                                                                     }
                                                                     §§goto(addr599);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               §§goto(addr606);
                                                            }
                                                            §§goto(addr607);
                                                         }
                                                         §§goto(addr595);
                                                      }
                                                      §§goto(addr590);
                                                   }
                                                   addr377:
                                                   addr353:
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr146);
                                             }
                                             §§goto(addr186);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr262);
                                             §§goto(addr84);
                                          }
                                          addr267:
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr209);
                                 },§§goto(addr239))
                                 {
                                    for(§§push(this.§3!&§); §§pop() <= §§pop(); )
                                    {
                                       continue loop20;
                                    }
                                    §§goto(addr146);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop() > this.§5!3§.length - 1)
                                 {
                                    §§goto(addr249);
                                 }
                                 else
                                 {
                                    §§push(pageNum);
                                 }
                              }
                              addr199:
                           }
                           while(true)
                           {
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr199);
                     }
                  }
               }
            }
         }
         §§goto(addr280);
      }
      
      protected function §4!I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            if(_loc2_ || _loc3_)
            {
               addr35:
            }
            §§push(0);
            if(!(_loc3_ && i))
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() >= this.§[!2§.length)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 loop2:
                                 for(; _loc2_ || i; while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                    §§goto(addr60);
                                 },continue loop0)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this.§^!U§ = false;
                                          while(true)
                                          {
                                             continue loop2;
                                             addr92:
                                             while(_loc2_ || i)
                                             {
                                                if(!(_loc2_ || i))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop2;
                                                }
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      return;
                                                   }
                                                   addr217:
                                                   addr217:
                                                   addr251:
                                                   addr252:
                                                   this.§[!2§[i].gotoAndStop("Selected");
                                                   do
                                                   {
                                                      (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
                                                   }
                                                   while(!_loc2_);
                                                   
                                                   this.updatePageNumber(i);
                                                   break loop1;
                                                   addr263:
                                                   addr256:
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr262:
                                          §§goto(addr263);
                                       }
                                    }
                                    §§goto(addr256);
                                 }
                                 addr183:
                                 if(!_loc3_)
                                 {
                                    addr185:
                                    while(true)
                                    {
                                       §§push(i);
                                       addr175:
                                       addr178:
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             if(§§pop() == this.§,!!§)
                                             {
                                                §§goto(addr262);
                                             }
                                             else
                                             {
                                                §§push(this.§[!2§);
                                                if(_loc2_)
                                                {
                                                   §§push(i);
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                      addr206:
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                else
                                                {
                                                   §§goto(addr251);
                                                }
                                             }
                                             §§goto(addr217);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr259);
                                          }
                                          addr259:
                                       }
                                       i = int(§§pop() + 1);
                                       continue loop0;
                                       §§goto(addr185);
                                    }
                                    addr173:
                                 }
                                 §§goto(addr217);
                              }
                              break;
                              if(_loc3_ && i)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              if(!_loc3_)
                              {
                                 LevelManager.§;![§(LevelManager.§?Q§).§ !_§ = this.§,!!§;
                                 §§goto(addr92);
                              }
                              §§goto(addr206);
                           }
                           while(true)
                           {
                              §§goto(addr173);
                              §§goto(addr217);
                           }
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr175);
                  }
               }
               §§goto(addr178);
            }
         }
         §§goto(addr35);
      }
      
      protected function updatePageNumber(index:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§24§.text = LevelManager.§;![§(LevelManager.§?Q§).pageIndexes[index];
               while(!(_loc3_ && _loc2_))
               {
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
