package §_-y7§
{
   import §_-6r§.§_-7P§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-VA§
   {
      
      public static const §_-U§:String = "dummyState";
      
      public static const §_-I5§:int = 0;
      
      public static const §_-vQ§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-nP§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-U§ = "dummyState";
            §_-I5§ = 0;
            §_-vQ§ = 1;
            if(_loc2_)
            {
               STATE_STATUS_RUNNING = 2;
               addr44:
               STATE_STATUS_COMPLETED = 3;
               §_-nP§ = null;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public var §_-Y2§:Boolean = false;
      
      public var §_-ZW§:Boolean = false;
      
      public var mName:String;
      
      public var §_-u7§:Boolean = false;
      
      public var §_-qu§:Boolean = false;
      
      public var §_-NY§:§_-ru§;
      
      public var §_-WZ§:Array;
      
      public var mNextState:String = "";
      
      public var §_-Cv§:Sprite = null;
      
      public var §_-f0§:§_-vT§ = null;
      
      public function §_-VA§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         this.mName = param2;
         if(_loc4_ || this)
         {
            this.§_-WZ§ = new Array();
         }
         this.§_-Cv§ = new Sprite();
         if(param1)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.init();
            }
         }
      }
      
      public static function §extends§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§_-nP§)
            {
               if(_loc3_)
               {
                  return §_-nP§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§_-Y2§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-ru§ = null;
         if(_loc4_ || this)
         {
            if(!this.§_-Y2§)
            {
               if(!_loc5_)
               {
                  §§goto(addr28);
               }
            }
            §§goto(addr37);
         }
         addr28:
         this.init();
         if(_loc4_ || _loc2_)
         {
            addr37:
            §§push(this.§_-NY§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     this.§_-Cv§.addChild(this.§_-NY§);
                  }
               }
               §§goto(addr66);
            }
            §§pop().§_-aN§();
         }
         addr66:
         if(_loc4_ || _loc3_)
         {
            §§push(this.§_-NY§);
         }
         var _loc3_:* = this.§_-WZ§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && this))
            {
               this.§_-Cv§.addChild(_loc1_);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.§_-JE§();
         }
         if(_loc4_ || _loc1_)
         {
            this.mNextState = "";
            if(_loc4_)
            {
               this.§_-ZW§ = true;
            }
         }
      }
      
      public function §_-pY§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-ru§ = null;
         if(!_loc5_)
         {
            §§push(this.§_-NY§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr27:
                     this.§_-NY§.§_-JE§();
                     if(_loc4_ || this)
                     {
                     }
                     addr40:
                     var _loc3_:* = this.§_-WZ§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!_loc5_)
                        {
                           _loc1_.§_-JE§();
                           if(!_loc5_)
                           {
                              this.§_-Cv§.removeChild(_loc1_);
                           }
                        }
                     }
                     §§push(this.§_-ZW§);
                     if(!(_loc5_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§push(this.§_-qu§);
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    this.cleanup();
                                 }
                              }
                              else
                              {
                                 §§goto(addr120);
                              }
                           }
                           return;
                        }
                        this.§_-ZW§ = false;
                        if(_loc4_)
                        {
                           addr120:
                           if(§§pop())
                           {
                              addr121:
                              this.cleanup();
                           }
                           return;
                           §§push(this.§_-qu§);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr120);
                  }
                  this.§_-Cv§.removeChild(this.§_-NY§);
               }
               §§goto(addr40);
            }
         }
         §§goto(addr27);
      }
      
      public function §_-Uu§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-qu§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§_-Y2§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            else
            {
               §§push(this.§_-NY§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     addr60:
                     if(_loc1_ || _loc2_)
                     {
                        §§push(this.§_-NY§);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(this.§_-WZ§);
                        while(true)
                        {
                           if(§§pop().length <= 0)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr84);
                           }
                           §§push(this.§_-WZ§);
                           if(!_loc2_)
                           {
                              (§§pop().pop() as §_-ru§).clear();
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        if(this.§_-ZW§)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr84);
                           }
                           addr84:
                           this.deActivate();
                           if(_loc1_ || _loc1_)
                           {
                              addr100:
                              this.§_-Y2§ = false;
                           }
                           return;
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr60);
               }
               §§pop().clear();
               if(_loc1_ || _loc1_)
               {
                  this.§_-NY§ = null;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-Y2§);
         if(!_loc2_)
         {
            if(!§§pop())
            {
               §_-54§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
               if(_loc3_ || _loc2_)
               {
                  §§push(§_-I5§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(STATE_STATUS_RUNNING);
               }
               §§goto(addr78);
            }
            else
            {
               addr52:
               if(!this.§_-ZW§)
               {
                  §_-54§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§_-vQ§);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr77);
                  }
                  addr78:
                  return §§pop();
               }
            }
            §§goto(addr77);
         }
         §§goto(addr52);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-u7§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
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
      
      public function §_-Sh§(param1:§_-ru§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-WZ§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-Cv§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-Cv§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-Cv§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-f0§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§_-f0§);
                  }
                  else
                  {
                     §§goto(addr33);
                  }
               }
               §§goto(addr33);
            }
            return §§pop().getAppWidth();
         }
         addr33:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-f0§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§_-f0§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().getAppHeight();
         }
         addr50:
         return 0;
      }
   }
}
