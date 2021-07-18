package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!]§.§]!v§;
   import §<i§.§-"?§;
   import §@y§.§0=§;
   
   public class §7!r§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndFailStateBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!Q§ = "LevelEndFailStateBS";
         }
      }
      
      private var §<E§:§]!v§;
      
      public function §7!r§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
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
         if(!_loc2_)
         {
            super.init();
            do
            {
               §`!v§ = new §>!V§(this);
               do
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailBS[0]);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               §'_§.pause();
               do
               {
                  this.§<E§ = new §]!v§(0,0,0,0);
                  do
                  {
                     §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
                     continue loop0;
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc1_ || _loc2_));
               
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§<E§);
               loop1:
               for(; §§pop(); while(true)
               {
                  §§push(this.§<E§);
                  if(!(_loc2_ || this))
                  {
                     break;
                  }
                  §§pop().clean();
               })
               {
                  while(true)
                  {
                     if(§`!v§.movieClip.contains(this.§<E§))
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
               addr20:
               return;
            }
         }
         §§goto(addr58);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     while(true)
                     {
                        addr54:
                        if(!(_loc4_ && param1))
                        {
                           return §'B§.STATE_STATUS_COMPLETED;
                        }
                     }
                     addr90:
                  }
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        addr64:
                        break;
                     }
                     §§goto(addr54);
                  }
                  break;
                  §§goto(addr90);
               }
               return §'B§.STATE_STATUS_RUNNING;
            }
            addr89:
            return _loc2_;
         }
         §§goto(addr64);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("REPLAY" === _loc4_)
            {
               if(_loc6_ || param2)
               {
                  §§push(0);
                  if(_loc5_ && param2)
                  {
                     addr165:
                  }
               }
               else
               {
                  addr144:
                  §§push(1);
                  if(_loc5_)
                  {
                  }
               }
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr144);
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     addr153:
                     §§push(2);
                     if(_loc5_)
                     {
                        addr184:
                     }
                     §§goto(addr211);
                  }
                  else
                  {
                     addr162:
                     §§push(3);
                     if(_loc6_)
                     {
                        §§goto(addr165);
                     }
                     else
                     {
                        addr206:
                        §§goto(addr211);
                     }
                  }
               }
               else if("LIKE" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr162);
                  }
                  else
                  {
                     addr176:
                     §§push(4);
                     if(_loc6_ || param1)
                     {
                        §§goto(addr184);
                     }
                     §§goto(addr211);
                  }
               }
               else
               {
                  if("SHARE" === _loc4_)
                  {
                     if(_loc6_ || this)
                     {
                        §§goto(addr176);
                     }
                  }
                  else if("NEXT" !== _loc4_)
                  {
                     addr211:
                     switch(§§pop())
                     {
                        case 0:
                           §@"0§.§%P§(StatePlayBS.§%!Q§);
                           loop0:
                           while(true)
                           {
                              mNextState = §@"0§.§%!Q§;
                              addr95:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        case 1:
                           §?s§.doJsCall("onLevelMenuOpened");
                           addr87:
                           if(!_loc5_)
                           {
                              mNextState = §&y§.§%!Q§;
                              break;
                              addr80:
                           }
                           else
                           {
                              §§goto(addr95);
                           }
                           break;
                        case 2:
                           §?s§.doJsCall("onFullscreenToggle");
                           addr72:
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr80);
                           break;
                        case 3:
                           §?s§.doJsCall("onLevelLiked");
                           break;
                           addr65:
                        case 4:
                           §?s§.doJsCall("onLevelShared");
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 addr30:
                                 break;
                              }
                              §§goto(addr87);
                           }
                           break;
                        case 5:
                           §?s§.doJsCall("onNextLevel");
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    break;
                                 }
                                 §§goto(addr72);
                              }
                              else
                              {
                                 §§goto(addr65);
                              }
                           }
                           break;
                        default:
                           super.uiInteractionHandler(param1,param2,param3);
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr30);
                           }
                     }
                     return;
                     §§push(6);
                  }
                  §§goto(addr211);
               }
               §§goto(addr211);
               if(_loc6_ || this)
               {
                  §§goto(addr206);
               }
            }
            §§goto(addr211);
         }
         §§goto(addr153);
      }
      
      public function §6<§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§-"#§.§3"=§);
            if(!(_loc3_ && param1))
            {
               if(§§pop() is §-"?§)
               {
                  if(!_loc3_)
                  {
                     addr54:
                     (§-"#§.§3"=§ as §-"?§).§9e§ = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
   }
}
