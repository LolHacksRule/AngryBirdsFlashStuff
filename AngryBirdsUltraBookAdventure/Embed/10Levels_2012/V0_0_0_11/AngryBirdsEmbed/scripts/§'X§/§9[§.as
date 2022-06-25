package §'X§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §@s§.§'!0§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §9[§
   {
      
      public static const §9!2§:int = 60;
      
      public static const §2Z§:String = "dummyState";
      
      public static const §0s§:int = 0;
      
      public static const § !+§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §=l§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9[§))
         {
            §2Z§ = "dummyState";
            §0s§ = 0;
            if(!_loc2_)
            {
               addr44:
               § !+§ = 1;
               STATE_STATUS_RUNNING = 2;
               STATE_STATUS_COMPLETED = 3;
               §=l§ = null;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public var § !G§:Boolean = false;
      
      public var §9l§:Boolean = false;
      
      public var mName:String;
      
      public var § each§:Boolean = false;
      
      public var §#Z§:Boolean = false;
      
      public var §#!4§:§!!1§;
      
      public var §<;§:Array;
      
      public var mNextState:String = "";
      
      public var §0W§:Sprite = null;
      
      public var §4!=§:§%y§ = null;
      
      public function §9[§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_)
         {
            this.mName = param2;
            if(!(_loc4_ && _loc3_))
            {
               this.§<;§ = new Array();
               if(_loc3_)
               {
                  this.§0W§ = new Sprite();
                  if(param1)
                  {
                     if(_loc3_)
                     {
                        this.init();
                     }
                  }
               }
            }
         }
      }
      
      public static function §while§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§=l§)
            {
               if(_loc3_ || param1)
               {
                  return §=l§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ !G§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§!!1§ = null;
         if(_loc4_)
         {
            if(!this.§ !G§)
            {
               if(!_loc5_)
               {
                  this.init();
                  if(_loc4_)
                  {
                     addr30:
                     §§push(this.§#!4§);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§0W§.addChild(this.§#!4§);
                              addr42:
                              if(_loc4_)
                              {
                                 addr61:
                                 this.§#!4§.§+,§();
                                 addr59:
                              }
                           }
                           §§goto(addr59);
                        }
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§<;§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§0W§.addChild(_loc1_);
                              if(_loc4_ || _loc2_)
                              {
                                 _loc1_.§=Q§();
                              }
                           }
                        }
                        if(!_loc5_)
                        {
                           this.mNextState = "";
                           if(_loc4_)
                           {
                              addr116:
                              this.§9l§ = true;
                           }
                           return;
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr42);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr30);
      }
      
      public function §,!G§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§!!1§ = null;
         if(_loc5_)
         {
            §§push(this.§#!4§);
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().§=Q§();
            if(_loc5_ || _loc2_)
            {
               this.§0W§.removeChild(this.§#!4§);
            }
         }
         addr59:
         if(!_loc4_)
         {
            §§push(this.§#!4§);
         }
         var _loc3_:* = this.§<;§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc1_.§=Q§();
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§0W§.removeChild(_loc1_);
         }
         §§push(this.§9l§);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               §§push(this.§#Z§);
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr110);
               }
            }
            else
            {
               this.§9l§ = false;
               §§push(this.§#Z§);
            }
            if(§§pop())
            {
               this.cleanup();
            }
            return;
         }
         addr110:
         if(§§pop())
         {
            this.cleanup();
         }
      }
      
      public function §<Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#Z§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§ !G§)
            {
               if(!_loc1_)
               {
                  return;
               }
               addr49:
               §§push(this.§#!4§);
            }
            else
            {
               §§push(this.§#!4§);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§goto(addr49);
                     }
                  }
                  addr57:
                  loop0:
                  while(true)
                  {
                     §§push(this.§<;§);
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           §§goto(addr101);
                        }
                        §§push(this.§<;§);
                        if(_loc2_)
                        {
                           (§§pop().pop() as §!!1§).clear();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     if(this.§9l§)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr101);
                        }
                        addr101:
                        this.deActivate();
                        if(_loc2_)
                        {
                           addr105:
                           this.§ !G§ = false;
                        }
                        return;
                     }
                     §§goto(addr105);
                  }
               }
            }
            §§pop().clear();
            if(!_loc1_)
            {
               addr54:
               this.§#!4§ = null;
            }
            §§goto(addr57);
         }
         §§goto(addr54);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !G§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  §§push(§#y§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(§0s§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr83:
                     §§push(§ !+§);
                     if(_loc2_)
                     {
                        §§goto(addr88);
                     }
                  }
                  return §§pop();
               }
               addr72:
               if(!this.§9l§)
               {
                  if(!_loc2_)
                  {
                     §§push(§#y§);
                     §§push("WARNING: State -> run() method is called when state is not active: ");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this.mName);
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(STATE_STATUS_RUNNING);
               }
               addr88:
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr83);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§ each§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
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
      
      public function §0!"§(param1:§!!1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<;§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§0W§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0W§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§0W§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§4!=§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§4!=§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().getAppWidth();
         }
         addr55:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§4!=§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§4!=§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop().getAppHeight();
         }
         addr49:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§#!4§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr55:
                     §§push(this.§#!4§);
                     if(_loc3_)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr74);
                        }
                        §§pop().viewHeight = §§pop();
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr72);
               }
               addr74:
               if(_loc3_ || _loc3_)
               {
                  addr72:
                  §§push(this.§#!4§);
                  §§push(param2);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr55);
      }
      
      public function §`u§() : int
      {
         return §9!2§;
      }
   }
}
