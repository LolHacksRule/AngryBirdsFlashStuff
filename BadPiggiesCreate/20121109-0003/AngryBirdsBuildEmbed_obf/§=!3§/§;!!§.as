package §=!3§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §#!4§.§+!S§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §;!!§
   {
      
      public static const § [§:int = 60;
      
      public static const §!3§:String = "dummyState";
      
      public static const §#!Q§:int = 0;
      
      public static const §8K§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[e§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!3§ = "dummyState";
            if(_loc2_)
            {
               addr37:
               §#!Q§ = 0;
               §8K§ = 1;
            }
            STATE_STATUS_RUNNING = 2;
            STATE_STATUS_COMPLETED = 3;
            §[e§ = null;
            return;
         }
         §§goto(addr37);
      }
      
      public var §?P§:Boolean = false;
      
      public var §8W§:Boolean = false;
      
      public var mName:String;
      
      public var §=u§:Boolean = false;
      
      public var §@!q§:Boolean = false;
      
      public var §+!$§:§2U§;
      
      public var §'!M§:Array;
      
      public var mNextState:String = "";
      
      public var §>E§:Sprite = null;
      
      public var §7'§:§=!p§ = null;
      
      public function §;!!§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(!(_loc4_ && param2))
         {
            this.mName = param2;
            this.§'!M§ = new Array();
            this.§>E§ = new Sprite();
            if(_loc3_)
            {
               addr48:
               if(param1)
               {
                  if(!(_loc4_ && param1))
                  {
                     this.init();
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public static function § !<§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§[e§)
            {
               if(_loc3_ || §;!!§)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §[e§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§?P§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2U§ = null;
         if(!(_loc4_ && this))
         {
            if(!this.§?P§)
            {
               if(!(_loc4_ && _loc1_))
               {
                  this.init();
                  if(_loc5_ || this)
                  {
                     addr46:
                     §§push(this.§+!$§);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr53:
                              this.§>E§.addChild(this.§+!$§);
                              §§goto(addr78);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr78);
                     }
                     §§pop().§[T§();
                  }
                  addr78:
                  if(!(_loc4_ && this))
                  {
                     addr75:
                     §§push(this.§+!$§);
                  }
                  var _loc3_:* = this.§'!M§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        this.§>E§.addChild(_loc1_);
                        if(_loc5_ || this)
                        {
                           _loc1_.§=N§();
                        }
                     }
                  }
                  if(!(_loc4_ && _loc1_))
                  {
                     this.mNextState = "";
                     if(_loc5_ || this)
                     {
                        this.§8W§ = true;
                     }
                  }
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr46);
         }
         §§goto(addr75);
      }
      
      public function §+R§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2U§ = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§+!$§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr36:
                     this.§+!$§.§=N§();
                     if(!_loc4_)
                     {
                        this.§>E§.removeChild(this.§+!$§);
                     }
                  }
               }
               var _loc3_:* = this.§'!M§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && this))
                  {
                     _loc1_.§=N§();
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§>E§.removeChild(_loc1_);
                     }
                  }
               }
               if(_loc5_ || _loc1_)
               {
                  §§push(this.§8W§);
                  if(!(_loc4_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(this.§@!q§);
                           if(!_loc4_)
                           {
                              addr129:
                              if(!§§pop())
                              {
                              }
                              §§goto(addr132);
                           }
                           else
                           {
                              §§goto(addr147);
                           }
                        }
                        this.cleanup();
                        addr132:
                        return;
                     }
                     this.§8W§ = false;
                     if(_loc5_)
                     {
                        addr147:
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr150:
                              this.cleanup();
                           }
                        }
                        return;
                        §§push(this.§@!q§);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr36);
      }
      
      public function §5!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!q§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§?P§)
            {
               if(_loc2_)
               {
                  return;
               }
               addr64:
               this.§+!$§ = null;
            }
            else
            {
               addr32:
               §§push(this.§+!$§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     addr67:
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.§+!$§);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(this.§'!M§);
                        while(true)
                        {
                           if(§§pop().length > 0)
                           {
                              §§push(this.§'!M§);
                              if(_loc2_ || this)
                              {
                                 (§§pop().pop() as §2U§).clear();
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           if(!_loc1_)
                           {
                              if(this.§8W§)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr116:
                                    this.deActivate();
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr125:
                                       this.§?P§ = false;
                                       break;
                                    }
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr116);
                        }
                        return;
                     }
                  }
                  §§goto(addr67);
               }
               §§pop().clear();
               if(_loc2_ || this)
               {
                  §§goto(addr64);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr32);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§?P§);
         if(_loc3_)
         {
            if(!§§pop())
            {
               if(!(_loc2_ && param1))
               {
                  §§push(§`![§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc3_)
                  {
                     §§push(§#!Q§);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr80);
                  }
                  §§goto(addr93);
               }
               §§goto(addr80);
            }
            else
            {
               addr72:
               if(!this.§8W§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr80:
                     §§push(§`![§);
                     §§push("WARNING: State -> run() method is called when state is not active: ");
                     if(_loc3_)
                     {
                        §§push(§§pop() + this.mName);
                     }
                     §§pop().log(§§pop());
                     if(!_loc2_)
                     {
                        §§push(§8K§);
                        if(_loc3_)
                        {
                           addr93:
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr94:
                        §§push(STATE_STATUS_RUNNING);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr94);
         }
         §§goto(addr72);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=u§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §%!0§(param1:§2U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!M§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§>E§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>E§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§>E§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§7'§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               return 0;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§7'§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§7'§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr48);
                  }
               }
               return 0;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§7'§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§+!$§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr56:
                     §§push(this.§+!$§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(param1);
                        if(!(_loc3_ && param1))
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr85);
                        }
                        §§pop().viewHeight = §§pop();
                     }
                     §§goto(addr83);
                  }
               }
               addr85:
               if(_loc4_ || this)
               {
                  addr83:
                  §§push(this.§+!$§);
                  §§push(param2);
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr56);
      }
      
      public function getTargetFrameRate() : int
      {
         return § [§;
      }
   }
}
