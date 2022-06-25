package §6H§
{
   import §0w§.§0#§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §>3§
   {
      
      public static const §@x§:int = 60;
      
      public static const §0s§:String = "dummyState";
      
      public static const §&,§:int = 0;
      
      public static const §8! §:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §,n§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>3§))
         {
            §0s§ = "dummyState";
            §&,§ = 0;
            if(!_loc2_)
            {
               addr44:
               §8! § = 1;
               STATE_STATUS_RUNNING = 2;
               STATE_STATUS_COMPLETED = 3;
               §,n§ = null;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public var §?z§:Boolean = false;
      
      public var §>U§:Boolean = false;
      
      public var mName:String;
      
      public var §`D§:Boolean = false;
      
      public var §#t§:Boolean = false;
      
      public var §-f§:§0#§;
      
      public var §^A§:Array;
      
      public var mNextState:String = "";
      
      public var §62§:Sprite = null;
      
      public var §'X§:§5S§ = null;
      
      public function §>3§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_)
         {
            this.mName = param2;
            if(!(_loc4_ && _loc3_))
            {
               this.§^A§ = new Array();
               if(_loc3_)
               {
                  this.§62§ = new Sprite();
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
      
      public static function §&A§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§,n§)
            {
               if(_loc3_ || param1)
               {
                  return §,n§[param1];
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
            this.§?z§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0#§ = null;
         if(_loc4_)
         {
            if(!this.§?z§)
            {
               if(!_loc5_)
               {
                  this.init();
                  if(_loc4_)
                  {
                     addr30:
                     §§push(this.§-f§);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§62§.addChild(this.§-f§);
                              addr42:
                              if(_loc4_)
                              {
                                 addr61:
                                 this.§-f§.§@`§();
                                 addr59:
                              }
                           }
                           §§goto(addr59);
                        }
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§^A§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§62§.addChild(_loc1_);
                              if(_loc4_ || _loc2_)
                              {
                                 _loc1_.§2!"§();
                              }
                           }
                        }
                        if(!_loc5_)
                        {
                           this.mNextState = "";
                           if(_loc4_)
                           {
                              addr116:
                              this.§>U§ = true;
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
      
      public function § Z§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0#§ = null;
         if(_loc5_)
         {
            §§push(this.§-f§);
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().§2!"§();
            if(_loc5_ || _loc2_)
            {
               this.§62§.removeChild(this.§-f§);
            }
         }
         addr59:
         if(!_loc4_)
         {
            §§push(this.§-f§);
         }
         var _loc3_:* = this.§^A§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc1_.§2!"§();
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§62§.removeChild(_loc1_);
         }
         §§push(this.§>U§);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               §§push(this.§#t§);
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr110);
               }
            }
            else
            {
               this.§>U§ = false;
               §§push(this.§#t§);
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
      
      public function §9"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#t§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§?z§)
            {
               if(!_loc1_)
               {
                  return;
               }
               addr49:
               §§push(this.§-f§);
            }
            else
            {
               §§push(this.§-f§);
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
                     §§push(this.§^A§);
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
                        §§push(this.§^A§);
                        if(_loc2_)
                        {
                           (§§pop().pop() as §0#§).clear();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     if(this.§>U§)
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
                           this.§?z§ = false;
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
               this.§-f§ = null;
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
            §§push(this.§?z§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  §§push(§9X§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(§&,§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr83:
                     §§push(§8! §);
                     if(_loc2_)
                     {
                        §§goto(addr88);
                     }
                  }
                  return §§pop();
               }
               addr72:
               if(!this.§>U§)
               {
                  if(!_loc2_)
                  {
                     §§push(§9X§);
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
         return this.§`D§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
      
      public function §%u§(param1:§0#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^A§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§62§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§62§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§62§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'X§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§'X§);
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
            §§push(this.§'X§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§'X§);
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
            §§push(this.§-f§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr55:
                     §§push(this.§-f§);
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
                  §§push(this.§-f§);
                  §§push(param2);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr55);
      }
      
      public function §'!6§() : int
      {
         return §@x§;
      }
   }
}
