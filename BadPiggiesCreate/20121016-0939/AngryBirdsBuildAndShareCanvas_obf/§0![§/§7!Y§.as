package §0![§
{
   import § "@§.§%!3§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §="6§.§^"8§;
   import §[!w§.§4!i§;
   
   public class §7!Y§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndFailStateBS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "LevelEndFailStateBS";
         }
      }
      
      private var §?!+§:§4!i§;
      
      public function §7!Y§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         do
         {
            §?E§ = new §'s§(this);
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailBS[0]);
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §=!X§.pause();
            while(true)
            {
               this.§?!+§ = new §4!i§(0,0,0,0);
               addr80:
               while(!_loc2_)
               {
                  §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
                  continue loop0;
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§?!+§);
               while(§§pop())
               {
                  if(!_loc1_)
                  {
                     if(§?E§.movieClip.contains(this.§?!+§))
                     {
                        if(!_loc1_)
                        {
                           §?E§.movieClip.removeChild(this.§?!+§);
                           addr96:
                           while(true)
                           {
                           }
                           addr96:
                        }
                        §§goto(addr96);
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§?!+§);
                        if(_loc1_)
                        {
                           break;
                        }
                        §§pop().clean();
                        while(true)
                        {
                           this.§?!+§ = null;
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
               addr25:
               return;
            }
         }
         §§goto(addr66);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ || this))
                     {
                        if(_loc4_)
                        {
                           addr72:
                           break;
                        }
                        addr89:
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return §5y§.STATE_STATUS_COMPLETED;
                     }
                     continue;
                     return _loc2_;
                  }
                  return §5y§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr89);
         }
         §§goto(addr72);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            if("REPLAY" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc6_ && param1)
                  {
                     addr175:
                  }
               }
               else
               {
                  addr181:
                  §§push(3);
                  if(_loc6_)
                  {
                     addr193:
                  }
               }
            }
            else if("MENU" === _loc4_)
            {
               if(!(_loc6_ && param2))
               {
                  §§push(1);
                  if(!_loc5_)
                  {
                     addr215:
                  }
               }
               else
               {
                  addr190:
                  §§push(4);
                  if(!_loc6_)
                  {
                     §§goto(addr193);
                  }
               }
            }
            else if("FULLSCREEN_BUTTON" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(2);
                  if(!_loc6_)
                  {
                     §§goto(addr175);
                  }
               }
               else
               {
                  §§goto(addr190);
               }
            }
            else
            {
               if("LIKE" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr181);
                  }
               }
               else if("SHARE" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr190);
                  }
               }
               else if("NEXT" !== _loc4_)
               {
                  addr220:
                  switch(§§pop())
                  {
                     case 0:
                        §%!3§.§4[§(StatePlayBS.§'=§);
                        mNextState = §%!3§.§'=§;
                        addr121:
                        break;
                        addr121:
                        addr128:
                     case 1:
                        §4m§.doJsCall("onLevelMenuOpened");
                        mNextState = §^! §.§'=§;
                        addr91:
                        if(!(_loc6_ && param1))
                        {
                           break;
                        }
                        §§goto(addr121);
                        break;
                        addr115:
                     case 2:
                        §4m§.doJsCall("onFullscreenToggle");
                        break;
                        addr85:
                     case 3:
                        §4m§.doJsCall("onLevelLiked");
                        if(_loc5_ || param2)
                        {
                           break;
                        }
                        break;
                     case 4:
                        §4m§.doJsCall("onLevelShared");
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              addr38:
                              break;
                           }
                           §§goto(addr115);
                        }
                        break;
                     case 5:
                        §4m§.doJsCall("onNextLevel");
                        addr44:
                        if(_loc5_)
                        {
                           if(!(_loc6_ && this))
                           {
                              break;
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           §§goto(addr85);
                        }
                        break;
                     default:
                        super.uiInteractionHandler(param1,param2,param3);
                        if(_loc5_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr38);
                              }
                              else
                              {
                                 §§goto(addr91);
                              }
                           }
                           else
                           {
                              §§goto(addr44);
                           }
                           §§goto(addr121);
                        }
                  }
                  return;
                  §§push(6);
               }
               §§goto(addr220);
               if(!(_loc6_ && param3))
               {
                  §§goto(addr215);
               }
            }
            §§goto(addr220);
         }
         §§goto(addr190);
      }
      
      public function §!!G§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§^"8§.§7K§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() is §]!B§)
               {
                  if(!_loc3_)
                  {
                     addr59:
                     (§^"8§.§7K§ as §]!B§).§=p§ = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr59);
      }
   }
}
