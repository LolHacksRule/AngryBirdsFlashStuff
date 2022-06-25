package §>!A§
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §'k§.§;[§;
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §8!>§.§=!+§;
   import §8!>§.§`!D§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.Event;
   
   public class StateCutScene extends §#!,§
   {
      
      public static const §?x§:String = "StateCutScene";
      
      private static const §[X§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateCutScene))
         {
            §?x§ = "StateCutScene";
            if(_loc1_)
            {
               addr28:
               §[X§ = 500;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §=`§:§=!+§;
      
      private var §0'§:Boolean;
      
      private var §80§:Number = 0;
      
      private var §7@§:Number = 0;
      
      private var §6v§:§;[§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            if(_loc1_)
            {
               §[=§ = new §^3§(this);
               if(_loc2_)
               {
               }
               §§goto(addr47);
            }
            §[=§.init(§!I§.§7y§.Views.View_CutScene[0]);
         }
         addr47:
      }
      
      protected function §2!1§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            if(!_loc3_)
            {
               §§push(this.§6v§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §[=§.getItemByName("MovieClip_Loading").setVisibility(true);
                        if(!_loc3_)
                        {
                           §§push(this.§6v§);
                           if(!_loc3_)
                           {
                              addr38:
                              §§pop().removeEventListener(Event.COMPLETE,this.§0!6§);
                              §§push(this.§6v§);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§package§);
                                 if(_loc2_)
                                 {
                                    addr64:
                                    §§push(this.§6v§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§0!6§);
                                       §§push(this.§6v§);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr97:
                                          §§pop().addEventListener(Event.CANCEL,this.§package§);
                                          §§push(this.§6v§);
                                       }
                                       §§push("cutscene_");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§5&§(§§pop());
                                       addr113:
                                       §§push(true);
                                       if(_loc2_ || _loc2_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr123);
                                       addr110:
                                    }
                                 }
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     this.§>S§();
                  }
                  §§goto(addr113);
               }
               §§goto(addr38);
            }
            §§goto(addr64);
         }
         else
         {
            §§push(false);
         }
         addr123:
         return §§pop();
      }
      
      private function §0!6§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§6v§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr60:
                     §§push(this.§6v§);
                     if(!_loc3_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§0!6§);
                        if(!_loc3_)
                        {
                           addr73:
                           this.§6v§.removeEventListener(Event.CANCEL,this.§package§);
                           if(_loc2_ || this)
                           {
                              this.§>S§();
                           }
                        }
                     }
                     §§goto(addr73);
                  }
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr60);
      }
      
      private function §>S§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §[=§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§-!6§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ >§ = § >§.§^n§;
         §§push(this.§6v§);
         if(!_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  addr47:
                  _loc2_ = this.§6v§.textureManager;
                  this.§=`§ = §`!D§.§1!3§(_loc1_,_loc2_);
                  addr50:
                  §§push(this.§=`§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           AngryBirdsFP11.sUserProgress.§0u§(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§[k§.§&@§);
                              if(!_loc4_)
                              {
                                 §§push(true);
                                 if(!_loc4_)
                                 {
                                    §§pop().§`!G§(§§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§[k§.§&@§);
                                       if(!(_loc4_ && this))
                                       {
                                          addr124:
                                          §§pop().§%7§(false);
                                          if(!_loc4_)
                                          {
                                             addr129:
                                             this.§=`§.update(0);
                                             §§goto(addr140);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§pop().§;1§.addChild(this.§=`§.sprite);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr140);
                     }
                     addr140:
                     if(_loc3_)
                     {
                        addr133:
                        §§push(§[k§.§&@§);
                     }
                     return;
                  }
                  §§goto(addr129);
               }
               §§goto(addr133);
            }
            §§goto(addr50);
         }
         §§goto(addr47);
      }
      
      protected function §package§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§6v§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§6v§);
                     if(_loc3_ || _loc3_)
                     {
                        addr60:
                        §§pop().removeEventListener(Event.COMPLETE,this.§0!6§);
                        §§goto(addr86);
                     }
                     §§pop().removeEventListener(Event.CANCEL,this.§package§);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr86);
               }
               addr86:
               if(_loc3_ || param1)
               {
                  §§push(this.§6v§);
               }
               this.end();
               return;
            }
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            if(!this.§6v§)
            {
               if(!(_loc2_ && this))
               {
                  this.§6v§ = §[k§.§&@§.§6_§;
                  addr41:
                  §§push(§;T§.§,H§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        addr48:
                        §;T§.§,H§.color = 0;
                     }
                     this.§80§ = 0;
                     if(!_loc2_)
                     {
                        this.§7@§ = 0;
                        §[=§.getItemByName("Button_Skip").setVisibility(false);
                        §[=§.getItemByName("Button_Skip").mClip.alpha = this.§80§;
                        if(_loc3_)
                        {
                           addr82:
                           AngryBirdsFP11.§'i§();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr111);
                        }
                        this.§0'§ = false;
                        if(!(_loc2_ && _loc3_))
                        {
                           §[=§.getItemByName("MovieClip_Loading").setVisibility(false);
                        }
                     }
                     addr111:
                     §§push(this.§-!6§());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_ || this)
                     {
                        if(!this.§2!1§(_loc1_))
                        {
                           if(!_loc2_)
                           {
                              this.end();
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr48);
               }
               §§goto(addr82);
            }
            §§goto(addr41);
         }
         §§goto(addr48);
      }
      
      protected function §-!6§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§5j§.§>N§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§5j§.§'!#§().§0!9§(_loc1_ + "-OUTRO"));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§5j§.§%V§);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           _loc1_ = §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr90:
                              §§push(§5j§.§'!#§().§0!9§(_loc1_ + "-INTRO"));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr108);
                           }
                           addr107:
                           addr108:
                           return §§pop();
                           §§push(_loc2_);
                        }
                     }
                     _loc2_ = §§pop();
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         §§goto(addr90);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§=`§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr36:
                     §§push(§[k§.§&@§);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().§;1§.removeChild(this.§=`§.sprite);
                        if(_loc2_)
                        {
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr129);
               }
               §§goto(addr72);
            }
            addr64:
            this.§=`§.dispose();
            if(_loc2_)
            {
               this.§=`§ = null;
               if(!_loc1_)
               {
                  addr72:
                  §§push(this.§6v§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr89:
                           §§push(this.§6v§);
                           if(_loc2_ || _loc1_)
                           {
                              addr108:
                              §§pop().removeEventListener(Event.COMPLETE,this.§0!6§);
                              addr113:
                              §§push(this.§6v§);
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§package§);
                           §[k§.§&@§.§%7§(true);
                           §5j§.§>N§ = null;
                           §§goto(addr120);
                        }
                        §§goto(addr113);
                     }
                     addr120:
                     if(_loc2_)
                     {
                        addr129:
                        super.deActivate();
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr108);
               }
               §§goto(addr89);
            }
            addr131:
            return;
         }
         §§goto(addr36);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("SKIP");
            if(!(_loc6_ && param2))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param3))
                     {
                        addr86:
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr96:
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(1);
                        if(!_loc6_)
                        {
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     §§goto(addr92);
                  }
               }
               §§goto(addr92);
            }
            addr92:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr93);
            }
            else
            {
               §§push(2);
            }
            addr101:
            switch(§§pop())
            {
               case 0:
                  this.§0'§ = true;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§,s§.§8!1§();
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§7@§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() > §[X§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §[=§.getItemByName("Button_Skip").setVisibility(true);
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.§80§);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§80§ = §§pop();
                     if(!_loc4_)
                     {
                        §[=§.getItemByName("Button_Skip").mClip.alpha = this.§80§;
                        addr69:
                        if(this.§80§ > 1)
                        {
                           this.§80§ = 1;
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr105);
                        }
                     }
                     addr97:
                     if(this.§0'§)
                     {
                        this.end();
                     }
                     else
                     {
                        §§goto(addr105);
                     }
                  }
                  return §#!,§.STATE_STATUS_COMPLETED;
               }
            }
            else
            {
               §§push(this);
               §§push(this.§7@§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§7@§ = §§pop();
               if(_loc3_)
               {
                  §§goto(addr97);
               }
            }
            addr105:
            §§push(super.run(param1));
            if(_loc3_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        return §#!,§.STATE_STATUS_COMPLETED;
                     }
                  }
                  else
                  {
                     §§push(this.§=`§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr174);
                              }
                              §§push(!§§pop());
                           }
                           §§goto(addr184);
                        }
                        addr174:
                        §§pop();
                        if(_loc3_)
                        {
                           addr179:
                           §§push(this.§=`§.update(param1));
                           if(!_loc3_)
                           {
                           }
                           addr184:
                           if(§§pop())
                           {
                              this.end();
                           }
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr179);
                  }
                  addr187:
                  return §#!,§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         §§push(this.§=`§);
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§pop();
                        §§push(this.§=`§);
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop().§!K§);
                           if(!_loc2_)
                           {
                              §§push(§=!+§.§8!,§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr68);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr113);
                  }
                  addr68:
                  if(§§pop())
                  {
                     §5O§.§-!A§ = StateCutScene.§?x§;
                     mNextState = §5O§.§?x§;
                  }
                  else
                  {
                     §§push(this.§=`§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc2_ && _loc1_))
                        {
                           addr101:
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr104);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr104);
                     }
                     addr104:
                     §§pop();
                     §§push(this.§=`§.§!K§);
                     if(!_loc2_)
                     {
                        addr113:
                        addr112:
                        if(§§pop() == §=!+§.§5_§)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              mNextState = §3!G§.§?x§;
                           }
                           §§goto(addr179);
                        }
                        else
                        {
                           §§push(§5j§.§%V§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop());
                              if(_loc3_ || this)
                              {
                                 addr153:
                                 _loc1_ = §§pop();
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr153);
                        }
                     }
                     addr155:
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           mNextState = this.§#! §();
                           if(_loc3_ || _loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        mNextState = §5O§.§?x§;
                     }
                     §§goto(addr179);
                  }
                  addr179:
                  return;
               }
               §§goto(addr101);
            }
            §§goto(addr113);
         }
         §§goto(addr104);
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
   }
}
