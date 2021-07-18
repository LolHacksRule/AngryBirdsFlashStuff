package §@!i§
{
   import § !r§.§`![§;
   import § !u§.§&Z§;
   import § !u§.§0m§;
   import § !u§.§9§;
   import § !u§.§9y§;
   import § !u§.§?K§;
   import §!!8§.§-!D§;
   import §!y§.§=!Z§;
   import §"!E§.*;
   import §#!4§.*;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §+]§.§#!v§;
   import §+]§.§7&§;
   import §+]§.§try§;
   import §<!<§.§]K§;
   import §<!B§.b2Vec2;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@_§.§1M§;
   import §`a§.§^7§;
   import §false§.§<O§;
   import §false§.§=#§;
   import §false§.Popup;
   import flash.display.CapsStyle;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class StateLevelEditor extends §;!!§ implements §try§
   {
      
      public static const STATE_NAME:String = "StateLevelEditor";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = "StateLevelEditor";
         }
      }
      
      private const §=<§:Number = 1.5;
      
      private const §2u§:Boolean = false;
      
      public var §[D§:§"U§ = null;
      
      private var §"!h§:Boolean = false;
      
      private var §#p§:Boolean = false;
      
      private var §=!<§:String = null;
      
      private var §&!E§:Popup;
      
      private var §?!<§:Popup;
      
      private var §'n§:Boolean = false;
      
      private var §2!C§:Timer = null;
      
      private var §![§:Shape = null;
      
      private var §"!n§:Shape = null;
      
      private var §-!1§:Shape = null;
      
      private var §>l§:int = 1;
      
      private var §]!7§:Point = null;
      
      private var §>8§:§^7§ = null;
      
      private var §8!P§:Number;
      
      private var §1o§:Boolean = false;
      
      private var §-6§:String = "";
      
      private var §28§:String = "";
      
      private var §8e§:§0m§;
      
      private var §3'§:Dictionary;
      
      private var §>!i§:§[!s§ = null;
      
      private var §^6§:Boolean;
      
      private var §!!-§:Vector.<§?K§>;
      
      private var §;!X§:§#!v§;
      
      private var §<K§:Boolean = false;
      
      private var §+C§:Boolean = false;
      
      private var §!!4§:Boolean = true;
      
      private const §+X§:String = "saveButton";
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§!!-§ = new Vector.<§?K§>();
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            if(_loc4_)
            {
               §-!D§.§<!C§("openEditor",this.§5Z§);
               if(_loc4_ || param1)
               {
               }
               §§goto(addr73);
            }
            §-!D§.§<!C§("snapshot",this.save);
         }
         addr73:
         §-!D§.§<!C§("publish",this.onPublish);
         §`![§.log("External methods registered.");
      }
      
      public static function §finally§() : ColorMatrixFilter
      {
         var _loc1_:Array = [0.3,0.3,0.3,0,0,0.3,0.3,0.3,0,0,0.3,0.3,0.3,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      override public function init() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!'§ = null;
         if(!_loc5_)
         {
            super.init();
            if(!(_loc5_ && _loc2_))
            {
               §§goto(addr30);
            }
            §§goto(addr65);
         }
         addr30:
         §^7§.§>!B§(true);
         §+!$§ = new §&Z§(this);
         this.§[D§ = new §"U§(§'!V§.§1!2§,this);
         if(!(_loc5_ && _loc3_))
         {
            §7j§.§else§.start();
            addr65:
            this.§>!i§ = §+!$§.getItemByName("Container_EditorMenu") as §[!s§;
         }
         this.§>!i§.mClip.mouseEnabled = true;
         for each(_loc1_ in (§+!$§.getItemByName("Container_EditorMenuButtons") as §[!s§).§?n§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.setComponentState(§<f§.§`O§);
            }
         }
         if(_loc4_)
         {
            this.§;!X§ = new §#!v§(§+!$§,this.§[D§);
            if(_loc4_)
            {
               this.§4!e§(false);
            }
         }
      }
      
      override public function getTargetFrameRate() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(Capabilities.os.indexOf("Mac") >= 0)
            {
               addr41:
               §§push(30);
               if(_loc1_ && this)
               {
               }
            }
            else
            {
               §§push(60);
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            §'!V§.resume();
            if(this.§#p§)
            {
               if(!_loc2_)
               {
                  this.§#p§ = false;
                  §§push(this.§[D§);
                  if(!_loc2_)
                  {
                     §§pop().activate();
                     if(_loc1_)
                     {
                        addr39:
                        this.§[D§.init();
                        addr40:
                        §'!V§.§>_§(this.§[D§);
                        this.§;!X§.activate();
                        if(!(_loc2_ && this))
                        {
                           this.§<!1§();
                           if(_loc2_ && _loc2_)
                           {
                           }
                           §§goto(addr111);
                        }
                        §+!$§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§@!7§);
                        if(!(_loc2_ && this))
                        {
                           §+!$§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr120);
                        addr37:
                     }
                     addr111:
                     §7&§.§=n§().addEventListener(Event.CHANGE,this.§-L§);
                     if(_loc1_)
                     {
                        addr120:
                        this.§-L§();
                     }
                     return;
                  }
                  §§goto(addr39);
               }
               §§goto(addr40);
            }
            §§goto(addr37);
         }
         §§goto(addr39);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            if(_loc2_)
            {
               this.§[D§.§9'§();
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr58);
               }
               §§goto(addr63);
            }
            §§goto(addr73);
         }
         addr58:
         this.§;!X§.deActivate();
         if(_loc2_)
         {
            addr63:
            this.§ do§(null);
            if(!(_loc1_ && this))
            {
               addr73:
               §+!$§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§@!7§);
            }
         }
      }
      
      private function §@!7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§8e§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr48:
                     this.§8e§.onEnterGUI();
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      private function §^!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8e§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().onLeaveGUI();
         }
         addr49:
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§8e§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  §§push(this.§!!4§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           (§+!$§ as §&Z§).§?!#§("Button_GeometryMenu");
                           this.§!!4§ = false;
                           if(!(_loc4_ && this))
                           {
                              addr61:
                              §'!V§.§?!G§.update(param1);
                              if(_loc5_ || param1)
                              {
                                 if(this.§![§)
                                 {
                                    if(_loc5_)
                                    {
                                       this.§![§.alpha -= 0.04;
                                    }
                                 }
                                 addr99:
                                 §§push(§7&§.§=n§().§4V§(this.§+X§));
                                 if(!(_loc4_ && this))
                                 {
                                    addr111:
                                    §§push(Boolean(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 §+!$§.getItemByName("Button_Save").setVisibility(_loc3_);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(this.§+C§ && _loc3_ && !this.§[D§.§0!O§());
                                    if(!(_loc4_ && this))
                                    {
                                       §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(this.§+C§ && _loc3_ && !this.§[D§.§0!O§());
                                       §+!$§.getItemByName("MovieClip_SaveGlow").mClip.rotation = §+!$§.getItemByName("MovieClip_SaveGlow").mClip.rotation + 0.08 * param1;
                                       if(_loc5_ || _loc2_)
                                       {
                                          this.§&b§(false);
                                          this.§+!r§();
                                          this.§1k§(param1);
                                          if(!_loc4_)
                                          {
                                             §§push(this);
                                             §§push("Button_ToolSelect");
                                             §§push(this.§[D§.§2=§());
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().setComponentState(§§pop(),§§pop());
                                             if(_loc4_ && this)
                                             {
                                             }
                                             §§goto(addr325);
                                          }
                                          this.setComponentState("Button_ToolPan",this.§[D§.§2=§());
                                          (§+!$§.getItemByName("Button_Slider") as §0X§).§'!a§(1 - this.§[D§.getZoomRatio());
                                          if(!_loc4_)
                                          {
                                             this.§@0§(this.§[D§.getLevelMain().objects.§1!8§());
                                             addr258:
                                             §§push(this.§8e§);
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr276);
                                             }
                                             addr272:
                                             this.§8e§.update(param1);
                                             if(!_loc4_)
                                             {
                                                addr276:
                                                if(this.§"!h§)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr286:
                                                      this.§[D§.§9[§();
                                                      if(_loc5_)
                                                      {
                                                         §@!n§.loadLevel(§"U§.getCurrentLevelData(),StateLevelEditorTestPlay.STATE_NAME);
                                                         mNextState = §@!n§.STATE_NAME;
                                                         this.§"!h§ = false;
                                                      }
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr319);
                                             }
                                             this.§#p§ = true;
                                             if(_loc5_)
                                             {
                                                addr319:
                                                if(mNextState.length > 0)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr325);
                                                   }
                                                }
                                                return §;!!§.STATE_STATUS_RUNNING;
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr276);
                                       }
                                       addr325:
                                       return §;!!§.STATE_STATUS_COMPLETED;
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr258);
                              }
                              if(this.§![§.alpha <= 0)
                              {
                                 §+!$§.removeChild(this.§![§);
                                 if(!_loc4_)
                                 {
                                    addr96:
                                    this.§![§ = null;
                                 }
                              }
                           }
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr111);
               }
            }
            return §§pop();
         }
         §§goto(addr96);
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param2)
            {
               §§goto(addr66);
            }
            else
            {
               §§push(§<f§.§`O§);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     §§goto(addr65);
                  }
                  addr66:
                  §§goto(addr20);
               }
            }
            §§goto(addr65);
         }
         addr20:
         §§push(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
            if(!_loc5_)
            {
               addr65:
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            (§+!$§.getItemByName(param1) as §#!'§).setComponentState(_loc3_);
         }
      }
      
      private function §1k§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§>!i§);
            if(_loc3_ || this)
            {
               §§push(this.§>!i§);
               if(!(_loc2_ && this))
               {
                  §§pop().x = §§pop().x + param1 * this.§=<§ * (this.§,B§().§<!o§() && !this.§[D§.§0!O§() ? 1 : -1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§>!i§);
                     if(_loc3_ || this)
                     {
                        if(§§pop().x > 5)
                        {
                           if(_loc3_)
                           {
                              §§push(this.§>!i§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().x = 5;
                                 if(_loc3_)
                                 {
                                    addr121:
                                    §§push(this.§>!i§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                              }
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr121);
                     }
                     addr130:
                     if(§§pop().x < -this.§>!i§.width)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr147:
                           this.§>!i§.x = -this.§>!i§.width;
                           addr145:
                        }
                     }
                     return;
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr147);
         }
         §§goto(addr121);
      }
      
      private function §4!e§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§^6§ = param1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§^6§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr41:
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     addr59:
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§push(this.§[D§);
                           if(!(_loc4_ && this))
                           {
                              §§pop().§[L§();
                           }
                           else
                           {
                              addr82:
                              §§pop().§6D§();
                              §§goto(addr83);
                           }
                           addr83:
                           return;
                        }
                     }
                  }
                  else
                  {
                     addr79:
                     if(§§pop())
                     {
                        §§goto(addr82);
                        §§push(this.§[D§);
                     }
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(param2);
               }
               §§goto(addr79);
            }
            §§goto(addr59);
         }
         §§goto(addr41);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            §§push("SELECT_ITEM");
            if(_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr377:
                     }
                  }
                  else
                  {
                     addr477:
                     §§push(11);
                     if(_loc6_)
                     {
                        addr506:
                     }
                  }
               }
               else
               {
                  §§push("SELECT_THEME");
                  if(!(_loc6_ && param1))
                  {
                     addr307:
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_)
                           {
                              §§push(1);
                              if(_loc6_ && param1)
                              {
                                 addr363:
                              }
                              §§goto(addr516);
                           }
                           else
                           {
                              §§goto(addr477);
                           }
                        }
                        else
                        {
                           §§push("PLAY_LEVEL");
                           if(_loc5_ || this)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(2);
                                    if(_loc5_ || param2)
                                    {
                                       §§goto(addr516);
                                    }
                                    else
                                    {
                                       §§goto(addr506);
                                    }
                                 }
                                 else if("SELECT_CATEGORY" === _loc4_)
                                 {
                                    §§push(3);
                                    if(!_loc5_)
                                    {
                                       addr419:
                                    }
                                    §§goto(addr516);
                                 }
                                 else
                                 {
                                    §§push("TOGGLE_CATEGORY");
                                    if(_loc5_)
                                    {
                                       addr359:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             addr362:
                                             §§goto(addr363);
                                             §§push(4);
                                          }
                                          else
                                          {
                                             §§goto(addr477);
                                          }
                                          §§goto(addr516);
                                       }
                                       else
                                       {
                                          §§push("SAVE");
                                          if(_loc5_)
                                          {
                                             addr367:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   §§goto(addr377);
                                                   §§push(5);
                                                }
                                                else
                                                {
                                                   addr423:
                                                   §§push(8);
                                                   if(_loc6_ && param2)
                                                   {
                                                      addr511:
                                                   }
                                                   §§goto(addr516);
                                                }
                                                §§goto(addr516);
                                             }
                                             else
                                             {
                                                §§push("TOGGLE_GRAVITY");
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr386:
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§push(6);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr516);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr419);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr400:
                                                         §§push("HELP_BUTTON");
                                                         §§push(_loc4_);
                                                         if(_loc5_ || param3)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(7);
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     §§goto(addr419);
                                                                  }
                                                               }
                                                            }
                                                            else if("HELP_ADVANCED" !== _loc4_)
                                                            {
                                                               §§push("HELP_BACK");
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        addr516:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push(this.§[D§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop().§52§(param3 as §9y§);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr37:
                                                                                 §§pop().§3!$§((param3 as §9y§).mName);
                                                                                 if(!(_loc5_ || param3))
                                                                                 {
                                                                                    addr226:
                                                                                 }
                                                                              }
                                                                              addr518:
                                                                              this.§<!1§();
                                                                              break;
                                                                           case 1:
                                                                              §§push(this.§[D§);
                                                                              if(!(_loc5_ || param3))
                                                                              {
                                                                                 addr268:
                                                                                 §§pop().§1+§(param2);
                                                                                 if(_loc5_ || param3)
                                                                                 {
                                                                                    addr277:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr37);
                                                                              §§goto(addr518);
                                                                           case 2:
                                                                              this.§#a§();
                                                                              §§goto(addr518);
                                                                           case 3:
                                                                           case 4:
                                                                              if((param3 as §#!'§).mName == §9§.§8!,§)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.§4!e§(true);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       addr92:
                                                                                    }
                                                                                    §§goto(addr92);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr150:
                                                                                 }
                                                                                 §§goto(addr518);
                                                                              }
                                                                              else if((param3 as §#!'§).mName == §9§.§1!v§)
                                                                              {
                                                                                 if(_loc5_ || param2)
                                                                                 {
                                                                                    this.§4!e§(false);
                                                                                    §§goto(addr92);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr216:
                                                                                    §-!D§.§?5§("onFullscreenToggle");
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr221:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr261:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr518);
                                                                              }
                                                                              §§goto(addr92);
                                                                           case 5:
                                                                              this.save();
                                                                              §§goto(addr518);
                                                                           case 6:
                                                                              this.§4!v§();
                                                                              §§goto(addr518);
                                                                           case 7:
                                                                              this.§&!E§ = new §=#§(§+!$§,§=!Z§.§;K§.Views.PopupView_EditorHelp[0]);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§push(this.§&!E§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push("Container_Advanced");
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop().getItemByName(§§pop()).setVisibility(false);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(this.§&!E§);
                                                                                          §§push("Container_Tips");
                                                                                          if(_loc6_ && this)
                                                                                          {
                                                                                             addr189:
                                                                                             §§pop().getItemByName(§§pop()).setVisibility(false);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(this.§&!E§);
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   addr204:
                                                                                                   §§pop().getItemByName("Container_Tips").setVisibility(true);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                §§goto(addr518);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§pop().getItemByName(§§pop()).setVisibility(true);
                                                                                          §§push(this.§&!E§);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().open();
                                                                                             §§goto(addr150);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr225:
                                                                                             §§pop().close();
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                       addr207:
                                                                                       §§goto(addr518);
                                                                                    }
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 §§goto(addr225);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                           case 8:
                                                                              §§push(this.§&!E§);
                                                                              §§push("Container_Advanced");
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 §§pop().getItemByName(§§pop()).setVisibility(true);
                                                                                 if(!(_loc6_ && param3))
                                                                                 {
                                                                                    §§push(this.§&!E§);
                                                                                    §§push("Container_Tips");
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().getItemByName(§§pop()).setVisibility(false);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    §§goto(addr518);
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr204);
                                                                           case 9:
                                                                              §§push(this.§&!E§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push("Container_Advanced");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                              §§goto(addr225);
                                                                           case 10:
                                                                              §§push(this);
                                                                              §§push(this.§<K§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              §§pop().§<K§ = §§pop();
                                                                              §§goto(addr216);
                                                                           case 11:
                                                                              §§goto(addr225);
                                                                           case 12:
                                                                              this.§?!<§.close();
                                                                              §§goto(addr518);
                                                                           case 13:
                                                                              §§push(this.§&!E§);
                                                                              §§push(this.§[D§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop().setZoomRatio(1 - (param3 as §0X§).§8!T§());
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr268);
                                                                              §§goto(addr518);
                                                                           default:
                                                                              if(!§'!V§.§=!A§)
                                                                              {
                                                                                 §§goto(addr268);
                                                                                 §§push(this.§[D§);
                                                                              }
                                                                              §§goto(addr277);
                                                                        }
                                                                        return;
                                                                        §§push(9);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("FULLSCREEN_BUTTON");
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           addr459:
                                                                           §§push(_loc4_);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              addr467:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§goto(addr516);
                                                                                 §§push(10);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("HELP_CLOSE");
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(§§pop() === _loc4_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr477);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr505:
                                                                                          §§push(12);
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("PROMPT_CLOSE");
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr494:
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr505);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr509:
                                                                                                if("ZOOM_DRAG" !== _loc4_)
                                                                                                {
                                                                                                   §§goto(addr516);
                                                                                                   §§push(14);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                             §§push(13);
                                                                                          }
                                                                                          §§goto(addr509);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr516);
                                                                                 }
                                                                                 §§goto(addr509);
                                                                              }
                                                                              §§goto(addr516);
                                                                           }
                                                                           §§goto(addr509);
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                     §§goto(addr516);
                                                                  }
                                                                  §§goto(addr509);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr516);
                                                         }
                                                         §§goto(addr509);
                                                      }
                                                      §§goto(addr516);
                                                   }
                                                   §§goto(addr467);
                                                }
                                                §§goto(addr494);
                                             }
                                          }
                                          §§goto(addr400);
                                       }
                                    }
                                    §§goto(addr459);
                                 }
                                 §§goto(addr516);
                              }
                              §§goto(addr509);
                           }
                           §§goto(addr386);
                        }
                        §§goto(addr516);
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr367);
               }
               §§goto(addr516);
            }
            §§goto(addr307);
         }
         §§goto(addr362);
      }
      
      private function §#a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[D§);
         if(!_loc2_)
         {
            §§push(§§pop().§0!O§());
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(this.§[D§);
               if(_loc1_)
               {
                  §§push(§§pop().§^!3§().length > 0);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || this)
                        {
                           addr71:
                           §§pop();
                           addr74:
                           §§push(this.§[D§.getPigCount() > 0);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this.§"!h§ = true;
                        }
                     }
                     else
                     {
                        this.§?!<§ = new §<O§(§+!$§ as §&Z§,§<O§.§+!d§);
                        if(!_loc2_)
                        {
                           this.§?!<§.open();
                        }
                     }
                     return;
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr71);
      }
      
      private function §4!v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[D§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop().getPigCount());
            if(_loc1_ || this)
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc1_)
                           {
                              §§push(this.§[D§);
                              if(_loc1_)
                              {
                                 addr52:
                                 §§push(§§pop().getBlockCount() > 0);
                                 if(!_loc2_)
                                 {
                                    addr55:
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§[D§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr67:
                                             §§pop().§?y§();
                                             if(!_loc2_)
                                             {
                                                addr82:
                                                if(this.§[D§.§0!O§())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      (§+!$§.getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      this.§2!&§(§+!$§.container,[§finally§()],["Button_Gravity","Container_ContextMenu","Button_Slider"]);
                                                      if(!_loc2_)
                                                      {
                                                         addr107:
                                                         §-!D§.§?5§("onGravityEnabled");
                                                         if(_loc1_)
                                                         {
                                                            addr152:
                                                            addr112:
                                                         }
                                                         else
                                                         {
                                                            addr147:
                                                            §-!D§.§?5§("onGravityDisabled");
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr152);
                                                            }
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      else
                                                      {
                                                         addr138:
                                                         this.§2!&§(§+!$§.container,[],["Button_Gravity","Container_ContextMenu","Button_Slider"]);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                else
                                                {
                                                   (§+!$§.getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.§`O§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                   else
                                                   {
                                                      addr162:
                                                      this.§?!<§.open();
                                                   }
                                                   addr165:
                                                   return;
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr82);
                                       }
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       this.§?!<§ = new §<O§(§+!$§ as §&Z§,§<O§.§@8§);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §2!&§(param1:§[!s§, param2:Array, param3:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§'^§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.§?n§.length)
         {
            _loc5_ = param1.§?n§[_loc4_];
            if(_loc6_ || param2)
            {
               if(param3.indexOf(_loc5_.mName) == -1)
               {
                  §§push(_loc5_ is §[!s§);
                  if(_loc6_ || this)
                  {
                     if(§§pop())
                     {
                        addr64:
                        this.§2!&§(_loc5_ as §[!s§,param2,param3);
                        addr107:
                        _loc4_++;
                        continue;
                     }
                     §§push(_loc5_ is §#!'§);
                     §§goto(addr107);
                  }
                  if(§§pop())
                  {
                     (_loc5_ as §#!'§).mClip.filters = param2;
                     (_loc5_ as §#!'§).setEnabled(param2.length == 0);
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr64);
         }
      }
      
      private function §-L§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§+!$§.getItemByName("Container_ZoomBar") as §[!s§).visible = §7&§.§=n§().§4V§(§7&§.§5^§);
         }
      }
      
      public function §<!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;!X§.§<!1§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.keyDown(param1);
         if(!_loc3_)
         {
            §§push(§'!V§.§=!A§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  addr169:
                  return;
                  addr80:
               }
               else
               {
                  §'!V§.§?!G§.keyDown(param1);
                  if(!_loc3_)
                  {
                     §§push(param1.keyCode == Keyboard.S);
                     §§push(param1.keyCode == Keyboard.S);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           addr54:
                           §§pop();
                           §§push(Boolean(param1.ctrlKey));
                           if(!_loc3_)
                           {
                              addr60:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.save();
                                    §§goto(addr80);
                                 }
                                 §§goto(addr169);
                              }
                              else
                              {
                                 addr87:
                                 §§push(param1.keyCode == Keyboard.P);
                                 if(param1.keyCode == Keyboard.P)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          addr101:
                                          if(param1.ctrlKey)
                                          {
                                             addr102:
                                             this.onPublish();
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                addr151:
                                             }
                                             §§goto(addr169);
                                          }
                                          else if(param1.keyCode == Keyboard.TAB)
                                          {
                                             §§push(this.§,B§());
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(§§pop().§<!o§())
                                                {
                                                   addr128:
                                                   §§push(this.§,B§());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§7$§();
                                                      if(!_loc3_)
                                                      {
                                                         addr145:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr148:
                                                      §§pop().§]B§();
                                                      if(_loc3_)
                                                      {
                                                         addr167:
                                                         this.§#a§();
                                                      }
                                                   }
                                                   §§goto(addr169);
                                                }
                                                else
                                                {
                                                   §§push(this.§,B§());
                                                }
                                             }
                                             §§goto(addr148);
                                          }
                                          else
                                          {
                                             if(param1.keyCode == Keyboard.G)
                                             {
                                                this.§4!v§();
                                             }
                                             else if(param1.keyCode == Keyboard.P)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr167);
                                                }
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                                 §§goto(addr101);
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr145);
               }
               §§goto(addr169);
            }
            §§goto(addr54);
         }
         §§goto(addr169);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.keyUp(param1);
            if(!_loc3_)
            {
               addr28:
               §'!V§.§?!G§.keyUp(param1);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §->§() : §"U§
      {
         return this.§[D§;
      }
      
      public function §!!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§&b§();
         }
      }
      
      private function §+!r§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:§?K§ = null;
         var _loc4_:int = 0;
         var _loc5_:§?K§ = null;
         var _loc1_:Vector.<§]K§> = this.§[D§.§^!3§();
         if(!_loc9_)
         {
            if(!this.§[D§.§0!O§())
            {
               if(_loc8_)
               {
                  addr37:
                  _loc4_ = 0;
               }
               while(_loc4_ < _loc1_.length)
               {
                  if(this.§!!-§.length > _loc4_)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     _loc5_ = this.§!!-§[_loc4_];
                     if(_loc8_ || _loc2_)
                     {
                        addr93:
                        _loc5_.update(_loc4_,_loc1_[_loc4_],this.§[D§);
                        if(!(_loc8_ || _loc1_))
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                     continue;
                  }
                  _loc5_ = new §?K§();
                  if(_loc8_)
                  {
                     this.§!!-§.push(_loc5_);
                     if(!(_loc9_ && _loc3_))
                     {
                        §+!$§.addChildAt(_loc5_,0);
                     }
                  }
                  §§goto(addr93);
               }
            }
            var _loc2_:Vector.<§?K§> = this.§!!-§.slice(_loc4_);
            if(_loc8_ || _loc3_)
            {
               this.§!!-§ = this.§!!-§.slice(0,_loc4_);
               if(_loc8_ || this)
               {
                  var _loc6_:int = 0;
                  if(_loc8_)
                  {
                     for each(_loc3_ in _loc2_)
                     {
                        if(!_loc9_)
                        {
                           §+!$§.removeChild(_loc3_);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §&b§(param1:Boolean = true) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Point = null;
         var _loc7_:§;5§ = null;
         var _loc2_:§[!s§ = §+!$§.getItemByName("Container_ContextMenu") as §[!s§;
         if(_loc11_ || _loc3_)
         {
            §§push(this.§[D§);
            if(!_loc10_)
            {
               §§push(§§pop().§-!@§);
               if(!(_loc10_ && this))
               {
                  §§push(0);
                  if(!(_loc10_ && param1))
                  {
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(_loc11_ || this)
                     {
                        if(!§§pop())
                        {
                           if(_loc11_ || this)
                           {
                              §§pop();
                              §§push(this.§[D§);
                              if(!(_loc10_ && this))
                              {
                                 §§push(§§pop().isDragging());
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc11_ || _loc2_)
                                    {
                                       addr100:
                                       §§push(§§pop());
                                       if(_loc11_ || _loc2_)
                                       {
                                          addr108:
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§push(this.§[D§);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(§§pop().§4_§());
                                                   if(!_loc10_)
                                                   {
                                                      addr130:
                                                      §§push(Boolean(§§pop()));
                                                      if(!Boolean(§§pop()))
                                                      {
                                                         addr132:
                                                         §§pop();
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(this.§[D§);
                                                            if(!_loc10_)
                                                            {
                                                               addr146:
                                                               if(§§pop().§4h§())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr149:
                                                                     if(_loc2_.§6!4§)
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           addr169:
                                                                           _loc2_.setVisibility(false);
                                                                        }
                                                                        addr199:
                                                                        _loc6_ = this.§[D§.§0j§();
                                                                        addr197:
                                                                        if(!_loc10_)
                                                                        {
                                                                           _loc2_.x = _loc6_.x;
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              _loc2_.y = _loc6_.y;
                                                                           }
                                                                        }
                                                                        var _loc3_:§#!'§ = §+!$§.getItemByName("Button_RotateClockwiseContext") as §#!'§;
                                                                        var _loc4_:§#!'§ = §+!$§.getItemByName("Button_Duplicate") as §#!'§;
                                                                        var _loc5_:§#!'§ = §+!$§.getItemByName("Button_ToolDeleteContext") as §#!'§;
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           _loc3_.setVisibility(false);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr252:
                                                                              _loc4_.setVisibility(false);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc5_.setVisibility(false);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(this.§[D§.§-!@§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(§§pop() > 0)
                                                                                       {
                                                                                          addr270:
                                                                                          addr269:
                                                                                          for each(_loc7_ in this.§[D§.getSelectedObjects())
                                                                                          {
                                                                                             §§push(_loc7_.§<P§());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc7_.§;L§());
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                _loc3_.setVisibility(true);
                                                                                                _loc4_.setVisibility(true);
                                                                                             }
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                _loc4_.setVisibility(true);
                                                                                             }
                                                                                             _loc5_.setVisibility(true);
                                                                                             continue;
                                                                                             _loc5_.setVisibility(true);
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     addr185:
                                                                     §§push(this.§[D§);
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        addr194:
                                                                        if(§§pop().§-!@§ > 0)
                                                                        {
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               else
                                                               {
                                                                  if(!_loc2_.§6!4§)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc2_.setVisibility(true);
                                                                        addr181:
                                                                        _loc2_.mClip.alpha = 0.7;
                                                                     }
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr146);
         }
         §§goto(addr181);
      }
      
      public function §5Z§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(§`![§);
            §§push("onOpenEditorRequest! ");
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + param1[0]);
            }
            §§pop().log(§§pop());
         }
         §§push(§35§.§7!p§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               §§push(param1[0] == null);
               if(!_loc3_)
               {
                  addr59:
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr63:
                        §§pop();
                        §§push((param1[0] as String).length == 0);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §@!n§.§%!]§(StateLevelEditor.STATE_NAME);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr104);
                     }
                  }
                  else
                  {
                     §@!n§.§,c§(StateLevelEditor.STATE_NAME,param1[0]);
                  }
                  §35§.§`!d§.§8!W§(§@!n§.STATE_NAME);
                  §§goto(addr104);
               }
               §§goto(addr63);
            }
            addr104:
            return;
         }
         §§goto(addr59);
      }
      
      private function save(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§[D§);
         if(_loc2_ || param1)
         {
            if(§§pop())
            {
               if(_loc2_)
               {
                  if(§8W§)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(this.§[D§);
                        if(_loc2_ || this)
                        {
                           addr66:
                           §§pop().§9'§();
                           addr67:
                           §§push(this.§[D§);
                        }
                        §§pop().§5!L§(this.§@!;§);
                        if(!_loc3_)
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr67);
            }
            addr74:
            this.§+C§ = false;
            if(!(_loc3_ && this))
            {
               addr84:
               §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(false);
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function onPublish(param1:Object = null) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§+C§ = false;
            if(_loc3_)
            {
               §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(false);
               if(!_loc3_)
               {
               }
               §§goto(addr62);
            }
            if(§8W§)
            {
               if(_loc3_)
               {
                  this.§[D§.§9'§();
               }
            }
         }
         addr62:
         var _loc2_:Object = §"U§.§4!Z§();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_.valid)
            {
               if(!_loc4_)
               {
                  §§goto(addr78);
               }
            }
            return JSON.stringify(new Object());
         }
         addr78:
         return JSON.stringify(_loc2_);
      }
      
      private function §@!;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §-!D§.§?5§("onScreenshotReady",param1);
         }
      }
      
      public function §1#§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§;!X§);
            if(_loc4_ || param2)
            {
               §§pop().§6!+§(param1,param2);
               if(_loc4_)
               {
                  addr50:
                  this.§;!X§.§<!1§();
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §7c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§![§ = new Shape();
            if(_loc1_ || _loc1_)
            {
               this.§![§.graphics.beginFill(16777215);
               if(_loc1_)
               {
                  this.§![§.graphics.drawRect(0,0,getAppWidth(),getAppHeight());
                  if(!(_loc2_ && _loc1_))
                  {
                     addr73:
                     this.§![§.graphics.endFill();
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr83);
                  }
                  §+!$§.addChild(this.§![§);
               }
               addr83:
               return;
            }
         }
         §§goto(addr73);
      }
      
      public function updateSelectionArea(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1 == null)
            {
               if(this.§"!n§ != null)
               {
                  this.§"!n§.graphics.clear();
                  if(_loc3_)
                  {
                     addr58:
                     this.§"!n§ = new Shape();
                     if(_loc2_ || _loc3_)
                     {
                        §+!$§.addChildAt(this.§"!n§,0);
                        addr74:
                        this.§"!n§.graphics.clear();
                        if(_loc2_)
                        {
                           this.§"!n§.graphics.beginFill(65280,0.1);
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr105);
                  }
               }
               return;
            }
            if(this.§"!n§ == null)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr58);
               }
               addr96:
               this.§"!n§.graphics.lineStyle(1,43520,0.2);
               if(_loc2_)
               {
                  addr105:
                  this.§"!n§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
               }
               this.§"!n§.graphics.endFill();
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      public function §@0§(param1:Vector.<§1M§>) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§1M§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         if(this.§-!1§ == null)
         {
            this.§-!1§ = new Shape();
            §+!$§.addChildAt(this.§-!1§,0);
            if(_loc9_)
            {
               addr46:
               this.§-!1§.graphics.clear();
               if(this.§[D§.§0!O§())
               {
                  return;
               }
               this.§-!1§.graphics.lineStyle(4,16711680,1,false,"normal",CapsStyle.ROUND);
            }
            for each(_loc2_ in param1)
            {
               _loc3_ = _loc2_.§0i§.§<!W§().GetPosition();
               _loc4_ = _loc2_.§0i§.§?!=§().GetPosition();
               _loc5_ = this.§[D§.getLevelMain().box2DToScreen(_loc3_.x,_loc3_.y);
               _loc6_ = this.§[D§.getLevelMain().box2DToScreen(_loc4_.x,_loc4_.y);
               if(_loc9_ || this)
               {
                  this.§-!1§.graphics.moveTo(_loc5_.x,_loc5_.y);
                  if(_loc10_ && param1)
                  {
                     continue;
                  }
               }
               this.§-!1§.graphics.lineTo(_loc6_.x,_loc6_.y);
            }
            if(!_loc10_)
            {
               this.§-!1§.filters = [new GlowFilter(11141120,1,1.5,1.5,4)];
               if(!_loc10_)
               {
                  this.§-!1§.alpha = 0.8;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      private function §,B§() : §&Z§
      {
         return §+!$§ as §&Z§;
      }
      
      public function § do§(param1:§0m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8e§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §+!$§.removeChild(this.§8e§);
                     if(_loc3_ || _loc2_)
                     {
                        addr57:
                        this.§8e§ = param1;
                        if(_loc3_)
                        {
                           addr64:
                           if(this.§8e§)
                           {
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr72);
                        }
                     }
                     §+!$§.addChildAt(this.§8e§,0);
                  }
                  §§goto(addr72);
               }
               §§goto(addr57);
            }
            §§goto(addr64);
         }
         addr72:
      }
      
      public function §[!t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!D§.§?5§("onLevelDataChanged",param1);
            if(_loc3_)
            {
               this.§+C§ = true;
            }
         }
      }
   }
}
