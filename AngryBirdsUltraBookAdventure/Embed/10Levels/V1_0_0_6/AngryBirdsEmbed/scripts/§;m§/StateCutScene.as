package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §6H§.§>3§;
   import §9!7§.§ !A§;
   import §9!7§.§?U§;
   import §=!B§.§59§;
   import §`!0§.§"?§;
   import §catch§.§4@§;
   import flash.events.Event;
   
   public class StateCutScene extends §>3§
   {
      
      public static const §-!A§:String = "StateCutScene";
      
      private static const §+D§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateCutScene))
         {
            §-!A§ = "StateCutScene";
            if(_loc1_)
            {
               addr28:
               §+D§ = 500;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §@!?§:§ !A§;
      
      private var §<G§:Boolean;
      
      private var §+m§:Number = 0;
      
      private var §!!?§:Number = 0;
      
      private var §++§:§@B§;
      
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
               §-f§ = new §0#§(this);
               if(_loc2_)
               {
               }
               §§goto(addr47);
            }
            §-f§.init(§06§.§-`§.Views.View_CutScene[0]);
         }
         addr47:
      }
      
      protected function §3!6§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            if(!_loc3_)
            {
               §§push(this.§++§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §-f§.getItemByName("MovieClip_Loading").setVisibility(true);
                        if(!_loc3_)
                        {
                           §§push(this.§++§);
                           if(!_loc3_)
                           {
                              addr38:
                              §§pop().removeEventListener(Event.COMPLETE,this.§#!?§);
                              §§push(this.§++§);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§1!8§);
                                 if(_loc2_)
                                 {
                                    addr64:
                                    §§push(this.§++§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§#!?§);
                                       §§push(this.§++§);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr97:
                                          §§pop().addEventListener(Event.CANCEL,this.§1!8§);
                                          §§push(this.§++§);
                                       }
                                       §§push("cutscene_");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§[!2§(§§pop());
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
                     this.§'!2§();
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
      
      private function §#!?§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§++§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr60:
                     §§push(this.§++§);
                     if(!_loc3_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§#!?§);
                        if(!_loc3_)
                        {
                           addr73:
                           this.§++§.removeEventListener(Event.CANCEL,this.§1!8§);
                           if(_loc2_ || this)
                           {
                              this.§'!2§();
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
      
      private function §'!2§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §-f§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§2W§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§?y§ = §?y§.§@j§;
         §§push(this.§++§);
         if(!_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  addr47:
                  _loc2_ = this.§++§.textureManager;
                  this.§@!?§ = §?U§.§var §(_loc1_,_loc2_);
                  addr50:
                  §§push(this.§@!?§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           AngryBirdsFP11.sUserProgress.§&c§(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§"h§.§1C§);
                              if(!_loc4_)
                              {
                                 §§push(true);
                                 if(!_loc4_)
                                 {
                                    §§pop().§]!!§(§§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§"h§.§1C§);
                                       if(!(_loc4_ && this))
                                       {
                                          addr124:
                                          §§pop().§`M§(false);
                                          if(!_loc4_)
                                          {
                                             addr129:
                                             this.§@!?§.update(0);
                                             §§goto(addr140);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§pop().§35§.addChild(this.§@!?§.sprite);
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
                        §§push(§"h§.§1C§);
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
      
      protected function §1!8§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§++§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§++§);
                     if(_loc3_ || _loc3_)
                     {
                        addr60:
                        §§pop().removeEventListener(Event.COMPLETE,this.§#!?§);
                        §§goto(addr86);
                     }
                     §§pop().removeEventListener(Event.CANCEL,this.§1!8§);
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
                  §§push(this.§++§);
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
            if(!this.§++§)
            {
               if(!(_loc2_ && this))
               {
                  this.§++§ = §"h§.§1C§.§^!#§;
                  addr41:
                  §§push(§4@§.§0W§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        addr48:
                        §4@§.§0W§.color = 0;
                     }
                     this.§+m§ = 0;
                     if(!_loc2_)
                     {
                        this.§!!?§ = 0;
                        §-f§.getItemByName("Button_Skip").setVisibility(false);
                        §-f§.getItemByName("Button_Skip").mClip.alpha = this.§+m§;
                        if(_loc3_)
                        {
                           addr82:
                           AngryBirdsFP11.§-+§();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr111);
                        }
                        this.§<G§ = false;
                        if(!(_loc2_ && _loc3_))
                        {
                           §-f§.getItemByName("MovieClip_Loading").setVisibility(false);
                        }
                     }
                     addr111:
                     §§push(this.§2W§());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_ || this)
                     {
                        if(!this.§3!6§(_loc1_))
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
      
      protected function §2W§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§59§.§72§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§59§.§8!F§().§&n§(_loc1_ + "-OUTRO"));
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
                     §§push(§59§.§%j§);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           _loc1_ = §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr90:
                              §§push(§59§.§8!F§().§&n§(_loc1_ + "-INTRO"));
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
            §§push(this.§@!?§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr36:
                     §§push(§"h§.§1C§);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().§35§.removeChild(this.§@!?§.sprite);
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
            this.§@!?§.dispose();
            if(_loc2_)
            {
               this.§@!?§ = null;
               if(!_loc1_)
               {
                  addr72:
                  §§push(this.§++§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr89:
                           §§push(this.§++§);
                           if(_loc2_ || _loc1_)
                           {
                              addr108:
                              §§pop().removeEventListener(Event.COMPLETE,this.§#!?§);
                              addr113:
                              §§push(this.§++§);
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§1!8§);
                           §"h§.§1C§.§`M§(true);
                           §59§.§72§ = null;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
                  this.§<G§ = true;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§0P§.§<h§();
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
         §§push(this.§!!?§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() > §+D§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §-f§.getItemByName("Button_Skip").setVisibility(true);
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.§+m§);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§+m§ = §§pop();
                     if(!_loc4_)
                     {
                        §-f§.getItemByName("Button_Skip").mClip.alpha = this.§+m§;
                        addr69:
                        if(this.§+m§ > 1)
                        {
                           this.§+m§ = 1;
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr105);
                        }
                     }
                     addr97:
                     if(this.§<G§)
                     {
                        this.end();
                     }
                     else
                     {
                        §§goto(addr105);
                     }
                  }
                  return §>3§.STATE_STATUS_COMPLETED;
               }
            }
            else
            {
               §§push(this);
               §§push(this.§!!?§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§!!?§ = §§pop();
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
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        return §>3§.STATE_STATUS_COMPLETED;
                     }
                  }
                  else
                  {
                     §§push(this.§@!?§);
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
                           §§push(this.§@!?§.update(param1));
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
                  return §>3§.STATE_STATUS_RUNNING;
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
         §§push(this.§@!?§);
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
                        §§push(this.§@!?§);
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop().§+g§);
                           if(!_loc2_)
                           {
                              §§push(§ !A§.§!x§);
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
                     §>!B§.§@!D§ = StateCutScene.§-!A§;
                     mNextState = §>!B§.§-!A§;
                  }
                  else
                  {
                     §§push(this.§@!?§);
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
                     §§push(this.§@!?§.§+g§);
                     if(!_loc2_)
                     {
                        addr113:
                        addr112:
                        if(§§pop() == § !A§.§!1§)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              mNextState = §>!G§.§-!A§;
                           }
                           §§goto(addr179);
                        }
                        else
                        {
                           §§push(§59§.§%j§);
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
                           mNextState = this.§2J§();
                           if(_loc3_ || _loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        mNextState = §>!B§.§-!A§;
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
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
   }
}
