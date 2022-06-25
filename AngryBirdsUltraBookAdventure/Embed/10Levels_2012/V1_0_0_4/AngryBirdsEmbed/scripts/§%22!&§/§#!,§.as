package §"!&§
{
   import §+!"§.§5!<§;
   import §-!F§.§^h§;
   import §<!G§.§^3§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §#!,§
   {
      
      public static const §#t§:int = 60;
      
      public static const §47§:String = "dummyState";
      
      public static const §?0§:int = 0;
      
      public static const §0m§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §+!!§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §#!,§))
         {
            §47§ = "dummyState";
            §?0§ = 0;
            if(!_loc2_)
            {
               addr44:
               §0m§ = 1;
               STATE_STATUS_RUNNING = 2;
               STATE_STATUS_COMPLETED = 3;
               §+!!§ = null;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public var §;!$§:Boolean = false;
      
      public var §6V§:Boolean = false;
      
      public var mName:String;
      
      public var §[z§:Boolean = false;
      
      public var §"v§:Boolean = false;
      
      public var §[=§:§^3§;
      
      public var §;!C§:Array;
      
      public var mNextState:String = "";
      
      public var §[0§:Sprite = null;
      
      public var §-_§:§7§ = null;
      
      public function §#!,§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_)
         {
            this.mName = param2;
            if(!(_loc4_ && _loc3_))
            {
               this.§;!C§ = new Array();
               if(_loc3_)
               {
                  this.§[0§ = new Sprite();
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
      
      public static function §,!<§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§+!!§)
            {
               if(_loc3_ || param1)
               {
                  return §+!!§[param1];
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
            this.§;!$§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^3§ = null;
         if(_loc4_)
         {
            if(!this.§;!$§)
            {
               if(!_loc5_)
               {
                  this.init();
                  if(_loc4_)
                  {
                     addr30:
                     §§push(this.§[=§);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§[0§.addChild(this.§[=§);
                              addr42:
                              if(_loc4_)
                              {
                                 addr61:
                                 this.§[=§.§<!&§();
                                 addr59:
                              }
                           }
                           §§goto(addr59);
                        }
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§;!C§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§[0§.addChild(_loc1_);
                              if(_loc4_ || _loc2_)
                              {
                                 _loc1_.§%Y§();
                              }
                           }
                        }
                        if(!_loc5_)
                        {
                           this.mNextState = "";
                           if(_loc4_)
                           {
                              addr116:
                              this.§6V§ = true;
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
      
      public function §4Q§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^3§ = null;
         if(_loc5_)
         {
            §§push(this.§[=§);
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().§%Y§();
            if(_loc5_ || _loc2_)
            {
               this.§[0§.removeChild(this.§[=§);
            }
         }
         addr59:
         if(!_loc4_)
         {
            §§push(this.§[=§);
         }
         var _loc3_:* = this.§;!C§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc1_.§%Y§();
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§[0§.removeChild(_loc1_);
         }
         §§push(this.§6V§);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               §§push(this.§"v§);
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr110);
               }
            }
            else
            {
               this.§6V§ = false;
               §§push(this.§"v§);
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
      
      public function §7!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§"v§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§;!$§)
            {
               if(!_loc1_)
               {
                  return;
               }
               addr49:
               §§push(this.§[=§);
            }
            else
            {
               §§push(this.§[=§);
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
                     §§push(this.§;!C§);
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
                        §§push(this.§;!C§);
                        if(_loc2_)
                        {
                           (§§pop().pop() as §^3§).clear();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     if(this.§6V§)
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
                           this.§;!$§ = false;
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
               this.§[=§ = null;
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
            §§push(this.§;!$§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  §§push(§5!<§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(§?0§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr83:
                     §§push(§0m§);
                     if(_loc2_)
                     {
                        §§goto(addr88);
                     }
                  }
                  return §§pop();
               }
               addr72:
               if(!this.§6V§)
               {
                  if(!_loc2_)
                  {
                     §§push(§5!<§);
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
         return this.§[z§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
      
      public function §+H§(param1:§^3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!C§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[0§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[0§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§[0§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§-_§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§-_§);
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
            §§push(this.§-_§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§-_§);
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
            §§push(this.§[=§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr55:
                     §§push(this.§[=§);
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
                  §§push(this.§[=§);
                  §§push(param2);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr55);
      }
      
      public function §#K§() : int
      {
         return §#t§;
      }
   }
}
