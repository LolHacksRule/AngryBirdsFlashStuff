package § !u§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §+]§.§try§;
   import §@!i§.StateLevelEditor;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §&Z§ extends §2U§
   {
       
      
      private const §=<§:Number = 1.5;
      
      private var §@!?§:§9§;
      
      public function §&Z§(param1:StateLevelEditor)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super(param1);
         init(§=!Z§.§;K§.Views.View_LevelEditor[0]);
         if(!_loc2_)
         {
            (getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.§`O§);
            if(!(_loc2_ && _loc2_))
            {
               (getItemByName("Button_ToolSelect") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            (getItemByName("Button_ToolPan") as §#!'§).setComponentState(§<f§.§`O§);
            this.§@!?§ = new §9§(this);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("SELECT_CATEGORY");
            if(_loc6_ || param3)
            {
               §§push(_loc4_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                           addr188:
                        }
                     }
                     else
                     {
                        addr226:
                        §§push(3);
                        if(!(_loc6_ || param2))
                        {
                           addr256:
                        }
                     }
                  }
                  else
                  {
                     §§push("NEXT_PAGE");
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_);
                        if(_loc6_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 §§push(1);
                                 if(_loc6_ || param3)
                                 {
                                    §§goto(addr188);
                                 }
                                 §§goto(addr261);
                              }
                              else
                              {
                                 §§goto(addr208);
                              }
                           }
                           else
                           {
                              §§push("PREVIOUS_PAGE");
                              if(!(_loc5_ && param1))
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr208:
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                          }
                                          §§goto(addr261);
                                       }
                                       else
                                       {
                                          §§goto(addr226);
                                       }
                                    }
                                    else
                                    {
                                       §§push("CLOSE_INVENTORY");
                                       if(_loc5_)
                                       {
                                       }
                                       addr247:
                                       if(§§pop() === _loc4_)
                                       {
                                          addr248:
                                          §§push(4);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr256);
                                          }
                                          §§goto(addr261);
                                       }
                                       else
                                       {
                                          addr261:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(this.§@!?§);
                                                if(!(_loc6_ || param3))
                                                {
                                                   addr100:
                                                   §§pop().§?!#§(param3 as §#!'§);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   break;
                                                }
                                                §§pop().§?!#§(param3 as §#!'§);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                addr97:
                                                addr106:
                                                break;
                                             case 1:
                                                §§push(this.§@!?§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(1);
                                                   if(_loc5_)
                                                   {
                                                      addr68:
                                                      §§pop().§%8§(§§pop());
                                                      break;
                                                   }
                                                   §§pop().§%8§(§§pop());
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr97);
                                                }
                                                else
                                                {
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr106);
                                             case 2:
                                                §§push(this.§@!?§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§goto(addr68);
                                                   §§push(-1);
                                                }
                                                else
                                                {
                                                   §§goto(addr100);
                                                }
                                                break;
                                             case 3:
                                                this.§7$§();
                                                break;
                                             case 4:
                                                if((param3 as §#!'§).§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§@!?§);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§pop().§-!#§(param3 as §#!'§);
                                                         §§goto(addr97);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr100);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§push(this.§@!?§);
                                                §§goto(addr100);
                                          }
                                          super.listenerEventOccured(param1,param2,param3);
                                          return;
                                          §§push(5);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr261);
                                 }
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr247);
                     }
                     §§push(_loc4_);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc6_)
                           {
                              §§goto(addr226);
                           }
                           §§goto(addr261);
                        }
                        else
                        {
                           §§goto(addr247);
                           §§push("TOGGLE_CATEGORY");
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr261);
               }
            }
            §§goto(addr247);
         }
         §§goto(addr226);
      }
      
      public function §7$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@!?§.§?!#§(null);
         }
      }
      
      public function §<!o§() : Boolean
      {
         return this.§@!?§.isOpen();
      }
      
      public function §?!#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@!?§.§?!#§(getItemByName(param1) as §#!'§);
         }
      }
      
      public function §]B§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§@!?§.§]B§(param1);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         var _loc2_:MovieClip = getItemByName("Background_Stars").mClip;
         if(_loc5_ || _loc3_)
         {
            _loc2_.height = 0;
         }
         _loc2_ = getItemByName("Background_Inventory").mClip;
         if(_loc5_)
         {
            _loc2_.height = 0;
         }
         var _loc3_:§[!s§ = getItemByName("Container_PageButtons") as §[!s§;
         var _loc4_:int = _loc3_.y + _loc3_.height + 7 - _loc2_.y;
         _loc2_ = getItemByName("Background_Inventory").mClip;
         if(_loc5_ || _loc3_)
         {
            _loc2_.height = _loc4_;
         }
         _loc2_ = getItemByName("Background_Stars").mClip;
         if(!_loc6_)
         {
            _loc2_.height = _loc4_;
            if(_loc5_)
            {
               this.§@!?§.§#!%§(new Rectangle(3,90,_loc2_.width,_loc2_.height - 100));
               if(_loc5_ || _loc3_)
               {
               }
               §§goto(addr140);
            }
            (§+&§ as §try§).§<!1§();
         }
         addr140:
      }
   }
}
