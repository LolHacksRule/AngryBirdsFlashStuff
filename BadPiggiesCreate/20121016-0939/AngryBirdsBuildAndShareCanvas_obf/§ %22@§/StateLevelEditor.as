package § "@§
{
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.*;
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §'p§.*;
   import §+!v§.§-!H§;
   import §+h§.§^!]§;
   import §-!8§.§2"4§;
   import §-!n§.§5!U§;
   import §0![§.§^! §;
   import §1"2§.§`7§;
   import §2H§.§4!U§;
   import §2H§.§8n§;
   import §3"5§.§ !,§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §62§.§0!t§;
   import §6p§.§?%§;
   import §=!#§.§2"-§;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   import §^!y§.§'"#§;
   import §^[§.§ !1§;
   import §^[§.§!!c§;
   import §^[§.§!$§;
   import §^[§.§'!K§;
   import §^[§.§9!Z§;
   import §^[§.§>!B§;
   import com.rovio.assets.§>!]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class StateLevelEditor extends §5y§ implements IEventDispatcher
   {
      
      public static const §^t§:String = "BuildChannel";
      
      public static const §#!z§:String = "MainMenuChannel";
      
      public static const §'=§:String = "StateLevelEditor";
      
      private static const §<?§:int = 20000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^t§ = "BuildChannel";
            loop0:
            while(true)
            {
               §#!z§ = "MainMenuChannel";
               loop1:
               do
               {
                  §'=§ = "StateLevelEditor";
                  while(!_loc2_)
                  {
                     §<?§ = 20000;
                     if(_loc1_ || _loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc1_ || StateLevelEditor));
               
            }
         }
      }
      
      private const §3!l§:Boolean = false;
      
      private var §&!T§:EventDispatcher;
      
      private var §6!^§:§'!;§;
      
      private var §+!-§:Boolean = false;
      
      private var §9f§:Shape = null;
      
      private var §5!L§:Vector.<§ !1§>;
      
      private var §9!3§:Boolean = false;
      
      private var §#!§:String = "";
      
      private var §1u§:String = "";
      
      private var §6!§:§>!B§;
      
      private var §[!!§:Boolean = false;
      
      private var §&!$§:Boolean;
      
      private var § !Z§:Boolean = false;
      
      private var §@!A§:int = -1;
      
      private var §2!H§:Vector.<§-!2§>;
      
      private var §>!Q§:Vector.<§,!1§>;
      
      private var §?#§:§!!c§;
      
      private var §9!;§:§4!U§;
      
      private var §,!3§:MovieClip;
      
      private var §8!C§:Vector.<DisplayObject>;
      
      private var §^-§:§8n§;
      
      private var §3a§:§2"4§;
      
      private var §3!i§:§-!H§;
      
      private var §[" §:int = 20000;
      
      private var §@U§:Vector.<Function>;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§&!T§ = new EventDispatcher();
            while(true)
            {
               this.§5!L§ = new Vector.<§ !1§>();
               loop1:
               while(!(_loc4_ && this))
               {
                  this.§2!H§ = new Vector.<§-!2§>();
                  loop2:
                  while(true)
                  {
                     this.§8!C§ = new Vector.<DisplayObject>();
                     while(true)
                     {
                        this.§@U§ = new Vector.<Function>();
                        loop4:
                        while(!(_loc4_ && param2))
                        {
                           if(!_loc4_)
                           {
                              super(param1,param2);
                              while(_loc3_)
                              {
                                 §4m§.registerMethod("openEditor",this.§^+§);
                                 loop6:
                                 while(!(_loc4_ && param2))
                                 {
                                    §4m§.registerMethod("snapshot",this.save);
                                    while(_loc3_)
                                    {
                                       §9!P§.log("External methods registered.");
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             return;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §?E§ = new §'!K§(this);
            addr115:
            while(true)
            {
               §2"-§.§@&§(true);
               continue loop0;
            }
         }
      }
      
      override public function getTargetFrameRate() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(Capabilities.os.indexOf("Mac") >= 0)
            {
               addr45:
               §§push(30);
               if(!_loc1_)
               {
               }
            }
            else
            {
               return 60;
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               §2"-§.§@&§(true);
               addr180:
               while(true)
               {
                  §=!X§.resume();
                  continue loop0;
               }
            }
         }
         §§goto(addr106);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         §§push(super.run(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() != §5y§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ && param1))
                     {
                        return §§pop();
                     }
                     addr77:
                     for each(_loc3_ in this.§@U§)
                     {
                        if(_loc6_)
                        {
                           _loc3_(param1);
                        }
                     }
                     if(!(_loc7_ && _loc2_))
                     {
                        addr341:
                        this.§[§(this.§6!^§.§8#§.§4+§.objects.getJoints());
                        loop0:
                        while(true)
                        {
                           this.§9B§().§=z§(param1);
                           loop1:
                           while(true)
                           {
                              §9!Z§.§2=§.§,M§();
                              loop2:
                              while(true)
                              {
                                 this.§ B§(param1);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§6!§);
                                    if(!(_loc7_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§6!§);
                                             addr312:
                                             while(true)
                                             {
                                                §§pop().update(param1);
                                                addr314:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr270:
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                this.§+!-§ = false;
                                                while(_loc6_)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(mNextState.length > 0)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(!_loc7_)
                                                            {
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr314);
                                                            addr268:
                                                         }
                                                         else
                                                         {
                                                            addr251:
                                                            this.§6!^§.§4!4§.§2x§();
                                                            addr225:
                                                            §,!1§.§2=§.§]!2§();
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            addr255:
                                                            addr222:
                                                         }
                                                         while(true)
                                                         {
                                                            this.dispatchEvent(new §0!t§(§0!t§.PLAY));
                                                            addr298:
                                                            while(true)
                                                            {
                                                               §%!3§.loadLevel(this.§6!^§.§8#§.§'";§,StateLevelEditorTestPlay.§'=§);
                                                               addr287:
                                                               while(true)
                                                               {
                                                                  mNextState = §%!3§.§'=§;
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                         }
                                                         addr292:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§,!1§.§2=§);
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(§§pop().§-!Q§());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr108);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§[" § -= param1;
                                                                     addr205:
                                                                     while(!_loc7_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               addr291:
                                                            }
                                                            break;
                                                            addr221:
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      return §5y§.STATE_STATUS_COMPLETED;
                                                   }
                                                   continue loop2;
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr108:
                                                   }
                                                   continue;
                                                   return §5y§.STATE_STATUS_RUNNING;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr291);
                                          §§goto(addr314);
                                       }
                                    }
                                    §§goto(addr312);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr155);
                  }
                  else
                  {
                     addr72:
                     this.§6!^§.update(param1);
                     §§goto(addr77);
                     §§push(0);
                  }
                  §§goto(addr77);
               }
               else if(!§=!X§.isPaused)
               {
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr72);
               }
               §§goto(addr341);
            }
            §§goto(addr77);
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            while(true)
            {
               §5!U§.§9&§();
               addr79:
               while(!_loc2_)
               {
               }
            }
         }
         loop2:
         while(true)
         {
            §^"8§.§7K§ = this.§6!^§.§8#§.§'";§;
            while(true)
            {
               this.§^!+§(null);
               while(_loc1_ || this)
               {
                  §?E§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§&k§);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break loop2;
                  }
                  §§goto(addr79);
               }
            }
         }
      }
      
      private function §&k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§6!§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr80:
                     this.§6!§.onEnterGUI();
                     addr81:
                     while(true)
                     {
                     }
                     addr81:
                  }
                  §§goto(addr81);
               }
               while(true)
               {
                  this.§[!!§ = true;
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§6!§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr67:
                  while(true)
                  {
                     §§push(this.§6!§);
                     addr69:
                     while(true)
                     {
                        §§pop().onLeaveGUI();
                        addr70:
                        while(true)
                        {
                        }
                     }
                  }
                  addr67:
               }
               while(true)
               {
                  this.§[!!§ = false;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr67);
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr67);
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param2)
            {
               §§goto(addr26);
            }
            else
            {
               §§push(§9!!§.§,!0§);
               if(!_loc4_)
               {
                  §§goto(addr53);
               }
            }
            §§goto(addr61);
         }
         addr26:
         §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(_loc5_)
         {
            §§push(§§pop());
            if(!(_loc4_ && param1))
            {
               addr61:
               §§push(§§pop());
            }
            §§goto(addr61);
         }
         else
         {
            addr53:
            §§push(§§pop());
            if(!(_loc4_ && param1))
            {
               §§goto(addr61);
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            (§?E§.getItemByName(param1) as §="#§).setComponentState(_loc3_);
         }
      }
      
      public function §-W§() : Boolean
      {
         return this.§&!$§;
      }
      
      public function §!!L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§&!$§ == param1)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr78:
               while(true)
               {
               }
               addr78:
            }
            while(true)
            {
               this.§&!$§ = param1;
               while(!(_loc2_ && param1))
               {
                  this.dispatchEvent(new §0!t§(§0!t§.§<!I§));
                  if(_loc3_)
                  {
                     return;
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr78);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§="#§ = null;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc8_)
         {
            if("CLOSE_POPUP" === _loc6_)
            {
               if(!(_loc7_ && this))
               {
                  §§push(0);
                  if(_loc8_ || param1)
                  {
                  }
               }
               else
               {
                  addr1018:
                  §§push(21);
                  if(!(_loc7_ && param3))
                  {
                     addr1026:
                  }
               }
            }
            else if("SELECT_THEME" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§push(1);
                  if(!(_loc8_ || param2))
                  {
                     addr1043:
                  }
               }
               else
               {
                  addr953:
                  §§push(16);
                  if(!_loc7_)
                  {
                     addr956:
                  }
                  else
                  {
                     addr984:
                  }
               }
            }
            else if("CONTINUE" === _loc6_)
            {
               if(_loc8_ || param3)
               {
                  addr747:
                  §§push(2);
                  if(!_loc8_)
                  {
                     addr881:
                  }
               }
               else
               {
                  addr859:
                  §§push(10);
                  if(_loc7_ && this)
                  {
                     addr1012:
                  }
               }
            }
            else if("PUBLISH" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§push(3);
                  if(_loc7_)
                  {
                     §§goto(addr984);
                  }
               }
               else
               {
                  addr817:
                  §§push(7);
                  if(_loc7_)
                  {
                     addr904:
                  }
               }
            }
            else if("CANCEL" === _loc6_)
            {
               if(!(_loc7_ && param1))
               {
                  §§push(4);
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  addr873:
                  §§push(11);
                  if(!(_loc7_ && param2))
                  {
                     §§goto(addr881);
                  }
                  else
                  {
                     addr970:
                  }
               }
            }
            else
            {
               if("PLAY" === _loc6_)
               {
                  if(_loc8_ || param1)
                  {
                     §§push(5);
                     if(_loc7_ && param1)
                     {
                        addr806:
                     }
                  }
               }
               else if("SAVE" === _loc6_)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§push(6);
                     if(!_loc7_)
                     {
                        §§goto(addr806);
                     }
                     else
                     {
                        §§goto(addr1043);
                     }
                  }
                  else
                  {
                     addr845:
                     §§push(9);
                     if(!_loc8_)
                     {
                        addr942:
                     }
                     §§goto(addr1048);
                  }
               }
               else if("HELP_BUTTON" === _loc6_)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr817);
                  }
                  else
                  {
                     addr915:
                     §§push(14);
                     if(_loc8_ || param2)
                     {
                        §§goto(addr1048);
                     }
                     else
                     {
                        §§goto(addr970);
                     }
                  }
               }
               else if("HELP_ADVANCED" === _loc6_)
               {
                  if(_loc8_)
                  {
                     §§push(8);
                     if(_loc8_ || param3)
                     {
                        §§goto(addr1048);
                     }
                     else
                     {
                        §§goto(addr1043);
                     }
                  }
                  else
                  {
                     addr896:
                     §§push(13);
                     if(_loc8_ || this)
                     {
                        §§goto(addr904);
                     }
                     else
                     {
                        §§goto(addr956);
                     }
                  }
               }
               else if("HELP_BACK" === _loc6_)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr845);
                  }
                  else
                  {
                     addr1004:
                     §§push(20);
                     if(_loc8_ || param2)
                     {
                        §§goto(addr1012);
                     }
                     §§goto(addr1048);
                  }
               }
               else
               {
                  if("FULLSCREEN_BUTTON" === _loc6_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§goto(addr859);
                     }
                  }
                  else if("HELP_CLOSE" === _loc6_)
                  {
                     if(_loc8_)
                     {
                        §§goto(addr873);
                     }
                     else
                     {
                        §§goto(addr1018);
                     }
                  }
                  else
                  {
                     if("ZOOM_DRAG" === _loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§push(12);
                           if(!_loc7_)
                           {
                              §§goto(addr1048);
                           }
                           else
                           {
                              §§goto(addr1012);
                           }
                        }
                        else
                        {
                           addr934:
                           §§push(15);
                           if(_loc8_ || param1)
                           {
                              §§goto(addr942);
                           }
                           else
                           {
                              §§goto(addr984);
                           }
                        }
                     }
                     else if("TOGGLE_PHYSICS" === _loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr896);
                        }
                        else
                        {
                           addr990:
                           §§push(19);
                           if(_loc8_)
                           {
                              §§goto(addr1048);
                           }
                           else
                           {
                              §§goto(addr1026);
                           }
                        }
                     }
                     else if("SHOW_QUEST_INFO" === _loc6_)
                     {
                        if(_loc8_ || param3)
                        {
                           §§goto(addr915);
                        }
                        else
                        {
                           §§goto(addr934);
                        }
                     }
                     else
                     {
                        if("HIDE_QUEST_INFO" === _loc6_)
                        {
                           if(_loc8_ || this)
                           {
                              §§goto(addr934);
                           }
                           else
                           {
                              addr962:
                              §§push(17);
                              if(!(_loc7_ && param1))
                              {
                                 §§goto(addr970);
                              }
                              §§goto(addr1048);
                           }
                        }
                        else
                        {
                           if("SHOP_BUTTON" === _loc6_)
                           {
                              if(_loc8_ || param3)
                              {
                                 §§goto(addr953);
                              }
                              else
                              {
                                 §§goto(addr1004);
                              }
                           }
                           else
                           {
                              if("SHOP_CLOSE" === _loc6_)
                              {
                                 if(_loc8_)
                                 {
                                    §§goto(addr962);
                                 }
                                 else
                                 {
                                    §§goto(addr1004);
                                 }
                              }
                              else
                              {
                                 if("SETTINGS_BUTTON" === _loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(18);
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr984);
                                       }
                                       else
                                       {
                                          §§goto(addr1012);
                                       }
                                    }
                                 }
                                 else if("TOGGLE_SOUNDS" === _loc6_)
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr990);
                                    }
                                    else
                                    {
                                       §§goto(addr1004);
                                    }
                                 }
                                 else
                                 {
                                    if("RESOURCE_ADD_BLOCKS" === _loc6_)
                                    {
                                       if(!(_loc7_ && param3))
                                       {
                                          §§goto(addr1004);
                                       }
                                       else
                                       {
                                          §§goto(addr1018);
                                       }
                                    }
                                    else
                                    {
                                       if("RESOURCE_ADD_BOLTS" === _loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§goto(addr1018);
                                          }
                                       }
                                       else if("RESOURCE_ADD_COINS" !== _loc6_)
                                       {
                                          addr1048:
                                          loop27:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.dispatchEvent(new Event("close_popups"));
                                                break;
                                                addr366:
                                             case 1:
                                                this.§6!^§.§?!W§.§=!§((param3 as §!$§).getItemName());
                                                break;
                                                addr358:
                                             case 2:
                                                §5!U§.playSound("Sound_Button_Click");
                                                this.§&Y§();
                                                addr339:
                                                break;
                                                addr339:
                                                addr346:
                                             case 3:
                                                §5!U§.playSound("Sound_Button_Click");
                                                loop5:
                                                while(true)
                                                {
                                                   this.dispatchEvent(new §0!t§(§0!t§.PUBLISH));
                                                   addr319:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                if(_loc8_ || param1)
                                                {
                                                   break;
                                                }
                                                §§goto(addr339);
                                                break;
                                             case 4:
                                                §5!U§.playSound("Sound_Button_Click");
                                                this.cancel();
                                                break;
                                                addr311:
                                                addr304:
                                             case 5:
                                                §5!U§.playSound("Sound_Button_Click");
                                                loop6:
                                                while(true)
                                                {
                                                   this.cancel();
                                                   addr286:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                §4m§.doJsCall("play");
                                                break;
                                                addr282:
                                             case 6:
                                                this.save();
                                                break;
                                                addr277:
                                             case 7:
                                                §5!U§.playSound("Sound_Button_Click");
                                                addr250:
                                                if(!this.§^-§)
                                                {
                                                   addr251:
                                                   if(_loc8_)
                                                   {
                                                      this.§^-§ = new §8n§(§?E§,§`7§.§>"?§.Views.PopupView_EditorHelp[0]);
                                                      while(true)
                                                      {
                                                      }
                                                      addr264:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr319);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§^-§);
                                                   loop10:
                                                   do
                                                   {
                                                      §§push("Container_Advanced");
                                                      addr243:
                                                      while(true)
                                                      {
                                                         §§pop().getItemByName(§§pop()).setVisibility(false);
                                                         addr246:
                                                         while(true)
                                                         {
                                                            §§push(this.§^-§);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push("Container_Tips");
                                                               addr235:
                                                               while(true)
                                                               {
                                                                  §§pop().getItemByName(§§pop()).setVisibility(true);
                                                                  addr238:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^-§);
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                   while(!_loc8_);
                                                   
                                                   §§pop().open();
                                                   if(_loc7_)
                                                   {
                                                      break loop27;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break loop27;
                                                   }
                                                   §§goto(addr264);
                                                }
                                                break;
                                                addr239:
                                                addr271:
                                             case 8:
                                                §5!U§.playSound("Sound_Button_Click");
                                                while(true)
                                                {
                                                   if(_loc8_ || param3)
                                                   {
                                                      §^!]§.§<!o§();
                                                      continue;
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr339);
                                             case 9:
                                                §5!U§.playSound("Sound_Button_Click");
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§^-§);
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§push("Container_Advanced");
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               §§pop().getItemByName(§§pop()).setVisibility(false);
                                                               continue loop13;
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                      §§push(this.§^-§);
                                                      addr181:
                                                      break;
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push("Container_Tips");
                                                      if(_loc8_ || this)
                                                      {
                                                         §§pop().getItemByName(§§pop()).setVisibility(true);
                                                         addr127:
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            break loop27;
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                break;
                                             case 10:
                                                §5!U§.playSound("Sound_Button_Click");
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§ !Z§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().§ !Z§ = §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  AngryBirdsFP11.§%d§.§9+§();
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(this.§3!i§);
                                                                           if(_loc7_)
                                                                           {
                                                                              (_loc4_ = §§pop().getItemByName("Button_Help") as §="#§).§ a§();
                                                                              if(!_loc7_)
                                                                              {
                                                                                 this.§^-§.close();
                                                                                 this.§^-§ = null;
                                                                                 addr693:
                                                                                 break loop27;
                                                                                 addr693:
                                                                                 addr697:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr498:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr371:
                                                                           }
                                                                           §§pop().§#!s§();
                                                                           if(_loc7_)
                                                                           {
                                                                              break loop27;
                                                                           }
                                                                           continue loop20;
                                                                           break loop27;
                                                                        }
                                                                        break loop20;
                                                                     }
                                                                     §§goto(addr127);
                                                                  }
                                                                  break loop27;
                                                               }
                                                               continue;
                                                               addr56:
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr366);
                                                   }
                                                }
                                                break;
                                             case 11:
                                                §§goto(addr371);
                                             case 12:
                                                this.§6!^§.§?!W§.setZoomRatio(1 - (param3 as §`!w§).§#!l§());
                                                addr688:
                                                break;
                                             case 13:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§push(this.§3!i§);
                                                loop25:
                                                while(true)
                                                {
                                                   this.§`n§();
                                                   addr665:
                                                   while(_loc7_)
                                                   {
                                                      continue loop25;
                                                   }
                                                }
                                                break;
                                             default:
                                                §§push(§=!X§.isPaused);
                                                if(!(_loc7_ && this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               this.dispatchEvent(new §0!t§(param2));
                                                               addr416:
                                                               if(_loc8_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     addr698:
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.dispatchEvent(new §0!t§(§0!t§.§%"+§));
                                                                     addr466:
                                                                  }
                                                                  addr420:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        break loop27;
                                                                     }
                                                                     addr474:
                                                                     break loop27;
                                                                  }
                                                                  addr443:
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 §§goto(addr466);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr693);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr626:
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(this.§3a§);
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr611:
                                                                                          §§push(this.§3a§);
                                                                                          if(_loc8_ || param3)
                                                                                          {
                                                                                             §§pop().close();
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr637:
                                                                                             §§pop().open();
                                                                                             break loop27;
                                                                                             addr638:
                                                                                          }
                                                                                       }
                                                                                       addr619:
                                                                                    }
                                                                                    break loop27;
                                                                                 }
                                                                                 §§goto(addr611);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§3a§);
                                                                                 addr652:
                                                                              }
                                                                              §§goto(addr637);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_ || param3)
                                                                                    {
                                                                                       if(!(_loc7_ && param3))
                                                                                       {
                                                                                          break loop27;
                                                                                       }
                                                                                       addr661:
                                                                                       this.§3a§ = new §2"4§(§`7§.§>"?§.Views.PopupView_Shop[0],this.§9B§());
                                                                                       §§goto(addr652);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§3!i§);
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop26;
                                                                                          }
                                                                                          addr565:
                                                                                          break loop27;
                                                                                       }
                                                                                       addr587:
                                                                                       §§pop().§#!s§();
                                                                                       addr595:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr555:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ && param3)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§goto(addr688);
                                                                                 }
                                                                                 addr555:
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr638);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr505:
                                                                        if(_loc7_)
                                                                        {
                                                                           addr571:
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(AngryBirdsFP11.getSoundsEnabled());
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 addr554:
                                                                                 _loc5_ = !§§pop();
                                                                                 §§goto(addr555);
                                                                              }
                                                                              §§goto(addr554);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           this.dispatchEvent(new §0!t§(§0!t§.§+8§));
                                                                           §§goto(addr498);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr665);
                                                                        }
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr587);
                                                                  §§push(this.§3!i§);
                                                                  §§goto(addr420);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr697);
                                                            §§goto(addr693);
                                                         }
                                                         else
                                                         {
                                                            addr481:
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  this.dispatchEvent(new §0!t§(§0!t§.§>!n§));
                                                                  §§goto(addr474);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr619);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr498);
                                                      }
                                                      §§goto(addr416);
                                                   }
                                                   §§goto(addr698);
                                                }
                                                §§goto(addr554);
                                             case 20:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr505);
                                             case 22:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr443);
                                             case 14:
                                                break;
                                             case 15:
                                                break;
                                             case 16:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr661);
                                             case 17:
                                                §5!U§.playSound("Sound_Button_Back");
                                                §§goto(addr626);
                                             case 18:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr595);
                                             case 19:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr571);
                                             case 21:
                                                §5!U§.playSound("Sound_Button_Click");
                                                §§goto(addr481);
                                          }
                                          return;
                                          §§push(23);
                                       }
                                       §§goto(addr1048);
                                    }
                                    §§goto(addr1048);
                                 }
                                 §§goto(addr1048);
                              }
                              §§goto(addr1048);
                           }
                           §§goto(addr1048);
                        }
                        §§goto(addr1048);
                     }
                     §§goto(addr1048);
                  }
                  §§goto(addr1048);
               }
               §§goto(addr1048);
               if(_loc8_)
               {
                  §§goto(addr1043);
               }
            }
            §§goto(addr1048);
         }
         §§goto(addr747);
      }
      
      private function §&Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.dispatchEvent(new §0!t§(§0!t§.CONTINUE));
         }
      }
      
      private function cancel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.dispatchEvent(new §0!t§(§0!t§.CANCEL));
         }
      }
      
      private function §`n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.dispatchEvent(new §0!t§(§0!t§.§!">§));
         }
      }
      
      private function §8[§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               §§push(§=!X§.isPaused);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §=!X§.§#H§.keyDown(param1);
                        loop3:
                        while(true)
                        {
                           §§push(param1.keyCode == Keyboard.S);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(param1.ctrlKey));
                                          while(!_loc3_)
                                          {
                                             addr113:
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             addr120:
                                             §§pop();
                                             loop16:
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(Boolean(param1.ctrlKey));
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || param1)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr113);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr215:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop16;
                                                                                       }
                                                                                       addr215:
                                                                                    }
                                                                                 }
                                                                                 addr159:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(param1.keyCode == Keyboard.X);
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             (AngryBirdsFP11.§>" § as §'"#§).§[!y§();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && param1))
                                                                                                {
                                                                                                   §§goto(addr28);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§9B§());
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§]!f§());
                                                                                                         addr296:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               break loop17;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr299);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.§9B§());
                                                                                                               loop18:
                                                                                                               for(; _loc2_ || this; §§push(this.§9B§()),if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().§6!p§();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr262);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr277);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr344:
                                                                                                                     return;
                                                                                                                     addr258:
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               })
                                                                                                               {
                                                                                                                  §§pop().§%w§("Blocks");
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     addr311:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.save();
                                                                                                                        addr313:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr28);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr301);
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr293:
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                             addr193:
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr104:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr76);
                                                                           }
                                                                           §§goto(addr28);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     while(!_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr215);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr159);
                                                                           addr218:
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                     addr212:
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           mNextState = §^! §.§'=§;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr84:
                                                                     }
                                                                     addr28:
                                                                     addr299:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        this.dispatchEvent(param1);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 return;
                                                                                 addr55:
                                                                              }
                                                                              addr249:
                                                                              while(true)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr236:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr84);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr301:
                                                                        addr302:
                                                                        this.§9B§().§`B§();
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr28);
                                                                              addr262:
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr76:
                                                                  §§goto(addr299);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               this.§&Y§();
                                                               §§goto(addr236);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§`n§();
                                                               }
                                                               addr247:
                                                            }
                                                         }
                                                         addr227:
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr193);
                                             }
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr218);
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(param1.keyCode != Keyboard.TAB)
                                       {
                                          if(param1.keyCode != Keyboard.G)
                                          {
                                             if(param1.keyCode != Keyboard.P)
                                             {
                                                §§push(param1.keyCode == Keyboard.I);
                                                if(_loc2_)
                                                {
                                                   §§goto(addr212);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr311);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr344);
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.keyUp(param1);
            do
            {
               §=!X§.§#H§.keyUp(param1);
               do
               {
                  this.dispatchEvent(param1);
               }
               while(_loc3_);
               
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §^+§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §9!P§.log("onOpenEditorRequest! " + param1[0]);
            loop0:
            while(true)
            {
               §§push(§>"§.§,!v§);
               if(!(_loc2_ && param1))
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  continue;
               }
               addr127:
               loop7:
               while(true)
               {
                  §§pop();
                  addr138:
                  addr91:
                  while(true)
                  {
                     §§push((param1[0] as String).length == 0);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop7;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §%!3§.§>o§(StateLevelEditor.§'=§);
                           }
                           addr95:
                        }
                        loop3:
                        while(true)
                        {
                           addr24:
                           addr37:
                           while(true)
                           {
                              §>"§.§%d§.§1!b§(§%!3§.§'=§);
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                              continue loop3;
                              addr79:
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        addr99:
                     }
                     else
                     {
                        §%!3§.§"!X§(StateLevelEditor.§'=§,param1[0]);
                     }
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           §§goto(addr79);
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr138);
                  }
               }
            }
            return;
         }
         §§goto(addr95);
      }
      
      private function save(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(§?C§)
            {
               if(_loc3_)
               {
                  addr48:
                  this.dispatchEvent(new §0!t§(§0!t§.SAVE));
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §9!<§(param1:int, param2:int) : void
      {
      }
      
      public function §8o§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               §§goto(addr166);
            }
            else
            {
               loop0:
               while(true)
               {
                  if(this.§9f§ == null)
                  {
                     loop1:
                     while(true)
                     {
                        this.§9f§ = new Shape();
                        addr128:
                        while(true)
                        {
                           if(_loc2_ || param1)
                           {
                              §?E§.addChildAt(this.§9f§,0);
                              while(!_loc3_)
                              {
                              }
                              continue loop1;
                              addr116:
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!(_loc2_ || this))
                              {
                                 addr166:
                                 if(this.§9f§ != null)
                                 {
                                    addr170:
                                    this.§9f§.graphics.clear();
                                 }
                              }
                              continue loop0;
                              return;
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr170);
                     }
                  }
                  while(true)
                  {
                     this.§9f§.graphics.clear();
                     loop5:
                     while(true)
                     {
                        this.§9f§.graphics.beginFill(65280,0.1);
                        loop6:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           this.§9f§.graphics.lineStyle(1,43520,0.2);
                           while(true)
                           {
                              if(_loc2_ || param1)
                              {
                                 this.§9f§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
                                 while(!_loc3_)
                                 {
                                    this.§9f§.graphics.endFill();
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue;
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      public function §[§(param1:Vector.<§ !,§>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?#§.update(param1);
         }
      }
      
      public function § B§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var deltaTime:int = param1;
         do
         {
            this.§5!L§ = this.§5!L§.filter(function(param1:§ !1§, param2:int, param3:Vector.<§ !1§>):Boolean
            {
               return param1.update(deltaTime);
            });
         }
         while(_loc4_);
         
      }
      
      public function § !i§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ !1§ = new § !1§(param1,param2);
         if(_loc4_ || this)
         {
            this.§5!L§.push(_loc3_);
         }
         do
         {
            §?E§.addChildAt(_loc3_,0);
         }
         while(_loc5_);
         
      }
      
      public function §9B§() : §'!K§
      {
         return §?E§ as §'!K§;
      }
      
      public function §^!+§(param1:§>!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§6!§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §?E§.removeChild(this.§6!§);
                     addr109:
                     while(true)
                     {
                     }
                  }
                  addr105:
               }
               while(true)
               {
                  this.§6!§ = param1;
                  loop3:
                  while(true)
                  {
                     §§push(this.§6!§);
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 §?E§.addChildAt(this.§6!§,0);
                              }
                              else
                              {
                                 §§goto(addr105);
                              }
                           }
                           while(this.§[!!§)
                           {
                              if(!_loc3_)
                              {
                                 §§push(this.§6!§);
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              addr56:
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 break loop3;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function get §7"+§() : Boolean
      {
         return this.§[!!§;
      }
      
      public function §@§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@U§.push(param1);
         }
      }
      
      public function §^"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!-§ = true;
         }
      }
      
      public function § u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4m§.doJsCall("onLevelDataChanged",param1);
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§&!T§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§&!T§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§&!T§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§&!T§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§&!T§.willTrigger(param1);
      }
   }
}
