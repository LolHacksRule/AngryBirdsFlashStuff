package §`!%§
{
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §'X§.§9[§;
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §2!#§.§&§;
   import §2!#§.§9!5§;
   import §>!C§.§6M§;
   import §@s§.§'!0§;
   import flash.events.Event;
   
   public class StateCutScene extends §9[§
   {
      
      public static const §0!7§:String = "StateCutScene";
      
      private static const §4!1§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateCutScene))
         {
            §0!7§ = "StateCutScene";
            if(_loc1_)
            {
               addr28:
               §4!1§ = 500;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §[K§:§&§;
      
      private var dynamic:Boolean;
      
      private var § for§:Number = 0;
      
      private var §[S§:Number = 0;
      
      private var §?!0§:§2h§;
      
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
               §#!4§ = new §!!1§(this);
               if(_loc2_)
               {
               }
               §§goto(addr47);
            }
            §#!4§.init(§0!&§.§'^§.Views.View_CutScene[0]);
         }
         addr47:
      }
      
      protected function §]K§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            if(!_loc3_)
            {
               §§push(this.§?!0§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §#!4§.getItemByName("MovieClip_Loading").setVisibility(true);
                        if(!_loc3_)
                        {
                           §§push(this.§?!0§);
                           if(!_loc3_)
                           {
                              addr38:
                              §§pop().removeEventListener(Event.COMPLETE,this.§6I§);
                              §§push(this.§?!0§);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§1L§);
                                 if(_loc2_)
                                 {
                                    addr64:
                                    §§push(this.§?!0§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§6I§);
                                       §§push(this.§?!0§);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr97:
                                          §§pop().addEventListener(Event.CANCEL,this.§1L§);
                                          §§push(this.§?!0§);
                                       }
                                       §§push("cutscene_");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§ null§(§§pop());
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
                     this.§if §();
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
      
      private function §6I§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§?!0§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr60:
                     §§push(this.§?!0§);
                     if(!_loc3_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§6I§);
                        if(!_loc3_)
                        {
                           addr73:
                           this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
                           if(_loc2_ || this)
                           {
                              this.§if §();
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
      
      private function §if §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §#!4§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§57§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§'!3§ = §'!3§.§-]§;
         §§push(this.§?!0§);
         if(!_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  addr47:
                  _loc2_ = this.§?!0§.textureManager;
                  this.§[K§ = §9!5§.§`&§(_loc1_,_loc2_);
                  addr50:
                  §§push(this.§[K§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           AngryBirdsFP11.sUserProgress.§1x§(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§,!!§.§;4§);
                              if(!_loc4_)
                              {
                                 §§push(true);
                                 if(!_loc4_)
                                 {
                                    §§pop().§69§(§§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§,!!§.§;4§);
                                       if(!(_loc4_ && this))
                                       {
                                          addr124:
                                          §§pop().§#O§(false);
                                          if(!_loc4_)
                                          {
                                             addr129:
                                             this.§[K§.update(0);
                                             §§goto(addr140);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§pop().§7!8§.addChild(this.§[K§.sprite);
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
                        §§push(§,!!§.§;4§);
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
      
      protected function §1L§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§?!0§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§?!0§);
                     if(_loc3_ || _loc3_)
                     {
                        addr60:
                        §§pop().removeEventListener(Event.COMPLETE,this.§6I§);
                        §§goto(addr86);
                     }
                     §§pop().removeEventListener(Event.CANCEL,this.§1L§);
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
                  §§push(this.§?!0§);
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
            if(!this.§?!0§)
            {
               if(!(_loc2_ && this))
               {
                  this.§?!0§ = §,!!§.§;4§.§^k§;
                  addr41:
                  §§push(§'_§.§17§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        addr48:
                        §'_§.§17§.color = 0;
                     }
                     this.§ for§ = 0;
                     if(!_loc2_)
                     {
                        this.§[S§ = 0;
                        §#!4§.getItemByName("Button_Skip").setVisibility(false);
                        §#!4§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
                        if(_loc3_)
                        {
                           addr82:
                           AngryBirdsFP11.§-!?§();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr111);
                        }
                        this.dynamic = false;
                        if(!(_loc2_ && _loc3_))
                        {
                           §#!4§.getItemByName("MovieClip_Loading").setVisibility(false);
                        }
                     }
                     addr111:
                     §§push(this.§57§());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_ || this)
                     {
                        if(!this.§]K§(_loc1_))
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
      
      protected function §57§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§6M§.§>D§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§6M§.§0!1§().§,"§(_loc1_ + "-OUTRO"));
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
                     §§push(§6M§.§[z§);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           _loc1_ = §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr90:
                              §§push(§6M§.§0!1§().§,"§(_loc1_ + "-INTRO"));
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
            §§push(this.§[K§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr36:
                     §§push(§,!!§.§;4§);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().§7!8§.removeChild(this.§[K§.sprite);
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
            this.§[K§.dispose();
            if(_loc2_)
            {
               this.§[K§ = null;
               if(!_loc1_)
               {
                  addr72:
                  §§push(this.§?!0§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr89:
                           §§push(this.§?!0§);
                           if(_loc2_ || _loc1_)
                           {
                              addr108:
                              §§pop().removeEventListener(Event.COMPLETE,this.§6I§);
                              addr113:
                              §§push(this.§?!0§);
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§1L§);
                           §,!!§.§;4§.§#O§(true);
                           §6M§.§>D§ = null;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
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
                  this.dynamic = true;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§@t§.§"&§();
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
         §§push(this.§[S§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() > §4!1§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §#!4§.getItemByName("Button_Skip").setVisibility(true);
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.§ for§);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§ for§ = §§pop();
                     if(!_loc4_)
                     {
                        §#!4§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
                        addr69:
                        if(this.§ for§ > 1)
                        {
                           this.§ for§ = 1;
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr105);
                        }
                     }
                     addr97:
                     if(this.dynamic)
                     {
                        this.end();
                     }
                     else
                     {
                        §§goto(addr105);
                     }
                  }
                  return §9[§.STATE_STATUS_COMPLETED;
               }
            }
            else
            {
               §§push(this);
               §§push(this.§[S§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§[S§ = §§pop();
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
               if(§§pop() != §9[§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        return §9[§.STATE_STATUS_COMPLETED;
                     }
                  }
                  else
                  {
                     §§push(this.§[K§);
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
                           §§push(this.§[K§.update(param1));
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
                  return §9[§.STATE_STATUS_RUNNING;
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
         §§push(this.§[K§);
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
                        §§push(this.§[K§);
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop().§>!+§);
                           if(!_loc2_)
                           {
                              §§push(§&§.§<!G§);
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
                     §!,§.§^B§ = StateCutScene.§0!7§;
                     mNextState = §!,§.§0!7§;
                  }
                  else
                  {
                     §§push(this.§[K§);
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
                     §§push(this.§[K§.§>!+§);
                     if(!_loc2_)
                     {
                        addr113:
                        addr112:
                        if(§§pop() == §&§.§#v§)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              mNextState = §4N§.§0!7§;
                           }
                           §§goto(addr179);
                        }
                        else
                        {
                           §§push(§6M§.§[z§);
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
                           mNextState = this.§,7§();
                           if(_loc3_ || _loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        mNextState = §!,§.§0!7§;
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
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
   }
}
