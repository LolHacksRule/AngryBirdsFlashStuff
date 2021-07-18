package §;b§
{
   import §"_§.§!"8§;
   import §#";§.§0"#§;
   import §%!e§.§2",§;
   import §%!j§.§%K§;
   import §&!<§.§]!M§;
   import §,!g§.§>7§;
   import §,P§.§'_§;
   import §-"'§.§!w§;
   import §-"'§.§%"&§;
   import §05§.§?s§;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §5u§.§-"#§;
   import §6!A§.§4!%§;
   import §6]§.§,"0§;
   import §7!@§.§+`§;
   import §;<§.§'B§;
   import §=!7§.*;
   import §?!'§.§]!]§;
   import §@y§.*;
   import §[!P§.§@R§;
   import §^!k§.§"!,§;
   import §^!k§.§&!T§;
   import §^!k§.§5!r§;
   import §^!k§.§[!K§;
   import §^!k§.§return§;
   import §^"?§.§9!_§;
   import §^U§.§&y§;
   import com.rovio.assets.§69§;
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
   
   public class StateLevelEditor extends §'B§ implements IEventDispatcher
   {
      
      public static const §&!d§:String = "BuildChannel";
      
      public static const §%!Q§:String = "StateLevelEditor";
      
      private static const §"!b§:int = 20000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || StateLevelEditor)
         {
            §&!d§ = "BuildChannel";
            while(true)
            {
               §%!Q§ = "StateLevelEditor";
               while(!(_loc1_ && _loc2_))
               {
                  §"!b§ = 20000;
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private const §'4§:Boolean = false;
      
      private var §<+§:EventDispatcher;
      
      private var §9J§:§#!j§;
      
      private var §`!4§:Boolean = false;
      
      private var §'!D§:Shape = null;
      
      private var §2"-§:Vector.<§"!,§>;
      
      private var §&`§:Boolean = false;
      
      private var §?]§:String = "";
      
      private var §4"=§:String = "";
      
      private var §'""§:§5!r§;
      
      private var §'<§:Boolean = false;
      
      private var §8g§:Boolean;
      
      private var §"§:Boolean = false;
      
      private var §4!w§:int = -1;
      
      private var §=!5§:Vector.<§0"4§>;
      
      private var §9l§:Vector.<§!!2§>;
      
      private var §^!X§:§[!K§;
      
      private var §^!S§:§%"&§;
      
      private var §#!,§:MovieClip;
      
      private var §?W§:Vector.<DisplayObject>;
      
      private var §#!q§:§!w§;
      
      private var § ;§:§9!_§;
      
      private var §"-§:§2",§;
      
      private var §+!5§:int = 20000;
      
      private var §'A§:Vector.<Function>;
      
      private var §,#§:Boolean = false;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<+§ = new EventDispatcher();
         }
         loop0:
         while(true)
         {
            this.§2"-§ = new Vector.<§"!,§>();
            loop1:
            while(true)
            {
               this.§=!5§ = new Vector.<§0"4§>();
               while(!_loc4_)
               {
                  this.§?W§ = new Vector.<DisplayObject>();
                  loop3:
                  do
                  {
                     this.§'A§ = new Vector.<Function>();
                     while(true)
                     {
                        super(param1,param2);
                        loop5:
                        while(!(_loc4_ && this))
                        {
                           §?s§.registerMethod("openEditor",this.§1!p§);
                           loop6:
                           do
                           {
                              §?s§.registerMethod("snapshot",this.save);
                              while(!_loc4_)
                              {
                                 §,"0§.log("External methods registered.");
                                 if(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop5;
                           }
                           while(_loc4_);
                           
                           continue loop3;
                        }
                     }
                  }
                  while(_loc4_ && _loc3_);
                  
                  if(_loc3_ || param1)
                  {
                     if(_loc3_)
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §`!v§ = new §return§(this);
               loop1:
               while(true)
               {
                  §>7§.§];§(true);
                  loop2:
                  while(true)
                  {
                     this.§9J§ = new §#!j§(this);
                     while(true)
                     {
                        if(!this.§^!X§)
                        {
                           while(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 this.§^!X§ = new §[!K§(this,this.§9J§.§0"!§);
                                 addr95:
                                 while(true)
                                 {
                                 }
                              }
                              addr48:
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              this.§17§(false);
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr35:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §%K§.§`9§.start();
                                       addr41:
                                       addr64:
                                       while(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr48);
                                       }
                                       while(!(_loc3_ && this))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr95);
                                       §§goto(addr35);
                                    }
                                    addr37:
                                 }
                                 var _loc1_:Class = §69§.§ 0§("HighlightArrow");
                                 if(!_loc3_)
                                 {
                                    this.§#!,§ = new _loc1_();
                                 }
                                 this.§#!,§.visible = false;
                                 §`!v§.movieClip.addChild(this.§#!,§);
                                 addr230:
                                 if(_loc2_ || _loc3_)
                                 {
                                    this.§"-§ = new §2",§(§]!M§.§"!V§.Views.View_Settings[0],super.§`!v§.container);
                                    this.§"-§.visible = true;
                                    addr173:
                                    if(_loc2_ || _loc1_)
                                    {
                                       §0"#§.§4!m§(§&!d§,3,1);
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                §§goto(addr230);
                                             }
                                             return;
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr173);
                                    }
                                    addr195:
                                    §§goto(addr195);
                                 }
                                 addr225:
                                 §§goto(addr225);
                              }
                              §§goto(addr41);
                           }
                           continue;
                        }
                        while(true)
                        {
                           new §&!T§(this.§"p§());
                           §§goto(addr64);
                           §§goto(addr95);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      override public function getTargetFrameRate() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(Capabilities.os.indexOf("Mac") >= 0)
            {
               addr40:
               §§push(30);
               if(_loc2_ && _loc1_)
               {
               }
            }
            else
            {
               return 60;
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §0"#§.§<"0§(StateLevelEditor.§&!d§);
               loop1:
               while(true)
               {
                  §0"#§.§9"2§("BadPiggies_Building",§&!d§,1000);
                  loop2:
                  while(true)
                  {
                     §>7§.§];§(true);
                     while(true)
                     {
                        §'_§.resume();
                        addr167:
                        while(_loc1_)
                        {
                           §§push(this.§9J§);
                           loop5:
                           while(true)
                           {
                              §§pop().activate();
                              addr163:
                              while(true)
                              {
                                 §'_§.§^`§(this.§9J§.§"L§);
                                 continue loop5;
                              }
                           }
                        }
                        continue loop1;
                        loop9:
                        while(!(_loc2_ && _loc2_))
                        {
                           §`!v§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
                           loop10:
                           while(true)
                           {
                              §4!%§.§`-§().addEventListener(Event.CHANGE,this.§^!3§);
                              while(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 this.§^!3§();
                                 while(true)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this.§"p§());
                                       loop13:
                                       while(true)
                                       {
                                          §§push("ButtonGravity");
                                          addr64:
                                          while(true)
                                          {
                                             (§§pop().getItemByName(§§pop()) as §>!D§).setComponentState(§>!D§.§;!M§);
                                             addr70:
                                             addr158:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr74:
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§9J§);
                                                if(_loc1_)
                                                {
                                                   §§pop().§"L§.§;!;§(true);
                                                }
                                                else
                                                {
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr74);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §`!v§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§@"8§);
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr163);
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_ || _loc2_)
                                 {
                                    return;
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr167);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        §§goto(addr50);
                     }
                     else
                     {
                        addr68:
                        for each(_loc3_ in this.§'A§)
                        {
                           if(!_loc6_)
                           {
                              _loc3_(param1);
                           }
                        }
                        if(_loc7_ || this)
                        {
                           addr337:
                           this.§4"4§(this.§9J§.§0"!§.§0z§.objects.getJoints());
                           loop1:
                           while(true)
                           {
                              this.§"p§().§9!z§(param1);
                              loop2:
                              while(true)
                              {
                                 §&!T§.§[E§.§=3§();
                                 loop3:
                                 while(true)
                                 {
                                    this.§8!Q§(param1);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§'""§);
                                       if(_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§'""§);
                                                addr308:
                                                while(true)
                                                {
                                                   §§pop().update(param1);
                                                   addr310:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr219:
                                                if(_loc7_ || this)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§`!4§);
                                             loop7:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(mNextState.length <= 0)
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§!!2§.§[E§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop().§?!p§());
                                                               if(_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        addr159:
                                                                        if(!_loc6_)
                                                                        {
                                                                           this.§+!5§ -= param1;
                                                                           for(; !_loc6_; while(!(_loc6_ && param1))
                                                                           {
                                                                              this.§+!5§ = §"!b§;
                                                                              do
                                                                              {
                                                                                 this.save();
                                                                              }
                                                                              while(!_loc7_);
                                                                              
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc6_ && param1)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§goto(addr99);
                                                                           })
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(this.§+!5§ > 0)
                                                                                 {
                                                                                    return §'B§.STATE_STATUS_RUNNING;
                                                                                 }
                                                                                 addr99:
                                                                                 continue;
                                                                              }
                                                                              addr197:
                                                                              addr197:
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 addr204:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    if(mNextState == §&y§.§%!Q§)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr219);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop3;
                                                                                          addr283:
                                                                                       }
                                                                                    }
                                                                                    addr187:
                                                                                    §§push(§!!2§.§[E§);
                                                                                    break loop14;
                                                                                 }
                                                                                 addr262:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§`!4§ = false;
                                                                                    addr242:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       addr277:
                                                                                       while(true)
                                                                                       {
                                                                                          this.dispatchEvent(new §!"8§(§!"8§.PLAY));
                                                                                       }
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                    continue loop4;
                                                                                    §§goto(addr204);
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           addr237:
                                                                           §§goto(addr187);
                                                                           addr177:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              mNextState = §@"0§.§%!Q§;
                                                                              §§goto(addr159);
                                                                           }
                                                                           addr272:
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     return §'B§.STATE_STATUS_COMPLETED;
                                                                     addr191:
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            break;
                                                         }
                                                         §§pop().§%r§();
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   addr192:
                                                }
                                                §§goto(addr277);
                                             }
                                          }
                                       }
                                       §§goto(addr308);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr237);
                     }
                  }
                  else
                  {
                     addr58:
                     if(!§'_§.isPaused)
                     {
                        if(_loc7_)
                        {
                           this.§9J§.update(param1);
                           addr67:
                           §§goto(addr68);
                           §§push(0);
                        }
                        §§goto(addr67);
                     }
                  }
                  §§goto(addr337);
               }
               §§goto(addr58);
            }
            addr50:
            return §§pop();
         }
         §§goto(addr67);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
         while(true)
         {
            this.dispatchEvent(new §!"8§(§!"8§.SAVE));
            while(true)
            {
               §0"#§.§4"#§();
               loop2:
               while(!(_loc1_ && _loc1_))
               {
                  §-"#§.§3"=§ = this.§9J§.§0"!§.§,w§;
                  loop3:
                  while(true)
                  {
                     this.§9i§(null);
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§'""§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr79:
                     this.§'""§.onEnterGUI();
                  }
                  while(true)
                  {
                     §§goto(addr28);
                  }
               }
               addr28:
               while(true)
               {
                  this.§'<§ = true;
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'""§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'""§);
                     addr74:
                     while(true)
                     {
                        §§pop().onLeaveGUI();
                        addr75:
                        while(true)
                        {
                        }
                     }
                     addr44:
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     return;
                     addr51:
                  }
               }
               while(true)
               {
                  this.§'<§ = false;
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr44);
               }
               §§goto(addr51);
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param2)
            {
               addr21:
               §§push(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop());
                  if(_loc5_ || this)
                  {
                  }
               }
               addr66:
               §§push(§§pop());
            }
            else
            {
               §§push(§>!D§.§;!M§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc5_ || param2)
                  {
                     §§goto(addr66);
                  }
               }
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               (§`!v§.getItemByName(param1) as §9"8§).setComponentState(_loc3_);
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function §5!<§() : Boolean
      {
         return this.§8g§;
      }
      
      public function §17§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§8g§ != param1)
            {
               do
               {
                  this.§8g§ = param1;
                  do
                  {
                     this.dispatchEvent(new §!"8§(§!"8§.§'!K§));
                  }
                  while(_loc2_);
                  
               }
               while(!_loc3_);
               
               if(!(_loc2_ && _loc3_))
               {
                  return;
                  addr57:
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§9"8§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:* = param2;
         if(_loc8_ || param3)
         {
            if("CLOSE_POPUP" === _loc6_)
            {
               if(!(_loc7_ && param1))
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                  }
               }
               else
               {
                  addr883:
                  §§push(4);
                  if(_loc7_ && param1)
                  {
                     addr951:
                  }
               }
            }
            else if("CONTINUE" === _loc6_)
            {
               if(!(_loc7_ && param1))
               {
                  §§push(1);
                  if(!_loc8_)
                  {
                     addr1100:
                  }
               }
               else
               {
                  addr943:
                  §§push(9);
                  if(_loc8_ || param1)
                  {
                     §§goto(addr951);
                  }
                  else
                  {
                     addr1054:
                  }
               }
            }
            else if("PUBLISH" === _loc6_)
            {
               if(_loc8_)
               {
                  §§push(2);
                  if(!(_loc8_ || param2))
                  {
                     addr1026:
                  }
               }
               else
               {
                  addr897:
                  §§push(5);
                  if(!_loc8_)
                  {
                     addr1117:
                  }
               }
            }
            else if("CANCEL" === _loc6_)
            {
               if(_loc8_)
               {
                  §§push(3);
                  if(_loc7_ && param1)
                  {
                     §§goto(addr1117);
                  }
               }
               else
               {
                  addr1004:
                  §§push(13);
                  if(!_loc8_)
                  {
                     addr1072:
                  }
               }
            }
            else if("PLAY" === _loc6_)
            {
               if(!(_loc7_ && this))
               {
                  §§goto(addr883);
               }
               else
               {
                  addr920:
                  §§push(7);
                  if(!_loc8_)
                  {
                     §§goto(addr1026);
                  }
               }
            }
            else if("SAVE" === _loc6_)
            {
               if(_loc8_)
               {
                  §§goto(addr897);
               }
               else
               {
                  addr990:
                  §§push(12);
                  if(_loc7_ && param3)
                  {
                     addr1040:
                  }
               }
            }
            else if("HELP_BUTTON" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§push(6);
                  if(!(_loc8_ || this))
                  {
                     §§goto(addr1117);
                  }
               }
               else
               {
                  addr1060:
                  §§push(17);
                  if(!_loc8_)
                  {
                     addr1086:
                  }
               }
            }
            else if("HELP_ADVANCED" === _loc6_)
            {
               if(!_loc7_)
               {
                  §§goto(addr920);
               }
               else
               {
                  addr1018:
                  §§push(14);
                  if(_loc7_ && this)
                  {
                     §§goto(addr1040);
                  }
                  §§goto(addr1122);
               }
            }
            else if("HELP_BACK" === _loc6_)
            {
               if(_loc8_ || param1)
               {
                  §§push(8);
                  if(_loc7_)
                  {
                     §§goto(addr951);
                  }
               }
               else
               {
                  addr1078:
                  §§push(19);
                  if(_loc8_ || param3)
                  {
                     §§goto(addr1086);
                  }
                  else
                  {
                     §§goto(addr1117);
                  }
               }
            }
            else
            {
               if("FULLSCREEN_BUTTON" === _loc6_)
               {
                  if(_loc8_)
                  {
                     §§goto(addr943);
                  }
                  §§goto(addr1122);
               }
               else
               {
                  if("HELP_CLOSE" === _loc6_)
                  {
                     if(!(_loc7_ && param3))
                     {
                        §§push(10);
                        if(_loc8_)
                        {
                           §§goto(addr1122);
                        }
                        else
                        {
                           §§goto(addr1117);
                        }
                     }
                     else
                     {
                        addr1037:
                        §§push(15);
                        if(!_loc7_)
                        {
                           §§goto(addr1040);
                        }
                        else
                        {
                           §§goto(addr1100);
                        }
                     }
                     §§goto(addr1122);
                  }
                  else if("ZOOM_DRAG" === _loc6_)
                  {
                     if(!(_loc7_ && param2))
                     {
                        §§push(11);
                        if(!(_loc7_ && param2))
                        {
                           §§goto(addr1122);
                        }
                        else
                        {
                           §§goto(addr1100);
                        }
                     }
                     else
                     {
                        §§goto(addr1078);
                     }
                     §§goto(addr1122);
                  }
                  else
                  {
                     if("TOGGLE_PHYSICS" === _loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr990);
                        }
                        else
                        {
                           §§goto(addr1078);
                        }
                        this.§9J§;
                        return;
                     }
                     if("SHOW_QUEST_INFO" === _loc6_)
                     {
                        if(_loc8_)
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
                        if("HIDE_QUEST_INFO" === _loc6_)
                        {
                           if(_loc8_ || this)
                           {
                              §§goto(addr1018);
                           }
                           else
                           {
                              addr1046:
                              §§push(16);
                              if(!(_loc7_ && param1))
                              {
                                 §§goto(addr1054);
                              }
                              else
                              {
                                 §§goto(addr1086);
                              }
                           }
                        }
                        else if("SHOP_BUTTON" === _loc6_)
                        {
                           if(!(_loc7_ && this))
                           {
                              §§goto(addr1037);
                           }
                        }
                        else if("SHOP_CLOSE" === _loc6_)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr1046);
                           }
                           else
                           {
                              §§goto(addr1060);
                           }
                        }
                        else
                        {
                           if("SETTINGS_BUTTON" === _loc6_)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr1060);
                              }
                              else
                              {
                                 addr1069:
                                 §§push(18);
                                 if(_loc8_)
                                 {
                                    §§goto(addr1072);
                                 }
                                 §§goto(addr1018);
                              }
                           }
                           else
                           {
                              if("TOGGLE_SOUNDS" === _loc6_)
                              {
                                 if(_loc8_)
                                 {
                                    §§goto(addr1069);
                                 }
                              }
                              else if("RESOURCE_ADD_BLOCKS" === _loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr1078);
                                 }
                              }
                              else if("RESOURCE_ADD_BOLTS" === _loc6_)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(20);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§goto(addr1100);
                                    }
                                 }
                              }
                              else if("RESOURCE_ADD_COINS" !== _loc6_)
                              {
                                 §§goto(addr1018);
                                 §§push(22);
                              }
                              §§goto(addr1018);
                           }
                           §§goto(addr1018);
                        }
                        §§goto(addr1018);
                     }
                     §§goto(addr1018);
                     §§goto(addr1018);
                  }
                  §§goto(addr1018);
               }
               if(_loc8_)
               {
                  §§goto(addr1117);
               }
            }
            §§goto(addr1018);
         }
         §§goto(addr883);
      }
      
      private function §&!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.dispatchEvent(new §!"8§(§!"8§.CONTINUE));
         }
      }
      
      private function cancel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.dispatchEvent(new §!"8§(§!"8§.CANCEL));
         }
      }
      
      private function §7!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.dispatchEvent(new §!"8§(§!"8§.§;`§));
         }
      }
      
      private function §^!3§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.keyDown(param1);
            while(true)
            {
               §§push(§'_§.isPaused);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §'_§.§=R§.keyDown(param1);
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
                                    while(true)
                                    {
                                       §§pop();
                                       addr324:
                                       while(true)
                                       {
                                          §§push(Boolean(param1.ctrlKey));
                                       }
                                    }
                                    addr323:
                                 }
                                 while(true)
                                 {
                                    loop9:
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
                                                   loop10:
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      loop11:
                                                      for(; !_loc2_; §§push(§§pop()),if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      },if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§goto(addr67);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr80);
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                         addr56:
                                                      },§§goto(addr123))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     (AngryBirdsFP11.§>!7§ as §+`§).§break§();
                                                                  }
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr300);
                                                                              §§push(this.§"p§());
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr314);
                                                                           }
                                                                           §§goto(addr29);
                                                                        }
                                                                        addr345:
                                                                        return;
                                                                        addr294:
                                                                     }
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.save();
                                                                           addr314:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr312:
                                                                     }
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        this.dispatchEvent(param1);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr250:
                                                                           while(true)
                                                                           {
                                                                              this.§7!<§();
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(!_loc3_)
                                                                           {
                                                                              loop21:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(Boolean(param1.ctrlKey));
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr123:
                                                                                 addr123:
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr211:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr212:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(Boolean(param1.ctrlKey));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                      addr107:
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§push(this.§"p§());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop().§ !c§("Blocks");
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§"p§());
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§?x§();
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr241:
                                                                                          }
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && param1))
                                                                                 {
                                                                                    this.§&!&§();
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr266);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc2_ && param1)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              addr91:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                           addr80:
                                                                        }
                                                                        while(!(_loc2_ && this))
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     return;
                                                                     addr29:
                                                                     §§goto(addr314);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(param1.keyCode == Keyboard.X);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§goto(addr107);
                                                                  }
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            continue;
                                                            addr173:
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr312);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr345);
               }
            }
         }
         §§goto(addr91);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.keyUp(param1);
            do
            {
               §'_§.§=R§.keyUp(param1);
               do
               {
                  this.dispatchEvent(param1);
               }
               while(_loc2_);
               
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §1!p§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,"0§.log("onOpenEditorRequest! " + param1[0]);
            loop0:
            while(true)
            {
               §§push(§[!^§.§["!§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§push(param1[0] == null);
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr127:
                                 while(true)
                                 {
                                    §§push((param1[0] as String).length == 0);
                                    if(_loc3_ && param1)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                              }
                              addr116:
                           }
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       §@"0§.§[y§(StateLevelEditor.§%!Q§);
                                    }
                                    else
                                    {
                                       §§goto(addr127);
                                    }
                                 }
                                 do
                                 {
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §[!^§.§@"7§.§<t§(§@"0§.§%!Q§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             break;
                                          }
                                          break loop2;
                                       }
                                       continue;
                                       addr23:
                                    }
                                    continue loop0;
                                 }
                                 while(!_loc2_);
                                 
                                 break loop0;
                              }
                              §@"0§.§^!'§(StateLevelEditor.§%!Q§,param1[0]);
                              break;
                           }
                           addr49:
                           while(true)
                           {
                              §§goto(addr23);
                           }
                        }
                     }
                     §§goto(addr127);
                  }
                  break;
               }
               §§goto(addr116);
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function save(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§3!+§)
            {
               if(_loc3_)
               {
                  addr43:
                  this.dispatchEvent(new §!"8§(§!"8§.SAVE));
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function § !J§(param1:int, param2:int) : void
      {
      }
      
      public function §[!9§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  if(this.§'!D§ == null)
                  {
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_ || param1)
                              {
                                 while(true)
                                 {
                                    this.§'!D§ = new Shape();
                                    while(true)
                                    {
                                       §`!v§.addChildAt(this.§'!D§,0);
                                       while(true)
                                       {
                                          §§goto(addr98);
                                       }
                                    }
                                 }
                                 addr141:
                              }
                              §§goto(addr166);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr146);
                  }
                  addr98:
                  loop2:
                  while(true)
                  {
                     this.§'!D§.graphics.clear();
                     loop3:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc3_ || param1)
                           {
                              this.§'!D§.graphics.beginFill(65280,0.1);
                              loop4:
                              do
                              {
                                 this.§'!D§.graphics.lineStyle(1,43520,0.2);
                                 while(!_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(this.§'!D§ != null)
                                       {
                                          addr166:
                                          this.§'!D§.graphics.clear();
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       addr146:
                                       addr162:
                                    }
                                    continue;
                                    this.§'!D§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
                                    do
                                    {
                                       this.§'!D§.graphics.endFill();
                                    }
                                    while(!_loc3_);
                                    
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                    return;
                                 }
                                 continue loop3;
                              }
                              while(_loc2_ && _loc3_);
                              
                              if(!(_loc2_ && this))
                              {
                                 break loop2;
                              }
                              continue loop8;
                           }
                           continue loop1;
                        }
                        continue loop9;
                     }
                     continue loop9;
                  }
                  return;
               }
            }
            §§goto(addr162);
         }
         §§goto(addr141);
      }
      
      public function §4"4§(param1:Vector.<§@R§>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!X§.update(param1);
         }
      }
      
      public function §8!Q§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var deltaTime:int = param1;
         do
         {
            this.§2"-§ = this.§2"-§.filter(function(param1:§"!,§, param2:int, param3:Vector.<§"!,§>):Boolean
            {
               return param1.update(deltaTime);
            });
         }
         while(!_loc4_);
         
      }
      
      public function §5V§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"!,§ = new §"!,§(param1,param2);
         if(_loc5_ || this)
         {
            this.§2"-§.push(_loc3_);
         }
         do
         {
            §`!v§.addChildAt(_loc3_,0);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §"p§() : §return§
      {
         return §`!v§ as §return§;
      }
      
      public function §9i§(param1:§5!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§'""§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §`!v§.removeChild(this.§'""§);
                     addr105:
                     while(true)
                     {
                     }
                  }
                  addr101:
               }
               while(true)
               {
                  this.§'""§ = param1;
                  loop4:
                  while(true)
                  {
                     §§push(this.§'""§);
                     addr67:
                     while(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           return;
                        }
                        addr25:
                        continue loop4;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function get §?F§() : Boolean
      {
         return this.§'<§;
      }
      
      public function §;!"§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'A§.push(param1);
         }
      }
      
      public function §#!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!4§ = true;
         }
      }
      
      public function §<!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §?s§.doJsCall("onLevelDataChanged",param1);
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§<+§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§<+§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§<+§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§<+§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§<+§.willTrigger(param1);
      }
   }
}
