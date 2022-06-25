package §`!#§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2!U§.§2!=§;
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2y§.§54§;
   import §2y§.§<N§;
   import §2y§.§^! §;
   import §9j§.§6!G§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import com.angrybirds.friendsbar.§-V§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §,D§ extends §2!=§
   {
      
      private static const §-!]§:int = 10;
      
      private static const §8!$§:int = 4;
      
      public static var §32§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!]§ = 10;
            while(true)
            {
               §8!$§ = 4;
               while(_loc2_ || _loc2_)
               {
                  §32§ = -1;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §"=§:Boolean = false;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      private var §8U§:§6!G§;
      
      public function §,D§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(!_loc1_);
         
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'!Q§ = new §&!G§(this);
            loop0:
            while(true)
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_LevelSelection[0]);
               while(true)
               {
                  §>&§ = §'!Q§.getItemByName("Container_LevelRepeaters") as §^! §;
                  while(!_loc2_)
                  {
                     §>!+§ = §'!Q§.getItemByName("Container_LevelSelection") as §^! §;
                     loop3:
                     while(_loc1_ || this)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§8U§ = new §6!G§(§'!Q§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            super.activate();
         }
         var _loc1_:§8K§ = LevelManager.§+!$§();
         if(!_loc4_)
         {
            if(_loc1_ != null)
            {
               while(true)
               {
                  §'!Q§.visible = true;
                  loop1:
                  while(true)
                  {
                     §§push(§,!s§.§]!J§);
                     loop2:
                     while(true)
                     {
                        (§§pop() as §<t§).§`X§.§!r§ = false;
                        addr108:
                        while(!(_loc4_ && _loc2_))
                        {
                           §§push(§,!s§.§]!J§);
                           loop4:
                           while(true)
                           {
                              (§§pop() as §<t§).§;!T§("");
                              addr97:
                              while(_loc3_)
                              {
                                 do
                                 {
                                    §§push(§,!s§.§]!J§);
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 while(false);
                                 
                                 §§push(LevelManager.§+!$§().writtenName);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc2_:* = §§pop();
                                 if(_loc3_ || this)
                                 {
                                    §'!Q§.setText(_loc2_,"TextField_LevelName");
                                    §'!Q§.setText(AngryBirdsFP11.sUserProgress.§0q§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc1_),"Textfield_CollectedStars");
                                    addr344:
                                    addr349:
                                    if(§32§ != -1)
                                    {
                                       addr325:
                                       §5!]§(§32§);
                                       §32§ = -1;
                                       addr303:
                                       addr328:
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr283:
                                          if(§%!i§ == §!!2§.§'!q§)
                                          {
                                             addr288:
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.§"=§ = true;
                                                §%!i§ = "";
                                                §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                addr298:
                                                addr282:
                                                if(_loc3_ || _loc1_)
                                                {
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr176:
                                                      §'!Q§.getItemByName("MovieClip_RightCorner").mClip.mouseEnabled = false;
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            this.§8U§.start();
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(_loc4_ && _loc1_)
                                                                  {
                                                                     §§goto(addr298);
                                                                  }
                                                                  return;
                                                               }
                                                               addr206:
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§goto(addr176);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§'!Q§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
                                                                  addr231:
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§'!Q§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                addr277:
                                                §§goto(addr277);
                                             }
                                             §§goto(addr328);
                                          }
                                          this.§"=§ = false;
                                          §§goto(addr206);
                                       }
                                       §§goto(addr325);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr325);
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
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8U§.stop();
            do
            {
               super.deActivate();
            }
            while(!_loc1_);
            
         }
      }
      
      protected function §3!F§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = param1.currentFrame + 1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  if(!_loc3_)
                  {
                     addr83:
                     _loc2_ = param1.totalFrames;
                  }
                  while(true)
                  {
                     §§goto(addr55);
                  }
               }
               addr55:
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§"=§)
            {
               loop5:
               while(true)
               {
                  this.§@!U§ += param1;
                  loop4:
                  while(true)
                  {
                     §§push(this.§@!U§);
                     addr89:
                     loop1:
                     while(§§pop() >= this.§&!!§)
                     {
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              this.§3!F§(§'!Q§.getItemByName("MovieClip_RightCorner").mClip);
                              while(!_loc3_)
                              {
                                 continue loop4;
                              }
                              this.§3!F§(§'!Q§.getItemByName("MovieClip_LeftCorner").mClip);
                              this.§@!U§ = 0;
                              addr67:
                              break loop1;
                              addr105:
                              addr75:
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               addr111:
            }
            while(true)
            {
               this.§8U§.run(param1);
               if(!_loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           §§push(super.run(param1));
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr75);
               }
               §§goto(addr67);
            }
            return §§pop();
         }
         §§goto(addr111);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Array = null;
         var _loc1_:* = Number(0);
         if(_loc6_ || _loc3_)
         {
            §&!S§ = [];
            while(true)
            {
               §8!d§ = [];
               while(_loc6_)
               {
                  §8C§ = LevelManager.§!!A§(LevelManager.§`^§).§9J§;
                  loop2:
                  for(; !(_loc5_ && _loc2_); loop4:
                  while(!(_loc5_ && _loc3_))
                  {
                     while(true)
                     {
                        §<#§ = §8C§;
                        if(_loc5_)
                        {
                           continue loop4;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr39);
                     }
                     var _loc2_:§8K§ = LevelManager.§!!A§(LevelManager.§`^§);
                     var _loc3_:Number = 0;
                     loop6:
                     while(_loc3_ < _loc2_.pageIndexes.length)
                     {
                        _loc4_ = _loc2_.§#E§(_loc2_.pageIndexes[_loc3_]);
                        if(_loc6_)
                        {
                           §&!S§.push(_loc2_.§;y§(_loc3_));
                           while(true)
                           {
                              §8!d§.push(_loc2_.§,G§(_loc3_));
                              addr153:
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr125:
                                       _loc3_ = §§pop();
                                       if(_loc6_ || _loc1_)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_));
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr150:
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                   }
                                                   addr150:
                                                }
                                                §§goto(addr150);
                                             }
                                             addr135:
                                          }
                                          continue loop6;
                                       }
                                       while(_loc6_)
                                       {
                                          §§goto(addr153);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr135);
                                       }
                                       addr167:
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr167);
                     }
                     if(_loc6_)
                     {
                        §2!A§();
                        if(_loc6_)
                        {
                           if(§%!i§ != StateCutScene.§'!q§)
                           {
                              §5!]§(§8C§,true);
                              if(!_loc6_)
                              {
                                 addr214:
                                 §§goto(addr186);
                              }
                              else
                              {
                                 addr209:
                              }
                              addr186:
                              while(_loc5_ && _loc3_)
                              {
                                 continue loop12;
                              }
                              return;
                           }
                           if(!_loc5_)
                           {
                              §%!i§ = "";
                           }
                           while(true)
                           {
                              §5!]§(§<#§);
                              §§goto(addr214);
                           }
                           §§goto(addr214);
                        }
                     }
                     §§goto(addr209);
                  })
                  {
                     while(true)
                     {
                        §'!m§ = §8C§;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §#l§(param1:String, param2:Boolean, param3:int, param4:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:MovieClip = null;
         §§push(param3);
         if(_loc10_ || param1)
         {
            §§push(int(§§pop() - (§-!]§ - 1)));
         }
         var _loc5_:* = §§pop();
         var _loc6_:MovieClip = §'!Q§.getItemByName("ExtraLevel" + _loc5_).mClip;
         if(!(_loc11_ && this))
         {
            §§push(param2);
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.gotoAndStop("Locked");
                  loop1:
                  while(true)
                  {
                     if(!(_loc10_ || param2))
                     {
                        loop11:
                        while(true)
                        {
                           if(_loc6_.MovieClip_Stars)
                           {
                              while(true)
                              {
                                 _loc6_.MovieClip_Stars.mouseEnabled = false;
                                 addr147:
                                 while(_loc11_ && this)
                                 {
                                    while(true)
                                    {
                                       _loc6_.gotoAndStop("Open");
                                       addr176:
                                       while(true)
                                       {
                                          _loc6_.TextField_LevelNum.text.text = param3 + 1 + param4 * LevelManager.§`r§(param1).levelsPerPage;
                                          continue loop11;
                                       }
                                    }
                                 }
                              }
                              addr143:
                           }
                           addr125:
                           while(true)
                           {
                           }
                        }
                        addr170:
                     }
                     while(true)
                     {
                        _loc6_.isOpen = param2;
                        continue loop1;
                        §§goto(addr125);
                     }
                  }
               }
               §§goto(addr173);
            }
         }
         §§goto(addr170);
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§8K§) : Number
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §,!j§.§!!N§(§8!d§[param2]);
         var _loc7_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc7_);
            loop1:
            while(§§pop() < param1.length)
            {
               _loc11_ = param1[_loc7_];
               if(_loc16_ || param1)
               {
                  loop2:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_));
                     if(_loc16_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc12_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc7_);
                        if(!_loc15_)
                        {
                           if(§§pop() > §-!]§ - 1)
                           {
                              if(_loc16_ || param3)
                              {
                                 continue;
                              }
                              addr80:
                              if(false)
                              {
                                 continue loop2;
                              }
                           }
                           else
                           {
                              _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
                              (_loc14_ = <Button/>).@name = _loc11_;
                              if(!(_loc15_ && param1))
                              {
                                 §§push(_loc12_);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc14_.@MouseUp = _loc11_;
                                                   addr223:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr220:
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                _loc14_.@scaleOnMouseOver = "True";
                                                while(true)
                                                {
                                                   _loc5_[0].push(new Array(_loc14_,null,_loc13_));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                               if(!_loc16_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     _loc13_.TextField_LevelNum.text.mouseEnabled = false;
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr141:
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           if(!(_loc16_ || param3))
                                                                           {
                                                                              break loop15;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr240:
                                                                           §§push(_loc7_);
                                                                           if(!(_loc15_ && param3))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     addr184:
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr238:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(AngryBirdsFP11.§?C§);
                                                                  continue loop4;
                                                               }
                                                            }
                                                            addr216:
                                                            while(!_loc15_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr199:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr220);
                                                      }
                                                   }
                                                   continue loop13;
                                                   if(!(_loc16_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   _loc13_.MovieClip_Stars.mouseEnabled = false;
                                                   §§goto(addr184);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr240);
                        }
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc16_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
               break;
            }
            addr271:
            _loc8_ = <Repeater/>;
            if(!(_loc15_ && this))
            {
               if(param1.length != 15)
               {
                  _loc8_.@name = "Repeater_LevelSelection";
                  addr343:
                  if(_loc16_)
                  {
                     addr323:
                     _loc8_.@button = §8!d§[param2];
                     if(!(_loc15_ && this))
                     {
                        _loc8_.@enabled = "True";
                        addr315:
                        if(_loc16_ || param1)
                        {
                           addr304:
                           _loc8_.@buttonSelectionType = "NO_SELECTION";
                           if(_loc16_)
                           {
                              _loc8_.@fromLibrary = "true";
                              if(_loc16_ || param1)
                              {
                                 if(!(_loc15_ && param2))
                                 {
                                    if(false)
                                    {
                                       §§goto(addr304);
                                    }
                                    §§push(param3);
                                    if(!(_loc15_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    var _loc10_:§<N§;
                                    (_loc10_ = new §<N§(_loc8_,§>&§,null,null)).§+Y§ = 5;
                                    if(!(_loc15_ && param2))
                                    {
                                       _loc10_.§-!Z§ = 0;
                                       _loc10_.§>k§(_loc5_);
                                       _loc10_.setVisibility(true);
                                       addr468:
                                       addr484:
                                       if(!(_loc15_ && param2))
                                       {
                                          _loc10_.x = param3;
                                          _loc10_.y = 50;
                                          §>&§.addComponent(_loc10_);
                                          §?J§.push(_loc10_);
                                          addr463:
                                          addr458:
                                          addr453:
                                          if(!(_loc15_ && param2))
                                          {
                                             addr410:
                                             §§push(_loc9_);
                                             if(!(_loc15_ && param3))
                                             {
                                                addr409:
                                                §§push(Number(§§pop() + AngryBirdsFP11.§!Z§));
                                             }
                                             param3 = §§pop();
                                             if(!_loc15_)
                                             {
                                                if(_loc16_)
                                                {
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§push(param3);
                                                            if(_loc16_ || param1)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  §§goto(addr409);
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr458);
                                                }
                                                §§goto(addr453);
                                             }
                                             §§goto(addr463);
                                          }
                                          §§goto(addr484);
                                       }
                                       addr480:
                                       §§goto(addr480);
                                    }
                                    §§goto(addr463);
                                 }
                                 addr350:
                                 _loc8_.@name = "Repeater_LevelSelection15";
                                 §§goto(addr323);
                                 addr353:
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr315);
                        }
                        §§goto(addr323);
                        addr336:
                     }
                     §§goto(addr343);
                  }
                  §§goto(addr353);
               }
               §§goto(addr350);
            }
            §§goto(addr336);
         }
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §#!6§).§@z§(param1));
         if(!(_loc9_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(§§pop()));
            if(_loc10_ || param2)
            {
               if(§§pop())
               {
                  if(_loc10_ || param2)
                  {
                     addr79:
                     §§pop();
                     if(_loc10_ || param2)
                     {
                        addr90:
                        if(_loc7_ <= 3)
                        {
                           if(_loc10_ || param3)
                           {
                              addr98:
                              (_loc8_ = new §,!j§.§!!N§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(!_loc9_)
                              {
                                 _loc8_.x = -78;
                                 loop0:
                                 while(true)
                                 {
                                    addr123:
                                    while(true)
                                    {
                                       _loc8_.y = -102;
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr79);
         }
         §§goto(addr90);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc7_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(!(_loc8_ && param2))
         {
            §§push("BACK");
            if(!(_loc8_ && param1))
            {
               §§push(_loc6_);
               if(!(_loc8_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param2)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr394);
                     }
                     else
                     {
                        §§goto(addr252);
                     }
                  }
                  else
                  {
                     §§push("FRIENDS_BUTTON");
                     if(!(_loc8_ && param2))
                     {
                        §§push(_loc6_);
                        if(_loc7_ || this)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 addr252:
                                 §§push(1);
                                 if(_loc8_ && param3)
                                 {
                                 }
                              }
                              else
                              {
                                 addr280:
                                 §§push(2);
                                 if(!(_loc7_ || this))
                                 {
                                    addr339:
                                 }
                              }
                              §§goto(addr394);
                           }
                           else
                           {
                              §§push("showCredits");
                              if(!(_loc8_ && param2))
                              {
                                 §§push(_loc6_);
                                 if(!(_loc8_ && param1))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr280);
                                       }
                                       else
                                       {
                                          addr308:
                                          §§push(3);
                                          if(_loc8_)
                                          {
                                             addr377:
                                          }
                                          §§goto(addr394);
                                       }
                                    }
                                    else
                                    {
                                       §§push("EXTRALEVEL1");
                                       if(!_loc8_)
                                       {
                                          addr292:
                                          §§push(_loc6_);
                                          if(_loc7_ || param3)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§goto(addr308);
                                                }
                                                else
                                                {
                                                   addr369:
                                                   §§push(5);
                                                   if(_loc8_ && param2)
                                                   {
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr394);
                                                }
                                             }
                                             else
                                             {
                                                §§push("EXTRALEVEL2");
                                                if(_loc7_)
                                                {
                                                   addr315:
                                                   §§push(_loc6_);
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      addr323:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(4);
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr394);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr369);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("EXTRALEVEL3");
                                                         if(_loc7_ || param2)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc7_ || param3)
                                                            {
                                                               addr356:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr369);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr380:
                                                                  if("EXTRALEVEL4" !== _loc6_)
                                                                  {
                                                                     addr394:
                                                                     loop3:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §-!Q§.§#3§("Menu_Back");
                                                                           §!!2§.§%!i§ = §'!q§;
                                                                           mNextState = §8"!§.§'!q§;
                                                                           break;
                                                                           addr81:
                                                                           addr69:
                                                                           addr74:
                                                                        case 1:
                                                                           _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              addr49:
                                                                              while(true)
                                                                              {
                                                                                 §!!K§.§%$§(_loc4_);
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §<t§.§`n§.§5!M§();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr81);
                                                                                 }
                                                                                 §§goto(addr69);
                                                                              }
                                                                           }
                                                                           break;
                                                                        case 2:
                                                                           mNextState = §<&§.§'!q§;
                                                                           break;
                                                                           addr172:
                                                                        case 3:
                                                                           this.§ "#§("1-11");
                                                                           break;
                                                                           addr164:
                                                                        case 4:
                                                                           this.§ "#§("1-12");
                                                                           addr143:
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 §§goto(addr130);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr177);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr164);
                                                                           }
                                                                           break;
                                                                        case 5:
                                                                           this.§ "#§("1-13");
                                                                           break;
                                                                           addr136:
                                                                        case 6:
                                                                           this.§ "#§("1-14");
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    §§goto(addr128);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr172);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr143);
                                                                              }
                                                                              §§goto(addr130);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr136);
                                                                           }
                                                                     }
                                                                     return;
                                                                     §§push(7);
                                                                  }
                                                               }
                                                               §§goto(addr394);
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   §§goto(addr380);
                                                }
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr323);
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr394);
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr292);
                           }
                        }
                        §§goto(addr380);
                     }
                     §§goto(addr315);
                  }
                  §§goto(addr394);
               }
               §§goto(addr323);
            }
            §§goto(addr292);
         }
         §§goto(addr308);
      }
      
      private function § "#§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(param1));
         if(!(_loc4_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr73:
                  LevelManager.§`!O§(LevelManager.§5l§(param1));
               }
               do
               {
                  mNextState = StateCutScene.§'!q§;
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr73);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).§5!B§.text = (param1 + 1).toString();
         }
      }
   }
}
