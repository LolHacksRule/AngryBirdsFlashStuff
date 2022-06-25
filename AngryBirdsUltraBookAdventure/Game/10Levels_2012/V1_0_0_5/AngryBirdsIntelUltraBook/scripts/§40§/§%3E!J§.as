package §40§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §7=§.§&,§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§?!x§;
   import com.angrybirds.friendsbar.§`Y§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §>!J§ extends § B§
   {
      
      public static var §;a§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §;a§ = -1;
         }
      }
      
      private var §=D§:Boolean = false;
      
      private var §@!I§:Number = 41.666666666666664;
      
      private var §,<§:int = 0;
      
      private var §,R§:§&,§;
      
      public function §>!J§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
         if(!(_loc2_ && this))
         {
            super.init();
         }
         do
         {
            §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §5!P§ = new §'!^§(this);
            loop0:
            while(true)
            {
               §5!P§.init(§[!'§.§+@§.Views.View_LevelSelection[0]);
               while(true)
               {
                  §+A§ = §5!P§.getItemByName("Container_LevelRepeaters") as §8;§;
                  loop2:
                  while(true)
                  {
                     §=!4§ = §5!P§.getItemByName("Container_LevelSelection") as §8;§;
                     loop3:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           this.§,R§ = new §&,§(§5!P§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.activate();
         }
         var _loc1_:§4n§ = LevelManager.§0v§();
         if(!_loc4_)
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §5!P§.visible = true;
                  loop1:
                  while(true)
                  {
                     §§push(§ _§.§1s§);
                     loop2:
                     while(true)
                     {
                        (§§pop() as §@!9§).§6!H§.§default§ = false;
                        addr101:
                        while(!(_loc4_ && this))
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(§ _§.§1s§);
                           loop4:
                           while(true)
                           {
                              (§§pop() as §@!9§).§>!+§("");
                              addr92:
                              while(true)
                              {
                                 addr60:
                                 addr121:
                                 while(true)
                                 {
                                    §§push(§ _§.§1s§);
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 addr121:
                                 §§push(LevelManager.§0v§().writtenName);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc2_:* = §§pop();
                                 if(_loc3_)
                                 {
                                    §5!P§.setText(_loc2_,"TextField_LevelName");
                                    loop9:
                                    while(true)
                                    {
                                       §5!P§.setText(AngryBirdsFP11.sUserProgress.§&!N§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc1_),"Textfield_CollectedStars");
                                       loop10:
                                       while(true)
                                       {
                                          if(§;a§ != -1)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §8!T§(§;a§);
                                                loop12:
                                                while(true)
                                                {
                                                   §;a§ = -1;
                                                   addr290:
                                                   while(true)
                                                   {
                                                      loop20:
                                                      while(_loc3_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §`]§ = "";
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                               addr240:
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§,R§.start();
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              addr225:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§5!P§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§=D§ = true;
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr263:
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§5!P§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
                                                                              break loop19;
                                                                           }
                                                                        }
                                                                        break loop19;
                                                                     }
                                                                     return;
                                                                     addr140:
                                                                     addr181:
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr240);
                                                                  }
                                                               }
                                                            }
                                                            addr257:
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§`]§ != §'!j§.§?h§)
                                             {
                                                this.§=D§ = false;
                                                §§goto(addr225);
                                             }
                                             §§goto(addr263);
                                             §§goto(addr290);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,R§.stop();
         }
         do
         {
            super.deActivate();
         }
         while(_loc1_);
         
      }
      
      protected function §?!@§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = param1.currentFrame + 1;
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  if(_loc3_)
                  {
                     addr57:
                     _loc2_ = param1.totalFrames;
                     addr58:
                     while(true)
                     {
                     }
                     addr58:
                  }
                  §§goto(addr58);
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr58);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§=D§)
            {
               loop0:
               while(true)
               {
                  this.§,<§ += param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§,<§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < this.§@!I§)
                        {
                           loop7:
                           while(true)
                           {
                              this.§,R§.run(param1);
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              addr75:
                              while(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 this.§,<§ = 0;
                                 §§goto(addr46);
                              }
                              addr46:
                           }
                           addr34:
                        }
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§?!@§(§5!P§.getItemByName("MovieClip_RightCorner").mClip);
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr34);
         }
         §§goto(addr41);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Array = null;
         var _loc1_:* = Number(0);
         if(!(_loc5_ && _loc2_))
         {
            §^G§ = [];
            while(true)
            {
               § !<§ = [];
               loop1:
               while(true)
               {
                  §^!h§ = LevelManager.§`!-§(LevelManager.§>!§).§-!F§;
                  addr73:
                  while(true)
                  {
                     addr46:
                     while(true)
                     {
                        §4]§ = §^!h§;
                        continue loop1;
                     }
                  }
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               while(true)
               {
                  §;!q§ = §^!h§;
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr46);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr50);
               }
               var _loc2_:§4n§ = LevelManager.§`!-§(LevelManager.§>!§);
               var _loc3_:* = Number(0);
               while(_loc3_ < _loc2_.pageIndexes.length)
               {
                  _loc4_ = _loc2_.§]!"§(_loc2_.pageIndexes[_loc3_]);
                  if(!_loc5_)
                  {
                     §^G§.push(_loc2_.§9!R§(_loc3_));
                     while(true)
                     {
                        § !<§.push(_loc2_.§]!C§(_loc3_));
                        loop8:
                        for(; !_loc5_; while(true)
                        {
                           if(_loc5_ && _loc1_)
                           {
                              continue loop8;
                           }
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc1_))
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_ || this)
                              {
                                 if(_loc6_)
                                 {
                                    addr135:
                                    §§push(Number(§§pop()));
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr155);
                              }
                           }
                           §§goto(addr135);
                        })
                        {
                           while(true)
                           {
                              §§push(this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_));
                              addr154:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr155:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr147);
                  }
               }
               if(!(_loc5_ && _loc1_))
               {
                  §?`§();
                  if(!(_loc5_ && this))
                  {
                     if(§`]§ == StateCutScene.§?h§)
                     {
                        if(_loc6_)
                        {
                           §`]§ = "";
                        }
                        §8!T§(§;!q§);
                        addr246:
                     }
                     else
                     {
                        §8!T§(§^!h§,true);
                        if(!_loc5_)
                        {
                           if(!(_loc6_ || this))
                           {
                              §§goto(addr246);
                           }
                           §§goto(addr201);
                        }
                     }
                     addr200:
                  }
                  addr201:
                  return;
               }
               §§goto(addr200);
               addr64:
            }
         }
         §§goto(addr64);
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§4n§) : Number
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!G§.§^!B§(§ !<§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            if(!(_loc16_ && this))
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_));
               if(!(_loc16_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               _loc12_ = §§pop();
               if(!(_loc15_ || param3))
               {
                  break;
               }
               _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
               (_loc14_ = <Button/>).@name = _loc11_;
               if(_loc15_ || this)
               {
                  §§push(_loc12_);
                  if(_loc15_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc15_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr236:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.§[!d§);
                                 addr213:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr235:
                        }
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(!(_loc16_ && param1))
                                 {
                                    _loc14_.@MouseUp = _loc11_;
                                    while(true)
                                    {
                                    }
                                 }
                                 §§goto(addr236);
                                 addr216:
                              }
                              while(true)
                              {
                                 _loc14_.@scaleOnMouseOver = "True";
                                 loop6:
                                 while(true)
                                 {
                                    _loc5_[0].push(new Array(_loc14_,null,_loc13_));
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc15_)
                                       {
                                          §§push(_loc12_);
                                          if(_loc16_ && param2)
                                          {
                                             break;
                                          }
                                          if(_loc16_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc15_)
                                          {
                                             if(!§§pop())
                                             {
                                                do
                                                {
                                                   _loc13_.TextField_LevelNum.text.mouseEnabled = false;
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc16_ && this))
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc15_ || this)
                                                         {
                                                            addr125:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!_loc16_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   if(_loc16_ && param2)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                while(false);
                                                
                                                continue loop0;
                                                addr147:
                                             }
                                             while(true)
                                             {
                                                _loc13_.MovieClip_Stars.mouseEnabled = false;
                                                continue loop6;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr216);
                                       }
                                       §§goto(addr236);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr235);
               }
               §§goto(addr236);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!_loc16_)
         {
            if(param1.length != 15)
            {
               _loc8_.@name = "Repeater_LevelSelection";
               loop15:
               while(true)
               {
                  if(!_loc16_)
                  {
                     loop16:
                     while(true)
                     {
                        _loc8_.@button = § !<§[param2];
                        addr291:
                        while(true)
                        {
                           _loc8_.@enabled = "True";
                           addr282:
                           while(!_loc16_)
                           {
                              while(true)
                              {
                                 _loc8_.@buttonSelectionType = "NO_SELECTION";
                                 continue loop15;
                              }
                           }
                           continue loop16;
                           addr257:
                           if(!(_loc15_ || param1))
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr266);
                           }
                           else
                           {
                              §§push(param3);
                              if(!(_loc16_ && param3))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              var _loc10_:§?!x§;
                              (_loc10_ = new §?!x§(_loc8_,§+A§,null,null)).§%!_§ = 5;
                              if(!(_loc16_ && param2))
                              {
                                 _loc10_.§0!m§ = 0;
                                 loop23:
                                 while(true)
                                 {
                                    _loc10_.§8!2§(_loc5_);
                                    while(true)
                                    {
                                       _loc10_.setVisibility(true);
                                       continue loop23;
                                       loop30:
                                       while(_loc15_ || this)
                                       {
                                          §§push(_loc9_);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() + AngryBirdsFP11.§>!2§);
                                             if(_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          loop31:
                                          while(true)
                                          {
                                             param3 = §§pop();
                                             if(!_loc16_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   addr365:
                                                   if(!(_loc16_ && param2))
                                                   {
                                                      continue;
                                                   }
                                                   addr418:
                                                   while(true)
                                                   {
                                                      _loc10_.y = 50;
                                                      addr411:
                                                      while(_loc15_)
                                                      {
                                                         §+A§.addComponent(_loc10_);
                                                         break loop31;
                                                      }
                                                      continue loop23;
                                                      §§goto(addr365);
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop30;
                                          }
                                          while(!(_loc16_ && this))
                                          {
                                             while(true)
                                             {
                                                §#!o§.push(_loc10_);
                                                continue loop30;
                                             }
                                          }
                                          §§goto(addr411);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr396);
                           }
                        }
                     }
                     addr285:
                  }
                  else
                  {
                     while(true)
                     {
                        _loc8_.@name = "Repeater_LevelSelection15";
                     }
                     addr305:
                  }
                  while(true)
                  {
                     §§goto(addr285);
                  }
               }
            }
            §§goto(addr305);
         }
         §§goto(addr291);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §<[§).§,!l§(param1));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(!(_loc10_ && param2))
         {
            §§push(Boolean(§§pop()));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     §§pop();
                     if(!(_loc10_ && param2))
                     {
                        addr74:
                        if(_loc7_ <= 3)
                        {
                           if(_loc9_ || param2)
                           {
                              (_loc8_ = new §%!G§.§^!B§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(!_loc10_)
                              {
                                 _loc8_.x = -78;
                                 while(true)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       _loc8_.y = -102;
                                       do
                                       {
                                          _loc6_.addChild(_loc8_);
                                       }
                                       while(!_loc9_);
                                       
                                       if(_loc9_)
                                       {
                                          while(false)
                                          {
                                             continue loop1;
                                          }
                                          addr123:
                                          _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§2!9§(param1).levelsPerPage;
                                          addr137:
                                          return _loc6_;
                                          addr112:
                                       }
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr123);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(!_loc8_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(_loc7_ || param3)
         {
            §§push("BACK");
            if(!_loc8_)
            {
               §§push(_loc6_);
               if(!(_loc8_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        addr163:
                        §§push(0);
                        if(_loc8_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr203:
                        §§push(2);
                        if(!(_loc8_ && param1))
                        {
                           addr211:
                        }
                     }
                     §§goto(addr216);
                  }
                  else
                  {
                     §§push("FRIENDS_BUTTON");
                     if(_loc7_)
                     {
                        addr175:
                        §§push(_loc6_);
                        if(!_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    §§goto(addr211);
                                 }
                              }
                              else
                              {
                                 §§goto(addr203);
                              }
                              §§goto(addr216);
                           }
                           else
                           {
                              §§push("showCredits");
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr202);
                     }
                     addr202:
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr203);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr216:
                     loop2:
                     switch(§§pop())
                     {
                        case 0:
                           § !Q§.playSound("Menu_Back");
                           if(!(_loc8_ && param2))
                           {
                              §'!j§.§`]§ = §?h§;
                              mNextState = §0!`§.§?h§;
                              break;
                              addr72:
                              addr67:
                           }
                           break;
                        case 1:
                           _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                           loop0:
                           while(true)
                           {
                              while(true)
                              {
                                 §'N§.§`I§(_loc4_);
                                 if(!(_loc8_ && param3))
                                 {
                                    if(!_loc8_)
                                    {
                                       §@!9§.§6!f§.§5C§();
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc8_)
                                          {
                                             if(true)
                                             {
                                                _loc5_ = new URLRequest(_loc4_);
                                                if(!(_loc8_ && param1))
                                                {
                                                   navigateToURL(_loc5_,"_blank");
                                                   if(_loc8_ && param2)
                                                   {
                                                      addr132:
                                                      break loop2;
                                                   }
                                                }
                                             }
                                             continue;
                                             break loop2;
                                          }
                                          §§goto(addr72);
                                       }
                                       break loop2;
                                    }
                                    §§goto(addr67);
                                 }
                                 break loop2;
                              }
                              break loop2;
                           }
                           break;
                        case 2:
                           mNextState = §!1§.§?h§;
                           §§goto(addr132);
                     }
                     return;
                     §§push(_loc6_);
                  }
                  §§goto(addr203);
               }
               §§goto(addr202);
            }
            §§goto(addr175);
         }
         §§goto(addr163);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).§"E§.text = (param1 + 1).toString();
         }
      }
   }
}
