package § !@§
{
   import §&p§.§-r§;
   import §&p§.§^!C§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §9K§.§5!H§;
   import §9K§.§`!H§;
   import §=!0§.§>I§;
   import flash.events.Event;
   
   public class StateCutScene extends §1Q§
   {
      
      public static const §>9§:String = "StateCutScene";
      
      private static const §!!3§:Number = 500;
      
      protected static var §0!<§:Boolean;
      
      protected static var §?!6§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §>9§ = "StateCutScene";
            if(_loc2_)
            {
               addr29:
               §!!3§ = 500;
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected var §,y§:§-r§;
      
      private var §'2§:Boolean;
      
      private var §]3§:Number = 0;
      
      private var §6-§:Number = 0;
      
      private var §#!G§:§`!H§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function § #§(param1:Boolean, param2:int = -2147483648) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || StateCutScene)
         {
            §0!<§ = param1;
            if(_loc4_ || StateCutScene)
            {
               §?!6§ = param2;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            if(!_loc2_)
            {
               §]F§ = new §4!,§(this);
               if(!_loc2_)
               {
                  addr44:
                  §]F§.init(§5A§.§;L§.Views.View_CutScene[0]);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §'u§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               addr25:
               §§push(this.§#!G§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     §]F§.getItemByName("MovieClip_Loading").setVisibility(true);
                     if(_loc2_)
                     {
                        §§push(this.§#!G§);
                        if(_loc2_)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§?p§);
                           §§push(this.§#!G§);
                           if(!_loc3_)
                           {
                              addr65:
                              §§pop().removeEventListener(Event.CANCEL,this.§=B§);
                              §§push(this.§#!G§);
                              if(!_loc3_)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§?p§);
                                 addr89:
                                 §§push(this.§#!G§);
                                 if(_loc2_)
                                 {
                                    §§goto(addr93);
                                 }
                                 §§goto(addr102);
                              }
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     this.§ '§();
                     if(!_loc3_)
                     {
                        §§goto(addr102);
                     }
                     else
                     {
                        §§goto(addr117);
                     }
                     return §§pop();
                  }
                  §§goto(addr117);
               }
               §§goto(addr65);
            }
            §§goto(addr117);
         }
         §§goto(addr25);
      }
      
      private function §?p§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§#!G§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§#!G§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr69);
                     }
                  }
               }
               §§goto(addr83);
            }
            addr69:
            §§pop().removeEventListener(Event.COMPLETE,this.§?p§);
            if(_loc2_ || this)
            {
               addr83:
               this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
               if(_loc2_ || param1)
               {
               }
               §§goto(addr97);
            }
            this.§ '§();
            addr97:
            return;
         }
         §§goto(addr83);
      }
      
      protected function § '§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §]F§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§0!A§());
         if(_loc3_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§5!H§ = §5!H§.§@6§;
         §§push(this.§#!G§);
         if(!_loc4_)
         {
            if(§§pop())
            {
               addr50:
               _loc2_ = this.§#!G§.textureManager;
            }
            this.§,y§ = §^!C§.§`T§(_loc1_,_loc2_);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§,y§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     AngryBirdsFP11.sUserProgress.§]0§(_loc1_);
                     addr90:
                     §§push(§=w§.§ o§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(true);
                        if(_loc3_)
                        {
                           §§pop().§7!E§(§§pop());
                           if(_loc3_)
                           {
                              §§push(§=w§.§ o§);
                              if(_loc3_)
                              {
                                 addr120:
                                 §§pop().§&!B§(false);
                                 if(_loc3_)
                                 {
                                    addr125:
                                    this.§,y§.update(0);
                                    §§goto(addr136);
                                 }
                                 §§goto(addr129);
                              }
                              §§pop().§^m§.addChild(this.§,y§.sprite);
                              §§goto(addr136);
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr120);
                  }
                  addr136:
                  if(!_loc4_)
                  {
                     addr129:
                     §§push(§=w§.§ o§);
                  }
                  return;
               }
               §§goto(addr125);
            }
            §§goto(addr90);
         }
         §§goto(addr50);
      }
      
      protected function §=B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§#!G§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§#!G§);
                     if(_loc3_ || this)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§?p§);
                        if(!_loc2_)
                        {
                           addr69:
                           this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
                           if(_loc3_ || param1)
                           {
                              addr81:
                              this.end();
                           }
                        }
                     }
                     §§goto(addr69);
                  }
                  return;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr69);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.activate();
         if(!this.§#!G§)
         {
            if(_loc3_ || _loc1_)
            {
               this.§#!G§ = §=w§.§ o§.§&!3§;
               addr34:
               §§push(§>I§.§`S§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr48:
                        §>I§.§`S§.color = 0;
                        addr50:
                        this.§]3§ = 0;
                        if(!_loc2_)
                        {
                           this.§6-§ = 0;
                           if(!(_loc2_ && _loc3_))
                           {
                              §]F§.getItemByName("Button_Skip").setVisibility(false);
                           }
                        }
                        §]F§.getItemByName("Button_Skip").mClip.alpha = this.§]3§;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr94:
                           AngryBirdsFP11.§#!5§();
                           if(_loc3_ || this)
                           {
                              addr103:
                              this.§'2§ = false;
                              if(!(_loc2_ && _loc1_))
                              {
                                 §]F§.getItemByName("MovieClip_Loading").setVisibility(false);
                              }
                           }
                           §§push(this.§0!A§());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop());
                           }
                           var _loc1_:* = §§pop();
                           if(_loc3_)
                           {
                              if(!this.§'u§(_loc1_))
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr152:
                                    this.end();
                                 }
                              }
                              return;
                           }
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr50);
               }
               §§goto(addr48);
            }
            §§goto(addr94);
         }
         §§goto(addr34);
      }
      
      protected function §0!A§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§[4§.§ !7§);
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§[4§.§5C§().§1w§(_loc1_ + "-OUTRO"));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr66:
                     §§push(§[4§.§"!>§);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              addr91:
                              §§push(§[4§.§5C§().§1w§(_loc1_ + "-INTRO"));
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    addr107:
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                 }
                              }
                           }
                           §§goto(addr107);
                        }
                        return §§pop();
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr66);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§,y§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  §§push(§=w§.§ o§);
                  if(_loc1_)
                  {
                     §§pop().§^m§.removeChild(this.§,y§.sprite);
                     if(!_loc2_)
                     {
                        addr46:
                        this.§,y§.dispose();
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§,y§ = null;
                           if(_loc1_)
                           {
                              addr69:
                              §§push(this.§#!G§);
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(this.§#!G§);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr83:
                                       §§pop().removeEventListener(Event.COMPLETE,this.§?p§);
                                       §§goto(addr126);
                                    }
                                    §§pop().removeEventListener(Event.CANCEL,this.§=B§);
                                    addr114:
                                    §=w§.§ o§.§&!B§(true);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr83);
                           }
                           addr112:
                           if(_loc1_ || _loc1_)
                           {
                              §[4§.§ !7§ = null;
                              §§goto(addr126);
                           }
                           addr126:
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(this.§#!G§);
                           }
                           super.deActivate();
                           return;
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr114);
               }
               §§goto(addr69);
            }
            §§goto(addr46);
         }
         §§goto(addr114);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("SKIP");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param3)
                     {
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(1);
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     addr87:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr89);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr89);
               }
               else
               {
                  §§push(2);
               }
               addr102:
               switch(§§pop())
               {
                  case 0:
                     this.§'2§ = true;
                     if(_loc6_ || this)
                     {
                        break;
                     }
                     addr36:
                     break;
                  case 1:
                     AngryBirdsFP11.§ y§.§-!$§();
                     if(_loc6_)
                     {
                        §§goto(addr36);
                     }
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§6-§);
         if(_loc4_ || _loc3_)
         {
            if(§§pop() > §!!3§)
            {
               if(!_loc3_)
               {
                  §]F§.getItemByName("Button_Skip").setVisibility(!§0!<§);
                  if(!_loc3_)
                  {
                     §§push(this);
                     §§push(this.§]3§);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§]3§ = §§pop();
                     §]F§.getItemByName("Button_Skip").mClip.alpha = this.§]3§;
                     if(_loc3_ && _loc2_)
                     {
                     }
                     §§goto(addr112);
                  }
                  addr71:
                  if(this.§]3§ > 1)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§]3§ = 1;
                        if(_loc4_)
                        {
                           addr104:
                           if(this.§'2§)
                           {
                              this.end();
                           }
                           else
                           {
                              §§goto(addr112);
                           }
                           addr85:
                        }
                     }
                     return §1Q§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr85);
               }
               addr112:
               §§push(super.run(param1));
               if(!(_loc3_ && this))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(_loc2_);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
                  {
                     return _loc2_;
                  }
                  else
                  {
                     if(mNextState.length > 0)
                     {
                        return §1Q§.STATE_STATUS_COMPLETED;
                     }
                     §§push(§0!<§);
                     if(!(_loc3_ && param1))
                     {
                        if(!§§pop())
                        {
                           §§push(this.§,y§);
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_ || _loc2_)
                              {
                                 addr175:
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§pop();
                                       §§goto(addr202);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 this.end();
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr194);
                        }
                        addr202:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr194:
                           §§push(this.§,y§.update(param1));
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        return §1Q§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr175);
                  }
               }
               return §§pop();
            }
            §§push(this);
            §§push(this.§6-§);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§6-§ = §§pop();
            §§goto(addr104);
         }
         §§goto(addr71);
      }
      
      protected function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc3_)
         {
            §§push(this.§,y§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr44:
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(this.§,y§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop().§"Z§);
                                 if(!_loc3_)
                                 {
                                    §§push(§-r§.§02§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc3_)
                                       {
                                          §§goto(addr66);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr109);
                     }
                     addr66:
                     if(§§pop())
                     {
                        §6!@§.§]t§ = StateCutScene.§>9§;
                        if(!_loc3_)
                        {
                           mNextState = this.§[A§();
                           addr174:
                           § #§(false);
                           addr87:
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        §§push(this.§,y§);
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_ || this)
                           {
                              addr101:
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr109);
                        }
                        addr109:
                        §§pop();
                        §§push(this.§,y§.§"Z§);
                        if(_loc2_ || _loc3_)
                        {
                           addr123:
                           if(§§pop() == §-r§.§>A§)
                           {
                              mNextState = §8!M§.§>9§;
                           }
                           else
                           {
                              §§push(§[4§.§"!>§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr151:
                                    _loc1_ = §§pop();
                                    if(_loc2_)
                                    {
                                       §§goto(addr155);
                                    }
                                    mNextState = this.§]!-§();
                                    §§goto(addr167);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr174);
                        }
                        addr155:
                        if(_loc1_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                           }
                           addr167:
                           §§goto(addr174);
                        }
                        else
                        {
                           mNextState = this.§[A§();
                           if(!_loc3_)
                           {
                              §§goto(addr174);
                           }
                           §§goto(addr177);
                        }
                     }
                     addr177:
                     return;
                  }
                  §§goto(addr101);
               }
               §§goto(addr44);
            }
            §§goto(addr109);
         }
         §§goto(addr167);
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
   }
}
