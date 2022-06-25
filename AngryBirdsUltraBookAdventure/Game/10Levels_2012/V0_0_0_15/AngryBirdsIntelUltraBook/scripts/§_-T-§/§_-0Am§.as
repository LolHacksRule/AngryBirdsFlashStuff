package §_-T-§
{
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-eS§.§_-OY§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-IO§;
   import com.angrybirds.friendsbar.§_-ri§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-0Am§ extends §_-UO§
   {
      
      public static var §_-5D§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-5D§ = -1;
         }
      }
      
      private var §_-075§:Boolean = false;
      
      private var §_-0CO§:Number = 41.666666666666664;
      
      private var §_-cc§:int = 0;
      
      private var §_-XP§:§_-IO§;
      
      public function §_-0Am§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            do
            {
               §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
            while(_loc1_);
            
         }
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §_-s0§ = new §_-5q§(this);
         }
         while(true)
         {
            §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelSelection[0]);
            loop1:
            while(!_loc2_)
            {
               §_-g§ = §_-s0§.getItemByName("Container_LevelRepeaters") as §_-gt§;
               loop2:
               do
               {
                  §_-gT§ = §_-s0§.getItemByName("Container_LevelSelection") as §_-gt§;
                  while(_loc1_)
                  {
                     this.§_-XP§ = new §_-IO§(§_-s0§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_ && _loc2_);
               
               return;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
         }
         var _loc1_:§_-0C5§ = LevelManager.§_-1a§();
         if(_loc4_)
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §_-s0§.visible = true;
                  while(true)
                  {
                     §§push(§ in§.§_-HY§);
                     loop2:
                     while(true)
                     {
                        (§§pop() as §_-rG§).§_-0C7§.§_-LA§ = false;
                        addr121:
                        while(true)
                        {
                           §§push(§ in§.§_-HY§);
                           continue loop2;
                        }
                     }
                  }
                  addr131:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr131);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-XP§.stop();
            do
            {
               super.deActivate();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §_-0Ez§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = param1.currentFrame + 1;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  if(!_loc4_)
                  {
                     addr72:
                     _loc2_ = param1.totalFrames;
                     addr73:
                     while(true)
                     {
                     }
                     addr73:
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr73);
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§_-075§)
            {
               loop0:
               while(true)
               {
                  this.§_-cc§ += param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-cc§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= this.§_-0CO§)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§_-0Ez§(§_-s0§.getItemByName("MovieClip_RightCorner").mClip);
                              }
                              addr94:
                           }
                           while(_loc3_)
                           {
                              this.§_-0Ez§(§_-s0§.getItemByName("MovieClip_LeftCorner").mClip);
                              while(_loc3_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§_-cc§ = 0;
                                    loop5:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§_-XP§.run(param1);
                                          if(!(_loc2_ && param1))
                                          {
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       return §§pop();
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr94);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Array = null;
         var _loc1_:* = Number(0);
         if(!_loc6_)
         {
            §_-se§ = [];
            while(true)
            {
               §_-t7§ = [];
               while(_loc5_ || this)
               {
                  §_-oC§ = LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§;
                  loop2:
                  for(; _loc5_; while(!(_loc6_ && this))
                  {
                     §_-TW§ = §_-oC§;
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr31);
                  })
                  {
                     while(true)
                     {
                        do
                        {
                           §_-00N§ = §_-oC§;
                           continue loop2;
                        }
                        while(false);
                        
                        var _loc2_:§_-0C5§ = LevelManager.§_-h8§(LevelManager.§_-07s§);
                        var _loc3_:* = Number(0);
                        loop6:
                        while(_loc3_ < _loc2_.pageIndexes.length)
                        {
                           _loc4_ = _loc2_.§_-27§(_loc2_.pageIndexes[_loc3_]);
                           if(!(_loc6_ && _loc3_))
                           {
                              §_-se§.push(_loc2_.§_-3k§(_loc3_));
                              while(true)
                              {
                                 §_-t7§.push(_loc2_.§_-vx§(_loc3_));
                                 loop8:
                                 while(!(_loc6_ && _loc3_))
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
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc5_ || _loc1_))
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop8;
                                             }
                                             addr134:
                                             while(false)
                                             {
                                                continue loop9;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr134);
                        }
                        if(_loc5_)
                        {
                           §_-Bi§();
                           if(_loc5_ || _loc3_)
                           {
                              if(§_-yr§ != StateCutScene.§_-pk§)
                              {
                                 §_-Mx§(§_-oC§,true);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §_-Mx§(§_-TW§);
                                          addr225:
                                          addr227:
                                          while(_loc6_)
                                          {
                                             continue loop14;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr220:
                                    }
                                    return;
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr227);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§_-0C5§) : Number
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
         var _loc6_:Class = §_-Fc§.§_-YE§(§_-t7§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            if(_loc16_ || param1)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_));
               if(_loc16_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc12_ = §§pop();
               if(!_loc16_)
               {
                  break;
               }
            }
            _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
            (_loc14_ = <Button/>).@name = _loc11_;
            if(_loc16_ || param3)
            {
               §§push(_loc12_);
               loop1:
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
                           addr237:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§_-LI§);
                              while(_loc16_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc16_ || param3)
                                 {
                                    if(!_loc15_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 _loc14_.@MouseUp = _loc11_;
                                 addr231:
                                 while(true)
                                 {
                                 }
                              }
                              addr228:
                           }
                           addr200:
                           while(true)
                           {
                              _loc14_.@scaleOnMouseOver = "True";
                           }
                           addr199:
                           §§push(_loc12_);
                           if(_loc15_)
                           {
                              continue;
                           }
                           §§goto(addr151);
                        }
                     }
                  }
               }
            }
            §§goto(addr204);
         }
         _loc8_ = <Repeater/>;
         if(!_loc15_)
         {
            if(param1.length == 15)
            {
               if(!(_loc15_ && param2))
               {
                  _loc8_.@name = "Repeater_LevelSelection15";
               }
               loop17:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     _loc8_.@button = §_-t7§[param2];
                     continue loop17;
                     addr304:
                     while(true)
                     {
                        continue loop18;
                     }
                  }
               }
            }
            else
            {
               _loc8_.@name = "Repeater_LevelSelection";
            }
         }
         §§goto(addr304);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(param1));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(_loc9_ || param3)
         {
            §§push(Boolean(§§pop()));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param1))
                  {
                     §§pop();
                     if(!(_loc10_ && this))
                     {
                        addr79:
                        if(_loc7_ <= 3)
                        {
                           if(!(_loc10_ && param3))
                           {
                              (_loc8_ = new §_-Fc§.§_-YE§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(!(_loc10_ && param3))
                              {
                                 _loc8_.x = -78;
                              }
                              loop0:
                              while(true)
                              {
                                 while(true)
                                 {
                                    _loc8_.y = -102;
                                    do
                                    {
                                       _loc6_.addChild(_loc8_);
                                    }
                                    while(_loc10_);
                                    
                                    if(_loc9_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr133:
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr133);
                     }
                     addr147:
                     _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§_-N9§(param1).levelsPerPage;
                     addr147:
                     return _loc6_;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
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
         if(!(_loc8_ && param3))
         {
            §§push("BACK");
            if(!_loc8_)
            {
               §§push(_loc6_);
               if(!(_loc8_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param3)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           addr194:
                        }
                     }
                     else
                     {
                        addr198:
                        §§push(2);
                        if(_loc8_)
                        {
                        }
                     }
                     §§goto(addr206);
                  }
                  else
                  {
                     §§push("FRIENDS_BUTTON");
                     if(_loc7_)
                     {
                        addr180:
                        §§push(_loc6_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr186:
                                 §§push(1);
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr194);
                                 }
                              }
                              else
                              {
                                 §§goto(addr198);
                              }
                              §§goto(addr206);
                           }
                           else
                           {
                              §§push("showCredits");
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr197);
                     }
                     addr197:
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr198);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr206:
                     loop3:
                     switch(§§pop())
                     {
                        case 0:
                           §_-pX§.playSound("Menu_Back");
                           §_-aa§.§_-yr§ = §_-pk§;
                           loop0:
                           while(true)
                           {
                              mNextState = §_-Rp§.§_-pk§;
                              addr72:
                              while(true)
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                           addr91:
                        case 1:
                           _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                           if(!_loc8_)
                           {
                              while(true)
                              {
                                 §_-OY§.§_-7i§(_loc4_);
                                 if(_loc7_ || param1)
                                 {
                                    §_-rG§.§_-rY§.§_-DE§();
                                    if(!(_loc8_ && param1))
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(true)
                                             {
                                                _loc5_ = new URLRequest(_loc4_);
                                                if(_loc7_)
                                                {
                                                   navigateToURL(_loc5_,"_blank");
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      break loop3;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr132:
                                             }
                                             continue;
                                             break loop3;
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr72);
                                    }
                                    break loop3;
                                 }
                                 break loop3;
                              }
                              break;
                           }
                           break;
                        case 2:
                           mNextState = §_-7A§.§_-pk§;
                           §§goto(addr132);
                     }
                     return;
                     §§push(_loc6_);
                  }
                  §§goto(addr198);
               }
               §§goto(addr197);
            }
            §§goto(addr180);
         }
         §§goto(addr186);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).§_-ab§.text = (param1 + 1).toString();
         }
      }
   }
}
