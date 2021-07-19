package §,!"§
{
   import § N§.§1!A§;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §'o§.§3K§;
   import §-!&§.§[J§;
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §5Z§.§[Z§;
   import §6g§.§&N§;
   import §6g§.§[!@§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§1r§;
   import §9T§.§6O§;
   import §<M§.§?!6§;
   import §?#§.§+7§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §]p§.§9!,§;
   import §]p§.§^s§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §[!G§ extends StatePlay implements §&N§
   {
      
      private static const §&!B§:Number = -5000.0;
      
      private static const §?&§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §&!B§ = -5 * 1000;
         }
         do
         {
            §?&§ = 10 * 1000;
         }
         while(_loc1_);
         
      }
      
      private var §8§:int = 0;
      
      private var §!r§:Number = -5000.0;
      
      private var §9!H§:int = 0;
      
      private var §8#§:Number = 0;
      
      private var §&d§:Number = 0;
      
      private var §6!!§:Boolean = false;
      
      private const §>2§:Number = 0.4;
      
      private var §+n§:Boolean = false;
      
      private var §0!?§:Boolean = false;
      
      private var §&!?§:MovieClip = null;
      
      private var §1[§:§1!A§ = null;
      
      private var §0!%§:ColorTransform;
      
      private var §!!H§:§[!9§ = null;
      
      private var §,r§:Boolean = false;
      
      private var §5!2§:Boolean = false;
      
      private var §"'§:Boolean = false;
      
      public function §[!G§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param3);
         }
         do
         {
            this.§8§ = param2;
         }
         while(_loc4_ && param3);
         
      }
      
      override protected function getGameLogicController(param1:§1r§) : §+7§
      {
         return new §3K§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,r§ = false;
            super.levelStarted();
         }
         loop0:
         while(true)
         {
            §-<§.§>v§(§3"§.§0a§,§`!K§.§5g§);
            (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               §0q§.getItemByName("Container_MEScore").setVisibility(false);
               §0q§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §0q§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
               while(true)
               {
                  §#! §.§`'§.§4-§();
                  §[J§(§#! §.§`'§.§6#§).§>i§();
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §#!H§() : Boolean
      {
         return this.§,r§;
      }
      
      public function §4L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Boolean(§6O§.§0"§));
         loop0:
         while(true)
         {
            §§push(§§pop());
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§,r§);
                     if(!(_loc2_ || _loc1_))
                     {
                        continue loop0;
                     }
                     §§push(!§§pop());
                     if(_loc2_ || _loc1_)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(this.§!!H§);
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop() == null);
                                 addr136:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop0;
                                    }
                                    addr96:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             this.§,r§ = true;
                                             loop5:
                                             while(true)
                                             {
                                                this.§!!H§ = §3C§.§>o§.§<t§(this.§1[§,{"alpha":§6O§.§>2§},null,§6O§.§9!1§);
                                                §§push(this.§!!H§);
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(this.§!!H§);
                                                   addr75:
                                                   continue loop11;
                                                   if(_loc2_)
                                                   {
                                                      §§pop().play();
                                                      this.§0!?§ = true;
                                                      while(!_loc1_)
                                                      {
                                                         continue loop4;
                                                         this.§+n§ = false;
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§goto(addr18);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                    continue loop11;
                                 }
                                 continue loop1;
                              }
                           }
                           addr18:
                           return;
                        }
                        addr130:
                     }
                     §§goto(addr136);
                  }
               }
               §§goto(addr130);
            }
         }
      }
      
      public function §1Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§6O§.§0"§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§+n§);
                     if(_loc1_ || _loc1_)
                     {
                        addr154:
                        §§push(!§§pop());
                        if(_loc2_ && _loc1_)
                        {
                        }
                        while(true)
                        {
                           §§pop();
                           §§push(this.§!!H§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc2_ && _loc2_))
                              {
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§!!H§ = §3C§.§>o§.§<t§(this.§1[§,{"alpha":0},null,§6O§.§7H§);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§!!H§);
                                          while(_loc1_)
                                          {
                                             §§pop().onComplete = this.§9t§;
                                             §§push(this.§!!H§);
                                             continue loop5;
                                             if(_loc2_ && this)
                                             {
                                                continue;
                                             }
                                             §§pop().play();
                                             this.§+n§ = true;
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr24:
                                 return;
                                 addr99:
                              }
                              break;
                           }
                        }
                        addr154:
                     }
                     if(§§pop())
                     {
                        §§goto(addr154);
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr24);
            }
            §§goto(addr154);
         }
         §§goto(addr101);
      }
      
      public function §9t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!!H§ = null;
         }
      }
      
      override public function init() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            §&K§ = true;
            if(_loc6_ || _loc2_)
            {
               loop0:
               while(true)
               {
                  §0q§ = new §`o§(this);
                  while(true)
                  {
                     §0q§.init(§`Z§.§5c§.Views.View_FacebookLevelPlay[0]);
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(!(_loc5_ && _loc1_))
                     {
                        if(true)
                        {
                           if(§6O§.§0"§)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr241:
                        }
                        continue loop0;
                        return;
                     }
                  }
               }
            }
         }
         _loc1_ = §[!D§.§8!N§("MovieClip_SlowmotionColor");
         if(_loc6_ || _loc1_)
         {
            this.§&!?§ = new _loc1_();
            if(_loc6_ || _loc3_)
            {
               this.§&!?§.mouseEnabled = false;
            }
         }
         _loc2_ = new BitmapData(50,50,true,0);
         if(_loc6_)
         {
            _loc2_.draw(this.§&!?§);
         }
         _loc3_ = Texture.§@"§(null,_loc2_,false,false);
         if(_loc6_)
         {
            this.§1[§ = new §1!A§(_loc3_);
            §§push(§0q§.height / AngryBirdsCustomCanvas.§5!9§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
            _loc4_ = §§pop();
         }
         loop2:
         while(true)
         {
            §§push(this.§1[§);
            loop3:
            while(true)
            {
               §§push(§#! §.§`'§);
               addr218:
               while(true)
               {
                  §§push(§§pop().§,?§);
                  addr219:
                  while(true)
                  {
                     §§pop().width = §§pop().width;
                     addr221:
                     while(_loc6_)
                     {
                        §§push(this.§1[§);
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[z§ = null;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            while(true)
            {
               this.§2!5§();
               if(_loc4_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§push(§#! §.§`'§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().§6#§);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(§§pop().mSardineCanAdded);
                        if(_loc4_)
                        {
                           §§push(!§§pop());
                           if(!(_loc5_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       addr229:
                                       addr81:
                                       addr80:
                                       §§push(§#! §.§`'§.§6#§.mMightyEagleAdded);
                                       if(!_loc4_)
                                       {
                                       }
                                       addr85:
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       var _loc1_:String = §!D§.§;2§(§!D§.§8T§);
                                       if(_loc4_ || _loc1_)
                                       {
                                          if(_loc1_ != null)
                                          {
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                addr262:
                                                AngryBirdsFP11.§6r§(Boolean(int(_loc1_)));
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr262);
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr85);
                           }
                           §§push(!§§pop());
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr80);
               }
               break;
            }
            _loc2_ = §`!K§.§!I§(§`!K§.§5g§);
            this.§8§ = AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§);
            if(_loc2_)
            {
               while(true)
               {
                  §§push(_loc2_.§,u§());
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr219:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        if(§#! §.§`'§.slingshot)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(§#! §.§`'§.slingshot.§5!,§());
                              while(true)
                              {
                                 §§push(int(§§pop() + §§pop()));
                              }
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr212:
                              while(true)
                              {
                              }
                           }
                           addr211:
                        }
                        while(true)
                        {
                           this.§8§ = Math.min(this.§8§,_loc3_);
                           §§goto(addr212);
                        }
                     }
                  }
                  addr142:
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  addr111:
                  §§goto(addr229);
                  addr149:
               }
            }
            while(true)
            {
               §§push(this.§8§);
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §0q§.getItemByName("Container_HiscoreContainer").setVisibility(true);
                              §0q§.getItemByName("Container_LevelscoreContainer").y = §0q§.getItemByName("Container_HiscoreContainer").y + 27;
                              (§0q§.getItemByName("TextField_HighScore") as §@4§).setText(this.§8§.toString());
                              §§goto(addr142);
                              addr161:
                           }
                           §§goto(addr212);
                        }
                        else
                        {
                           §0q§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                           if(!_loc5_)
                           {
                              §0q§.getItemByName("Container_LevelscoreContainer").y = §0q§.getItemByName("Container_HiscoreContainer").y;
                              if(_loc4_ || _loc1_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr111);
                                 }
                                 §§goto(addr229);
                              }
                              else
                              {
                                 §§goto(addr161);
                              }
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr219);
               }
               §§goto(addr211);
            }
            §§goto(addr149);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§=;§();
            while(true)
            {
               super.deActivate();
               addr59:
               if(_loc1_ && this)
               {
                  continue;
               }
               return;
               addr66:
            }
         }
         while(true)
         {
            this.§7!C§();
            while(_loc2_)
            {
               this.§2!5§();
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr66);
      }
      
      private function §7!C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(!_loc4_)
         {
            if(this.§!r§ > §?&§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§!r§ * this.§9!H§);
                  loop1:
                  while(true)
                  {
                     §§push(§`!K§.§5g§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     do
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        §-<§.§`q§(_loc1_,_loc2_,§[Z§.§-D§,false);
                     }
                     while(_loc4_ && _loc1_);
                     
                     addr53:
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §,!'§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         §§push(this.§!r§);
         if(_loc4_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§!r§ = §§pop();
         if(!_loc5_)
         {
            §§push(this.§!r§);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || param1)
               {
                  if(§§pop() > §§pop())
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§9!H§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.§9!H§ = _loc3_;
                     }
                  }
                  addr147:
                  §§push(this.§8#§);
                  while(true)
                  {
                     §§push(§#! §.§,!F§());
                  }
                  addr147:
               }
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr156:
                              while(true)
                              {
                                 §§push(this.§&d§);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(§#! §.§ v§());
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop4;
                                 }
                                 if(_loc5_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr147);
                           }
                           addr155:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 this.§2!5§();
                              }
                              if(_loc4_ || _loc2_)
                              {
                                 addr144:
                                 break;
                              }
                              §§goto(addr156);
                           }
                           break;
                           §§goto(addr109);
                        }
                        return;
                     }
                     §§goto(addr155);
                  }
               }
            }
            §§goto(addr147);
         }
         §§goto(addr144);
      }
      
      private function §2!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!r§ = §&!B§;
            do
            {
               this.§9!H§ = 0;
               do
               {
                  this.§8#§ = §#! §.§,!F§();
                  do
                  {
                     this.§&d§ = §#! §.§ v§();
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0q§.getItemByName("Container_MEScore").setVisibility(false);
         }
         while(true)
         {
            §0q§.getItemByName("Button_Eagle").mClip.scaleX = 1;
            while(_loc1_)
            {
               §0q§.getItemByName("Button_Eagle").mClip.scaleY = 1;
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.§!%§);
            do
            {
               (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.keyUp(param1);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!§!D§.§^!E§)
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     var _loc2_:* = param1.keyCode;
                     if(!_loc4_)
                     {
                        if(Keyboard.M === _loc2_)
                        {
                           addr80:
                           §§push(0);
                           if(!_loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        switch(§§pop())
                        {
                           case 0:
                              this.§6!!§ = true;
                              if(_loc3_)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue;
                              }
                        }
                     }
                     §§goto(addr80);
                     addr24:
                  }
               }
               return;
            }
         }
      }
      
      override protected function levelCompleted() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§=;§();
            if(_loc4_ || _loc3_)
            {
               super.levelCompleted();
            }
         }
         §§push(§`!K§.§5g§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §0!=§.getScore();
         if(_loc4_)
         {
            §-<§.§>v§(§3"§.§,!M§,_loc1_,_loc2_);
            do
            {
               §9!,§.§>o§.§>!9§();
            }
            while(!_loc4_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            §§push("PAUSE");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(!(_loc5_ && this) ? 0 : 1);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           addr202:
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr203);
                           }
                           else
                           {
                              §§push("ZOOM_IN");
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param3))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr275);
                                    }
                                    else
                                    {
                                       §§push("ZOOM_OUT");
                                       if(_loc6_)
                                       {
                                          addr222:
                                          §§push(_loc4_);
                                          if(_loc6_ || param1)
                                          {
                                             addr230:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   addr275:
                                                   loop5:
                                                   switch(2)
                                                   {
                                                      case 0:
                                                         §?!6§.§1%§();
                                                         break;
                                                         addr164:
                                                      case 1:
                                                         this.§=;§();
                                                         §-O§.§8!5§();
                                                         mNextState = §-O§.§-A§;
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr164);
                                                         break;
                                                         addr153:
                                                      case 2:
                                                         §0!=§.doUserZoom(true);
                                                         break;
                                                      case 3:
                                                         §0!=§.doUserZoom(false);
                                                         break;
                                                         addr124:
                                                      case 4:
                                                         (§0!=§ as §3K§).§0T§();
                                                         addr103:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr124);
                                                         }
                                                         break;
                                                      case 5:
                                                         §#! §.§`'§.camera.goToBirdView();
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §0q§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                                                            addr80:
                                                            while(!(_loc6_ || this))
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr73:
                                                            §0q§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.§!%§);
                                                               addr44:
                                                               while(true)
                                                               {
                                                                  §`r§();
                                                                  addr47:
                                                                  while(_loc5_ && this)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  §§goto(addr103);
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      default:
                                                         super.uiInteractionHandler(param1,param2,param3);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr44);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr80);
                                                               }
                                                               §§goto(addr73);
                                                            }
                                                            §§goto(addr47);
                                                         }
                                                   }
                                                   return;
                                                   §§push(3);
                                                }
                                                else
                                                {
                                                   addr269:
                                                   §§goto(addr275);
                                                   §§push(5);
                                                }
                                             }
                                             else
                                             {
                                                §§push("ZOOM_UP");
                                                if(_loc5_ && this)
                                                {
                                                }
                                                addr267:
                                                if(§§pop() === _loc4_)
                                                {
                                                   §§goto(addr269);
                                                }
                                                else
                                                {
                                                   §§goto(addr275);
                                                   §§push(6);
                                                }
                                             }
                                             §§goto(addr275);
                                          }
                                          addr256:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                §§goto(addr275);
                                                §§push(4);
                                             }
                                             else
                                             {
                                                §§goto(addr269);
                                             }
                                             §§goto(addr275);
                                          }
                                          else
                                          {
                                             §§goto(addr267);
                                             §§push("USE_EAGLE");
                                          }
                                          §§goto(addr269);
                                       }
                                       §§push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr256);
                                       }
                                       §§goto(addr267);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr222);
                           }
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr275);
               }
               §§goto(addr202);
            }
            §§goto(addr267);
         }
         §§goto(addr269);
      }
      
      public function §4v§() : §+7§
      {
         return §0!=§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = §0!=§.getScore();
         var _loc3_:* = int(§#q§.getValue());
         §§push(_loc3_);
         if(!_loc4_)
         {
            if(§§pop() < _loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(int(Math.min(_loc2_,§#q§.getValue() + param1 * §@!D§)));
                  addr104:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     do
                     {
                        §#q§.assign(_loc3_);
                     }
                     while(_loc4_ && param1);
                     
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr50);
               }
            }
            addr50:
            (§0q§.getItemByName("TextField_CurrentScore") as §@4§).setText(_loc3_.toString());
            if(this.§6!!§)
            {
               §0q§.setText(_loc2_.toString(),"TextField_MEPercentage");
            }
            return;
         }
         §§goto(addr104);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.run(param1);
         loop0:
         while(true)
         {
            this.§,!'§(param1);
            loop1:
            do
            {
               if(§#! §.§`'§.slingshot.mDragging != true)
               {
                  if(!§0q§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
                  {
                     while(true)
                     {
                        §0q§.getItemByName("Button_ZoomIn").setEnabled(true);
                        §0q§.getItemByName("Button_ZoomOut").setEnabled(true);
                        break loop1;
                     }
                     addr66:
                  }
               }
               continue loop0;
               §0q§.getItemByName("Button_ZoomOut").setEnabled(false);
            }
            while(_loc2_ && param1);
            
            while(mNextState.length > 0)
            {
               if(_loc3_ || _loc3_)
               {
                  return §'!#§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr66);
            }
            return §'!#§.STATE_STATUS_RUNNING;
         }
      }
      
      private function §=;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§6O§.§0"§)
         {
            this.§1[§.alpha = 0;
            §§push(this.§!!H§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  addr79:
                  this.§!!H§.stop();
                  this.§!!H§ = null;
                  while(true)
                  {
                  }
                  addr69:
               }
               while(true)
               {
                  this.§+n§ = false;
                  while(_loc1_ || this)
                  {
                     this.§0!?§ = false;
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr17);
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr79);
         }
         addr17:
      }
      
      private function §8?§() : void
      {
         var _loc1_:String = "levelComplete";
         var _loc2_:Object = {};
         var _loc3_:§^s§ = new §^s§(_loc2_,§!D§.§1P§ + _loc1_,this,§^s§.§<r§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc2_:Object = §[!@§.§'!N§((param1.currentTarget as URLLoader).data);
         if(!(_loc5_ && _loc3_))
         {
            §§push(Boolean(_loc2_));
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.f != null);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.m != null);
                                    addr136:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §#! §.resume();
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          this.§"'§ = true;
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(§§pop() == _loc2_.m)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§^s§.§+d§(_loc2_.f));
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr123:
                                                                        §§push(§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr127:
                                                                           §§push(-1);
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           this.§"'§ = false;
                                                                           if(_loc6_)
                                                                           {
                                                                              addr53:
                                                                              break;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        addr129:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§goto(addr136);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§^s§.§?0§(_loc2_.f));
                                                                              addr170:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr171:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                              §§goto(addr129);
                                                                           }
                                                                           addr166:
                                                                        }
                                                                     }
                                                                     §§goto(addr127);
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               §§goto(addr129);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                }
                                                break loop2;
                                             }
                                             continue loop8;
                                          }
                                          addr147:
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr42);
                              }
                              addr188:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr166);
                              }
                              addr42:
                              return;
                           }
                        }
                        continue loop0;
                        addr183:
                     }
                     §§goto(addr188);
                  }
               }
               §§goto(addr183);
            }
         }
         §§goto(addr53);
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'r§(param1:IOErrorEvent) : void
      {
      }
   }
}
