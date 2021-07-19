package §;<§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§0=§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §'B§
   {
      
      public static const §<!-§:int = 60;
      
      public static const §^o§:String = "dummyState";
      
      public static const §?u§:int = 0;
      
      public static const §++§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §!u§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!-§ = 60;
            loop0:
            while(true)
            {
               §^o§ = "dummyState";
               loop1:
               while(true)
               {
                  §?u§ = 0;
                  while(true)
                  {
                     §++§ = 1;
                     while(true)
                     {
                        STATE_STATUS_RUNNING = 2;
                        addr60:
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              STATE_STATUS_COMPLETED = 3;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     addr31:
                     if(!(_loc2_ && §'B§))
                     {
                        if(!_loc2_)
                        {
                           return;
                           addr50:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!u§ = null;
            if(!_loc1_)
            {
               continue;
            }
            if(_loc1_)
            {
               §§goto(addr31);
            }
            §§goto(addr60);
         }
         §§goto(addr50);
      }
      
      public var §'!<§:Boolean = false;
      
      public var §3!+§:Boolean = false;
      
      public var mName:String;
      
      public var §'!d§:Boolean = false;
      
      public var §?!x§:Boolean = false;
      
      public var §`!v§:§>!V§;
      
      public var §6e§:Array;
      
      public var mNextState:String = "";
      
      public var § D§:Sprite = null;
      
      public var §0!z§:§ "4§ = null;
      
      public function §'B§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param2;
               while(true)
               {
                  this.§6e§ = new Array();
                  loop2:
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§ D§ = new Sprite();
                        for(; param1; if(!(_loc3_ && this))
                        {
                           continue loop2;
                        })
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 this.init();
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr25);
                     }
                     break;
                     if(_loc4_ || param2)
                     {
                        addr25:
                     }
                     continue;
                     return;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function §'M§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§!u§)
            {
               if(!_loc3_)
               {
                  §§goto(addr42);
               }
            }
            return null;
         }
         addr42:
         return §!u§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!<§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>!V§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.§'!<§)
            {
               while(true)
               {
                  this.init();
                  addr83:
                  while(true)
                  {
                  }
               }
               addr81:
            }
            loop1:
            while(true)
            {
               §§push(this.§`!v§);
               loop2:
               while(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        this.§ D§.addChild(this.§`!v§);
                        while(!(_loc5_ && this))
                        {
                           §§push(this.§`!v§);
                           if(!_loc5_)
                           {
                              §§pop().§6!<§();
                              if(!(_loc5_ && _loc1_))
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           continue loop2;
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        §§goto(addr81);
                     }
                  }
                  if(true)
                  {
                     break;
                  }
                  continue loop1;
               }
               var _loc3_:* = this.§6e§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     this.§ D§.addChild(_loc1_);
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc1_.§!c§();
               }
               if(!_loc5_)
               {
                  this.mNextState = "";
               }
               do
               {
                  this.§3!+§ = true;
               }
               while(!(_loc4_ || this));
               
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function §!!3§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>!V§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§`!v§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr40:
                     this.§`!v§.§!c§();
                     if(_loc4_)
                     {
                        addr43:
                        this.§ D§.removeChild(this.§`!v§);
                     }
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§6e§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     _loc1_.§!c§();
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  this.§ D§.removeChild(_loc1_);
               }
               if(!_loc5_)
               {
                  §§push(this.§3!+§);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           this.§3!+§ = false;
                           addr125:
                           while(true)
                           {
                              §§push(this.§?!x§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc5_)
                                             {
                                                addr151:
                                                §§push(this.§?!x§);
                                                break;
                                             }
                                             this.cleanup();
                                             addr118:
                                             if(!_loc5_)
                                             {
                                                §§goto(addr88);
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             addr154:
                                             this.cleanup();
                                          }
                                          §§goto(addr126);
                                       }
                                       continue;
                                    }
                                    §§goto(addr118);
                                 }
                                 addr88:
                                 return;
                              }
                              break;
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr151);
                  }
                  addr153:
                  if(§§pop())
                  {
                     §§goto(addr154);
                  }
                  addr126:
                  return;
               }
               §§goto(addr125);
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      public function §!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?!x§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§'!<§)
            {
               if(_loc1_)
               {
                  §§goto(addr141);
               }
               else
               {
                  while(true)
                  {
                     addr118:
                     while(_loc1_ || _loc2_)
                     {
                        this.§`!v§ = null;
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr80:
                        loop3:
                        while(true)
                        {
                           §§push(this.§6e§);
                           if(_loc1_ || this)
                           {
                              if(§§pop().length <= 0)
                              {
                                 if(!(_loc1_ || this))
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(this.§3!+§)
                                    {
                                       while(true)
                                       {
                                          this.deActivate();
                                          break loop3;
                                       }
                                       addr77:
                                    }
                                    while(true)
                                    {
                                       this.§'!<§ = false;
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr77);
                                    }
                                    return;
                                    addr28:
                                 }
                                 continue;
                              }
                              §§push(this.§6e§);
                           }
                           (§§pop().pop() as §>!V§).clear();
                        }
                        while(true)
                        {
                           §§goto(addr28);
                        }
                     }
                  }
                  addr142:
               }
            }
            while(true)
            {
               §§push(this.§`!v§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr117:
                        this.§`!v§.clear();
                     }
                     §§goto(addr118);
                  }
                  break;
               }
               §§goto(addr117);
               §§goto(addr142);
            }
            §§goto(addr80);
         }
         addr141:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'!<§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§3!+§);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §,"0§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§++§);
                           break;
                        }
                        addr108:
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           continue;
                        }
                        return §?u§;
                     }
                     else
                     {
                        §§push(STATE_STATUS_RUNNING);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     return §§pop();
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §,"0§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
         §§goto(addr108);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§'!d§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
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
      
      public function §;!l§(param1:§>!V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6e§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§ D§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ D§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ D§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0!z§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§0!z§);
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
         if(_loc1_)
         {
            §§push(this.§0!z§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§0!z§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop().getAppHeight();
         }
         addr54:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§`!v§);
            loop0:
            for(; §§pop(); if(!(_loc3_ || this))
            {
               continue;
            },§§push(param2),if(_loc3_)
            {
               §§pop().viewHeight = §§pop();
               if(!_loc3_)
               {
                  §§goto(addr86);
               }
               addr61:
               break;
            },§§goto(addr85))
            {
               if(!(_loc4_ && this))
               {
                  §§push(this.§`!v§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr85:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  §§push(this.§`!v§);
                  if(_loc3_ || param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function getTargetFrameRate() : int
      {
         return §<!-§;
      }
   }
}
