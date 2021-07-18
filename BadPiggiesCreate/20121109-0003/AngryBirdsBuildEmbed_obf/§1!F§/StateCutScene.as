package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §9!$§.§,i§;
   import §9!$§.§6R§;
   import §=!3§.§;!!§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import flash.events.Event;
   
   public class StateCutScene extends §;!!§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §#_§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "StateCutScene";
            if(!(_loc1_ && _loc2_))
            {
               §#_§ = 500;
            }
         }
      }
      
      private var §9-§:§6R§;
      
      private var §%!f§:Boolean;
      
      private var §;!9§:Number = 0;
      
      private var §4![§:Number = 0;
      
      private var §"X§:§-b§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            if(_loc2_)
            {
               §§goto(addr33);
            }
            §§goto(addr45);
         }
         addr33:
         §+!$§ = new §2U§(this);
         if(_loc2_ || this)
         {
            addr45:
            §+!$§.init(§=!Z§.§;K§.Views.View_CutScene[0]);
         }
      }
      
      protected function §"!o§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               §§push(this.§"X§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     §+!$§.getItemByName("MovieClip_Loading").setVisibility(true);
                     §§push(this.§"X§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!X§);
                        if(!_loc3_)
                        {
                           §§push(this.§"X§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.§5!G§);
                              §§push(this.§"X§);
                              if(_loc3_ && _loc3_)
                              {
                              }
                              addr108:
                              §§pop().addEventListener(Event.CANCEL,this.§5!G§);
                              if(!_loc3_)
                              {
                                 addr117:
                                 §§push(this.§"X§);
                                 §§push("cutscene_");
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§95§(§§pop());
                                 addr126:
                                 §§push(true);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr126);
                           }
                           §§pop().addEventListener(Event.COMPLETE,this.§-!X§);
                           addr104:
                           §§push(this.§"X§);
                           if(!_loc3_)
                           {
                              §§goto(addr108);
                           }
                           §§goto(addr117);
                        }
                        else
                        {
                           addr130:
                           §§push(false);
                        }
                        addr131:
                        return §§pop();
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     this.§2e§();
                  }
                  §§goto(addr117);
               }
               §§goto(addr108);
            }
            §§goto(addr130);
         }
         §§goto(addr104);
      }
      
      private function §-!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§"X§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(this.§"X§);
                     if(!(_loc3_ && this))
                     {
                        addr64:
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!X§);
                        §§goto(addr85);
                     }
                     §§pop().removeEventListener(Event.CANCEL,this.§5!G§);
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr71);
               }
               addr85:
               if(!_loc3_)
               {
                  addr71:
                  §§push(this.§"X§);
               }
               this.§2e§();
               return;
            }
         }
         §§goto(addr64);
      }
      
      private function §2e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §+!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§[!#§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§3p§ = §3p§.§`!t§;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§"X§);
            if(_loc4_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     _loc2_ = this.§"X§.textureManager;
                     addr73:
                     this.§9-§ = §,i§.§#!>§(_loc1_,_loc2_);
                     if(!_loc3_)
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr86);
                     addr60:
                  }
                  §§goto(addr147);
               }
               §§goto(addr73);
            }
            §§goto(addr60);
         }
         addr81:
         §§push(this.§9-§);
         if(_loc4_)
         {
            if(§§pop())
            {
               addr86:
               AngryBirdsFP11.sUserProgress.§&,§(_loc1_);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§'!V§.§1!2§);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(true);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().§-I§(§§pop());
                        addr149:
                        §§push(§'!V§.§1!2§);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(false);
                        }
                        §§pop().§&]§.addChild(this.§9-§.sprite);
                        §§goto(addr154);
                     }
                     §§pop().§?m§(§§pop());
                     §§goto(addr138);
                  }
                  §§goto(addr149);
               }
            }
            §§goto(addr149);
         }
         addr138:
         this.§9-§.update(0);
         if(!(_loc3_ && _loc2_))
         {
            addr147:
            §§push(§'!V§.§1!2§);
         }
         addr154:
      }
      
      protected function §5!G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"X§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(this.§"X§);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!X§);
                        if(_loc2_ || param1)
                        {
                           addr73:
                           this.§"X§.removeEventListener(Event.CANCEL,this.§5!G§);
                           if(!_loc3_)
                           {
                              addr80:
                              this.end();
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr80);
            }
            §§goto(addr73);
         }
         §§goto(addr80);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.activate();
         if(!this.§"X§)
         {
            if(!(_loc2_ && _loc1_))
            {
               this.§"X§ = §'!V§.§1!2§.§?!r§;
               addr34:
               §§push(§7j§.§else§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr46:
                     §7j§.§else§.color = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr90);
                  }
                  addr65:
                  this.§;!9§ = 0;
                  if(_loc3_ || _loc1_)
                  {
                     this.§4![§ = 0;
                     §+!$§.getItemByName("Button_Skip").setVisibility(false);
                     if(_loc3_ || _loc3_)
                     {
                        §+!$§.getItemByName("Button_Skip").mClip.alpha = this.§;!9§;
                        AngryBirdsFP11.§9!?§();
                        addr90:
                     }
                  }
                  this.§%!f§ = false;
                  if(_loc3_)
                  {
                     §+!$§.getItemByName("MovieClip_Loading").setVisibility(false);
                  }
                  §§push(this.§[!#§());
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  var _loc1_:* = §§pop();
                  if(_loc3_)
                  {
                     if(!this.§"!o§(_loc1_))
                     {
                        if(!_loc2_)
                        {
                           this.end();
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr46);
         }
         §§goto(addr34);
      }
      
      protected function §[!#§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§1^§.§3W§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§1^§.§'j§().§8!Z§(_loc1_ + "-OUTRO"));
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§1^§.§ ]§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc4_ || this)
                        {
                           addr93:
                           _loc1_ = §§pop();
                           if(_loc4_ || this)
                           {
                              addr101:
                              §§push(§1^§.§'j§().§8!Z§(_loc1_ + "-INTRO"));
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr119);
                           }
                           addr118:
                           addr119:
                           return §§pop();
                           §§push(_loc2_);
                        }
                        _loc2_ = §§pop();
                        §§goto(addr118);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr101);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr93);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9-§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  §§push(§'!V§.§1!2§);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().§&]§.removeChild(this.§9-§.sprite);
                     if(_loc2_ || _loc2_)
                     {
                        addr57:
                        this.§9-§.dispose();
                        if(!(_loc1_ && this))
                        {
                           addr65:
                           this.§9-§ = null;
                           if(!_loc1_)
                           {
                              addr70:
                              §§push(this.§"X§);
                              if(!(_loc1_ && this))
                              {
                                 §§goto(addr106);
                              }
                              §§pop().removeEventListener(Event.CANCEL,this.§5!G§);
                              §§goto(addr106);
                           }
                           §§goto(addr115);
                        }
                        addr106:
                        §§goto(addr108);
                     }
                     §§goto(addr65);
                  }
                  addr108:
                  if(§§pop())
                  {
                     §§push(this.§"X§);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!X§);
                        §§push(this.§"X§);
                     }
                  }
                  §'!V§.§1!2§.§?m§(true);
                  if(!_loc1_)
                  {
                     §1^§.§3W§ = null;
                     addr115:
                     super.deActivate();
                  }
                  return;
               }
               §§goto(addr70);
            }
            §§goto(addr57);
         }
         §§goto(addr70);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("SKIP");
            if(_loc5_ || param3)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param2))
                     {
                        addr86:
                        §§push(0);
                        if(!(_loc5_ || param2))
                        {
                           addr106:
                        }
                     }
                     else
                     {
                        addr98:
                        §§push(1);
                        if(_loc5_ || param1)
                        {
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr97);
            }
            addr97:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr98);
            }
            else
            {
               §§push(2);
            }
            addr111:
            switch(§§pop())
            {
               case 0:
                  this.§%!f§ = true;
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
                  addr40:
                  break;
               case 1:
                  AngryBirdsFP11.§`!d§.§!5§();
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr40);
                  }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§4![§);
            if(!_loc3_)
            {
               if(§§pop() > §#_§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §+!$§.getItemByName("Button_Skip").setVisibility(true);
                     §§push(this);
                     §§push(this.§;!9§);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§;!9§ = §§pop();
                     §+!$§.getItemByName("Button_Skip").mClip.alpha = this.§;!9§;
                     if(_loc4_)
                     {
                        addr65:
                        if(this.§;!9§ > 1)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr74:
                              this.§;!9§ = 1;
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr110);
               }
               else
               {
                  §§push(this);
                  §§push(this.§4![§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§4![§ = §§pop();
               }
               addr101:
               if(this.§%!f§)
               {
                  if(!_loc3_)
                  {
                     addr106:
                     this.end();
                     if(!_loc3_)
                     {
                        §§goto(addr110);
                     }
                  }
                  addr110:
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
               §§push(super.run(param1));
               if(!(_loc3_ && param1))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
                     {
                        return _loc2_;
                     }
                     else
                     {
                        if(mNextState.length > 0)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr141);
                           }
                        }
                        §§push(this.§9-§);
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       addr175:
                                       §§push(this.§9-§.update(param1));
                                       if(!(_loc3_ && param1))
                                       {
                                          §§goto(addr185);
                                       }
                                       addr185:
                                       §§goto(addr184);
                                    }
                                    §§goto(addr188);
                                 }
                                 addr184:
                                 if(!§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr188:
                                       this.end();
                                    }
                                 }
                                 return §;!!§.STATE_STATUS_RUNNING;
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr175);
                     }
                  }
                  return §§pop();
               }
               addr141:
               return §;!!§.STATE_STATUS_COMPLETED;
            }
            §§goto(addr65);
         }
         §§goto(addr106);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc3_)
         {
            §§push(this.§9-§);
            if(_loc2_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this.§9-§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().§+G§);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(§6R§.§4!0§);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_)
                                       {
                                          §§goto(addr81);
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr150);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr129);
               }
               addr81:
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §?&§.§3d§ = StateCutScene.STATE_NAME;
                     if(_loc2_ || _loc3_)
                     {
                        mNextState = §?&§.STATE_NAME;
                        if(!(_loc3_ && this))
                        {
                           addr116:
                        }
                        else
                        {
                           addr198:
                        }
                     }
                     else
                     {
                        addr161:
                     }
                  }
               }
               else
               {
                  §§push(this.§9-§);
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_ || _loc1_)
                     {
                        addr129:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(_loc2_ || _loc1_)
                              {
                                 addr143:
                                 §§push(this.§9-§.§+G§);
                                 if(_loc2_)
                                 {
                                    addr149:
                                    if(§§pop() == §6R§.§!!J§)
                                    {
                                       addr150:
                                       mNextState = §?!M§.STATE_NAME;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§goto(addr161);
                                       }
                                       §§goto(addr203);
                                    }
                                    else
                                    {
                                       §§push(§1^§.§ ]§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             _loc1_ = §§pop();
                                             §§push(_loc1_);
                                          }
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                                 if(§§pop())
                                 {
                                    mNextState = this.§0H§();
                                    if(!(_loc3_ && this))
                                    {
                                       §§goto(addr198);
                                    }
                                 }
                                 else
                                 {
                                    mNextState = §?&§.STATE_NAME;
                                 }
                              }
                              §§goto(addr203);
                           }
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr143);
               }
               addr203:
               return;
            }
            §§goto(addr143);
         }
         §§goto(addr116);
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
   }
}
