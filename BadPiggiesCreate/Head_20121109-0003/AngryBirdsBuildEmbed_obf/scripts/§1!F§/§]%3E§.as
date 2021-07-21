package §1!F§
{
   import §!!8§.§"!i§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§ else§;
   import §"!E§.§%O§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §-!0§.§0!k§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!i§.§@!n§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §]>§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelSelectionStateBS";
      
      private static const §%!V§:Number = 0.5;
      
      public static var §3d§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "LevelSelectionStateBS";
            if(!(_loc1_ && _loc1_))
            {
               §%!V§ = 0.5;
               if(_loc2_)
               {
                  addr49:
                  §3d§ = "";
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private var §#!<§:Boolean = false;
      
      private var §+Q§:§[!s§;
      
      private var §&!l§:§[!s§;
      
      private var §<!^§:Array;
      
      private var §0![§:Array;
      
      private var §#!2§:int = 0;
      
      private var §,!@§:int = 0;
      
      private var §%<§:int = 0;
      
      private var §<!v§:Boolean = false;
      
      private var §7!Z§:§=Y§ = null;
      
      private var §>!5§:Dictionary;
      
      private var §>i§:Array;
      
      private var §%U§:Array;
      
      private var §7H§:§%!Y§;
      
      private var §"!d§:Number = 0;
      
      public function §]>§(param1:Boolean = false, param2:String = "LevelSelectionStateBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            if(_loc1_ || _loc2_)
            {
               §+!$§ = new §2U§(this);
               if(!(_loc2_ && _loc2_))
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelSelectionBS[0]);
                  if(_loc1_ || this)
                  {
                     this.§0![§ = [];
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr87);
               }
            }
            this.§<!^§ = [];
         }
         addr87:
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         if(!_loc1_)
         {
            §'!V§.§1!2§.§-I§(false);
         }
         this.§]!_§(true);
         this.each();
         if(_loc2_)
         {
            AngryBirdsFP11.§?!7§();
            if(!(_loc1_ && _loc2_))
            {
               addr61:
               §"!i§.§]!p§(§=q§.§<!@§,0,7,this.§[!O§,this.§"-§);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §[!O§(param1:Object) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:MovieClip = null;
         var _loc8_:* = NaN;
         var _loc9_:§0!k§ = null;
         var _loc10_:MovieClip = null;
         var _loc11_:§%O§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:§0!k§ = null;
         var _loc15_:Sprite = null;
         var _loc2_:Array = JSON.parse(param1 as String).levels;
         if(!_loc17_)
         {
            §=q§.§[!A§(_loc2_);
         }
         var _loc3_:Vector.<§0!k§> = §=q§.§0c§();
         if(_loc18_ || param1)
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc17_ && _loc2_))
               {
                  _loc8_ = Number(0);
                  addr82:
                  _loc9_ = _loc3_[_loc8_++];
                  _loc10_ = new MovieClip();
                  _loc11_ = §+!$§.getItemByName("ImageContainer_LevelThumb") as §%O§;
                  if(_loc18_ || param1)
                  {
                     _loc10_.addChild(_loc9_.thumbnail);
                     if(!(_loc17_ && param1))
                     {
                        §§push(_loc10_.width > _loc11_.mClip.width);
                        if(!(_loc17_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              if(!_loc17_)
                              {
                                 addr138:
                                 §§pop();
                                 §§push(_loc10_.height > _loc11_.mClip.height);
                              }
                           }
                           if(§§pop())
                           {
                              §§push(_loc11_.mClip.width / _loc10_.width);
                              if(_loc18_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc17_ && param1))
                                 {
                                    _loc12_ = §§pop();
                                    §§push(_loc11_.mClip.height / _loc10_.height);
                                    if(!_loc18_)
                                    {
                                    }
                                    §§goto(addr172);
                                 }
                                 §§push(Number(§§pop()));
                              }
                              addr172:
                              _loc13_ = §§pop();
                              _loc10_.scaleX = _loc10_.scaleY = _loc12_ < _loc13_ ? Number(_loc12_) : Number(_loc13_);
                              if(!_loc17_)
                              {
                                 addr192:
                                 _loc10_.scaleX = _loc10_.scaleY = 0.475;
                              }
                              _loc11_.changeMovieClip(_loc10_);
                              if(_loc18_ || this)
                              {
                                 §+!$§.setText(_loc9_.§'!#§,"TextField_LevelName");
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr138);
                     }
                     addr226:
                     §+!$§.setText(_loc9_.author,"TextField_LevelAuthor");
                     §§goto(addr231);
                  }
                  §§goto(addr192);
               }
               §§goto(addr82);
            }
            addr231:
            var _loc4_:Array;
            (_loc4_ = new Array())[0] = new Array();
            var _loc7_:Class = §1F§.§"!_§("Component_LevelSelection");
            while(true)
            {
               §§push(_loc8_);
               if(!_loc17_)
               {
                  §§push(§§pop() < _loc3_.length);
                  if(!_loc17_)
                  {
                     if(§§pop())
                     {
                        if(_loc18_)
                        {
                           §§pop();
                           if(!_loc17_)
                           {
                              addr387:
                              if(_loc8_ >= 7)
                              {
                                 break;
                              }
                              _loc14_ = _loc3_[_loc8_];
                              (_loc5_ = <Button/>).@name = _loc14_.id;
                              if(!_loc17_)
                              {
                                 _loc5_.@MouseUp = _loc14_.id;
                              }
                              _loc6_ = new _loc7_();
                              (_loc15_ = _loc14_.thumbnail).x = _loc6_.ImageContainer_LevelThumb.x;
                              _loc15_.y = _loc6_.ImageContainer_LevelThumb.y;
                              if(_loc18_ || this)
                              {
                                 _loc15_.scaleX = _loc15_.scaleY = 0.315;
                                 if(!(_loc17_ && this))
                                 {
                                    _loc6_.addChild(_loc15_);
                                 }
                                 _loc6_.ImageContainer_LevelThumb.visible = false;
                                 _loc6_.TextField_LevelName.text.text = _loc14_.§'!#§;
                                 if(_loc18_ || this)
                                 {
                                    _loc6_.TextField_LevelAuthor.text.text = _loc14_.author;
                                    if(!_loc18_)
                                    {
                                       continue;
                                    }
                                    _loc6_.TextField_LevelDay.visible = false;
                                    addr340:
                                    _loc4_[0].push(new Array(_loc5_,null,_loc6_));
                                    if(!(_loc18_ || this))
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc8_);
                                 if(_loc18_ || _loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 continue;
                              }
                              §§goto(addr340);
                           }
                           §§goto(addr433);
                        }
                     }
                  }
               }
               §§goto(addr387);
            }
            if(_loc18_ || _loc2_)
            {
               (§+!$§.getItemByName("Repeater_LevelSelection") as §?j§).§<!u§(_loc4_);
               if(!(_loc17_ && param1))
               {
                  (§+!$§.getItemByName("Repeater_LevelSelection") as §?j§).§+!b§("Repeater_LevelSelection_Tab_0");
                  if(_loc18_ || _loc2_)
                  {
                  }
                  §§goto(addr433);
               }
               §§goto(addr439);
            }
            addr433:
            §-!D§.§?5§("onLevelMenuOpened",null);
            if(_loc18_)
            {
               addr439:
               this.§]!_§(false);
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function §"-§() : void
      {
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr59);
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr76);
                     }
                  }
                  §§goto(addr76);
               }
               return §;!!§.STATE_STATUS_COMPLETED;
            }
            addr59:
            return _loc2_;
         }
         addr76:
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            if(!_loc2_)
            {
               addr27:
               §1^§.§3W§ = null;
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(param2.length > 0);
            if(!(_loc7_ && param2))
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§pop();
                        §§push(param3 is § else§);
                        if(_loc6_ || param2)
                        {
                           addr56:
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push((param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                 if(!_loc7_)
                                 {
                                    addr70:
                                    if(!§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          addr73:
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             addr84:
                                             if((param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr87:
                                                   addr89:
                                                   if(this.§<!v§)
                                                   {
                                                   }
                                                   var _loc4_:* = param2;
                                                   addr102:
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push("BACK");
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_ || param3)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  addr249:
                                                                  §§push(0);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr343:
                                                                  §§push(3);
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     addr358:
                                                                  }
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            else
                                                            {
                                                               §§push("NEXT");
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("PREV");
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc7_ && param3))
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc7_ && param2)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("FULLSCREEN_BUTTON");
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    addr317:
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       addr325:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr354:
                                                                                          if("PLAY_LEVEL_OF_DAY" !== _loc4_)
                                                                                          {
                                                                                             addr363:
                                                                                             switch(§§pop())
                                                                                             {
                                                                                                case 0:
                                                                                                   §+!§.§4c§("Menu_Back");
                                                                                                   if(!(_loc7_ && param2))
                                                                                                   {
                                                                                                      mNextState = §-G§.STATE_NAME;
                                                                                                   }
                                                                                                   break;
                                                                                                case 1:
                                                                                                   §+!§.§4c§("Menu_Confirm");
                                                                                                   §§push(this.§<!v§);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr203:
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push((_loc4_ = this).§#!2§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         var _loc5_:* = §§pop();
                                                                                                         if(_loc6_ || param3)
                                                                                                         {
                                                                                                            _loc4_.§#!2§ = _loc5_;
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr157:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§push((_loc4_ = this).§#!2§);
                                                                                                      if(_loc6_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         _loc4_.§#!2§ = _loc5_;
                                                                                                      }
                                                                                                      if(_loc7_ && param1)
                                                                                                      {
                                                                                                         addr200:
                                                                                                         AngryBirdsFP11.§`!d§.§!5§();
                                                                                                         §§goto(addr203);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr203);
                                                                                                case 2:
                                                                                                   §+!§.§4c§("Menu_Confirm");
                                                                                                   §§goto(addr157);
                                                                                                case 3:
                                                                                                   §+!§.§4c§("Menu_Confirm");
                                                                                                   §§goto(addr200);
                                                                                                case 4:
                                                                                                   §@!n§.§,c§(StatePlayBS.STATE_NAME,§=q§.§0c§()[0].id);
                                                                                                   mNextState = §@!n§.STATE_NAME;
                                                                                             }
                                                                                             this.§<!v§;
                                                                                             return;
                                                                                             §§push(5);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr249);
                                                   addr102:
                                                }
                                                §@!n§.§,c§(StatePlayBS.STATE_NAME,param2.toLowerCase());
                                                if(_loc6_)
                                                {
                                                   addr98:
                                                   mNextState = §@!n§.STATE_NAME;
                                                }
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr56);
               }
               §§goto(addr70);
            }
            §§goto(addr73);
         }
         §§goto(addr98);
      }
      
      public function each() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Number = 0;
         if(_loc3_ || _loc2_)
         {
            this.§>i§ = [];
            if(_loc3_ || _loc2_)
            {
               addr57:
               this.§%U§ = [];
               if(!_loc2_)
               {
                  this.§,!@§ = this.§#!2§;
                  if(_loc3_ || _loc3_)
                  {
                  }
                  §§goto(addr77);
               }
               this.§%<§ = this.§#!2§;
            }
            addr77:
            return;
         }
         §§goto(addr57);
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
      }
      
      public function §]!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §+!$§.setItemVisibility("MovieClip_Loading",param1);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr45);
            }
            §§goto(addr52);
         }
         addr45:
         §+!$§.setItemVisibility("Container_LevelOfTheDay",!param1);
         if(_loc3_)
         {
            addr52:
            §+!$§.setItemVisibility("Repeater_LevelSelection",!param1);
         }
      }
   }
}
