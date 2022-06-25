package §'!J§
{
   import §,!§.§![§;
   import §1!E§.§#?§;
   import §1!E§.§31§;
   import §1!E§.§?!x§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §8!;§.§4I§;
   import §;H§.§!y§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §[§ extends §!y§
   {
      
      public static var §48§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §48§ = -1;
         }
      }
      
      private var § O§:Boolean = false;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      private var §8Y§:§4I§;
      
      public function §[§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&!m§ = new §4`§(this);
         }
         do
         {
            §&!m§.init(§ !I§.§3!a§.Views.View_LevelSelection[0]);
            do
            {
               §#O§ = §&!m§.getItemByName("Container_LevelRepeaters") as §#?§;
               do
               {
                  §3!^§ = §&!m§.getItemByName("Container_LevelSelection") as §#?§;
                  do
                  {
                     this.§8Y§ = new §4I§(§&!m§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.activate();
         }
         var _loc1_:§<!#§ = LevelManager.§];§();
         if(_loc4_ || _loc2_)
         {
            if(_loc1_ != null)
            {
               while(true)
               {
                  §&!m§.visible = true;
                  while(true)
                  {
                     §§push(§^!c§.§2!w§);
                     loop2:
                     while(true)
                     {
                        (§§pop() as §[!P§).§99§.§&§ = false;
                        addr116:
                        while(true)
                        {
                           §§push(§^!c§.§2!w§);
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§8Y§.stop();
         }
         do
         {
            super.deActivate();
         }
         while(!(_loc1_ || this));
         
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  if(_loc3_ || param1)
                  {
                     addr77:
                     _loc2_ = param1.totalFrames;
                  }
                  while(true)
                  {
                  }
                  addr78:
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§ O§)
            {
               loop0:
               while(true)
               {
                  this.§8"§ += param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§8"§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < this.§?!j§)
                        {
                           loop7:
                           while(true)
                           {
                              this.§8Y§.run(param1);
                              if(!(_loc3_ && _loc3_))
                              {
                                 continue loop2;
                              }
                              addr65:
                              loop6:
                              while(_loc2_ || param1)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§2!#§(§&!m§.getItemByName("MovieClip_RightCorner").mClip);
                                       }
                                       addr110:
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§2!#§(§&!m§.getItemByName("MovieClip_LeftCorner").mClip);
                                    break loop6;
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                           addr35:
                           return §§pop();
                           addr38:
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
            §§goto(addr38);
         }
         §§goto(addr78);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         if(_loc6_ || this)
         {
            §^!u§ = [];
         }
         loop0:
         while(true)
         {
            §^!f§ = [];
            while(true)
            {
               §^B§ = LevelManager.§'J§(LevelManager.§>!$§).§ each§;
               loop2:
               while(true)
               {
                  addr46:
                  while(true)
                  {
                     §9!4§ = §^B§;
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§<!#§) : Number
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
         var _loc6_:Class = §`!t§.§=J§(§^!f§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            if(!_loc16_)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_));
               if(_loc15_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc12_ = §§pop();
               if(!(_loc15_ || this))
               {
                  break;
               }
               _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
               (_loc14_ = <Button/>).@name = _loc11_;
               if(!_loc16_)
               {
                  §§push(_loc12_);
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    _loc14_.@MouseUp = _loc11_;
                                    addr230:
                                    while(true)
                                    {
                                    }
                                    addr174:
                                    if(_loc16_ && param1)
                                    {
                                       continue;
                                    }
                                    _loc13_.MovieClip_Stars.mouseEnabled = false;
                                    loop14:
                                    while(true)
                                    {
                                       addr137:
                                       while(true)
                                       {
                                          _loc13_.TextField_LevelNum.text.mouseEnabled = false;
                                          addr143:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc16_ && param1))
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc16_)
                                                {
                                                   addr110:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc7_ = §§pop();
                                                if(_loc15_ || param1)
                                                {
                                                   continue loop14;
                                                }
                                                continue;
                                             }
                                             §§goto(addr110);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc14_.@scaleOnMouseOver = "True";
                                 §§goto(addr211);
                                 §§goto(addr230);
                              }
                           }
                           addr225:
                        }
                        §§goto(addr235);
                     }
                     while(_loc15_ || this)
                     {
                        §§goto(addr225);
                     }
                  }
               }
               §§goto(addr143);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!_loc16_)
         {
            if(param1.length != 15)
            {
               _loc8_.@name = "Repeater_LevelSelection";
               loop17:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     _loc8_.@button = §^!f§[param2];
                     addr289:
                     loop19:
                     while(!_loc16_)
                     {
                        if(!(_loc16_ && this))
                        {
                           _loc8_.@enabled = "True";
                           continue loop17;
                        }
                        addr310:
                        while(true)
                        {
                           _loc8_.@name = "Repeater_LevelSelection15";
                           break loop19;
                        }
                     }
                     while(true)
                     {
                        continue loop18;
                     }
                  }
               }
            }
         }
         §§goto(addr310);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §![§).§<y§(param1));
         if(_loc10_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
            if(_loc10_ || param1)
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        addr75:
                        if(_loc7_ <= 3)
                        {
                           if(_loc10_ || this)
                           {
                              addr83:
                              (_loc8_ = new §`!t§.§=J§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(_loc10_)
                              {
                                 _loc8_.x = -78;
                                 loop0:
                                 while(true)
                                 {
                                    addr103:
                                    while(true)
                                    {
                                       _loc8_.y = -102;
                                       continue loop0;
                                    }
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr103);
                              }
                              addr129:
                              _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§1H§(param1).levelsPerPage;
                           }
                           return _loc6_;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
         if(_loc7_)
         {
            §§push("BACK");
            if(_loc7_)
            {
               §§push(_loc6_);
               if(!_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                        }
                        §§goto(addr191);
                     }
                     else
                     {
                        §§goto(addr171);
                     }
                  }
                  else
                  {
                     §§push("FRIENDS_BUTTON");
                     if(!(_loc8_ && param3))
                     {
                        §§push(_loc6_);
                        if(_loc7_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_ || this)
                              {
                                 addr171:
                                 §§push(1);
                                 if(_loc8_ && this)
                                 {
                                 }
                                 §§goto(addr191);
                              }
                              else
                              {
                                 addr183:
                                 §§push(2);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr186);
                                 }
                              }
                           }
                           else
                           {
                              addr182:
                              if("showCredits" === _loc6_)
                              {
                                 §§goto(addr183);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr182);
                  }
                  addr191:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §9'§.playSound("Menu_Back");
                        §#!D§.§9!c§ = §"!s§;
                        if(_loc7_)
                        {
                           mNextState = §,!]§.§"!s§;
                           break;
                           addr67:
                        }
                        break;
                        addr81:
                     case 1:
                        _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              §@!J§.§!v§(_loc4_);
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       §[!P§.§;!K§.§&2§();
                                       if(_loc7_ || param1)
                                       {
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             if(true)
                                             {
                                                _loc5_ = new URLRequest(_loc4_);
                                                if(_loc7_)
                                                {
                                                   navigateToURL(_loc5_,"_blank");
                                                   if(!_loc7_)
                                                   {
                                                      addr117:
                                                      break loop3;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                             break loop3;
                                          }
                                          §§goto(addr81);
                                       }
                                       break loop3;
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr67);
                           }
                        }
                        break;
                     case 2:
                        mNextState = §9!3§.§"!s§;
                        §§goto(addr117);
                  }
                  return;
               }
            }
            §§goto(addr182);
         }
         §§goto(addr183);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).§,!F§.text = (param1 + 1).toString();
         }
      }
   }
}
