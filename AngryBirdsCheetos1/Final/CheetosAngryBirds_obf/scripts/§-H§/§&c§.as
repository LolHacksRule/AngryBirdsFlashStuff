package §-H§
{
   import § !G§.§ #§;
   import §0F§.§'j§;
   import §1§.§'n§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §&c§
   {
      
      public static const §-S§:int = 60;
      
      public static const §&`§:String = "dummyState";
      
      public static const §`!;§:int = 0;
      
      public static const §!!Z§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §&!0§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-S§ = 60;
            while(true)
            {
               §&`§ = "dummyState";
            }
            addr93:
         }
         loop1:
         while(true)
         {
            §`!;§ = 0;
            loop2:
            while(true)
            {
               §!!Z§ = 1;
               loop3:
               while(true)
               {
                  STATE_STATUS_RUNNING = 2;
                  loop4:
                  while(!_loc2_)
                  {
                     STATE_STATUS_COMPLETED = 3;
                     while(!_loc2_)
                     {
                        §&!0§ = null;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public var §]m§:Boolean = false;
      
      public var §<C§:Boolean = false;
      
      public var mName:String;
      
      public var §=!I§:Boolean = false;
      
      public var §"G§:Boolean = false;
      
      public var §3t§:§'j§;
      
      public var §;!?§:Array;
      
      public var mNextState:String = "";
      
      public var §?!N§:Sprite = null;
      
      public var §7P§:§ 5§ = null;
      
      public function §&c§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.mName = param2;
               addr96:
               addr39:
               while(true)
               {
                  this.§;!?§ = new Array();
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               this.init();
               addr58:
               for(; _loc4_; §§goto(addr58))
               {
                  if(param1)
                  {
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr39);
                  }
                  else
                  {
                     §§goto(addr25);
                  }
               }
               if(!(_loc3_ && param1))
               {
                  if(!_loc4_)
                  {
                     §§goto(addr96);
                  }
                  addr25:
                  return;
               }
               while(true)
               {
                  this.§?!N§ = new Sprite();
                  §§goto(addr73);
               }
               addr73:
               addr91:
            }
         }
         §§goto(addr91);
      }
      
      public static function § !%§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§&!0§)
            {
               if(_loc3_ || _loc3_)
               {
                  return §&!0§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§]m§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'j§ = null;
         if(_loc4_)
         {
            if(!this.§]m§)
            {
               while(true)
               {
                  this.init();
                  addr83:
                  while(true)
                  {
                  }
                  addr42:
                  if(_loc4_ || _loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           §§push(this.§3t§);
                           loop3:
                           while(§§pop())
                           {
                              if(!(_loc5_ && _loc1_))
                              {
                                 this.§?!N§.addChild(this.§3t§);
                              }
                              while(true)
                              {
                                 §§push(this.§3t§);
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop3;
                                 }
                                 §§pop().§'a§();
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr42);
                                 }
                                 else
                                 {
                                    §§goto(addr83);
                                 }
                              }
                           }
                        }
                        addr51:
                     }
                     var _loc2_:int = 0;
                     for each(_loc1_ in this.§;!?§)
                     {
                        if(!_loc5_)
                        {
                           this.§?!N§.addChild(_loc1_);
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc1_.§8!Q§();
                           }
                        }
                     }
                     if(_loc4_)
                     {
                        this.mNextState = "";
                     }
                     do
                     {
                        this.§<C§ = true;
                     }
                     while(_loc5_ && _loc2_);
                     
                     return;
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr77);
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'j§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§3t§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr45:
                     this.§3t§.§8!Q§();
                     if(!(_loc5_ && _loc3_))
                     {
                        addr53:
                        this.§?!N§.removeChild(this.§3t§);
                     }
                  }
               }
               var _loc3_:* = this.§;!?§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     _loc1_.§8!Q§();
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  this.§?!N§.removeChild(_loc1_);
               }
               if(!(_loc5_ && this))
               {
                  §§push(this.§<C§);
                  if(_loc4_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           this.§<C§ = false;
                           while(!(_loc5_ && this))
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(this.§"G§);
                                 if(_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(!_loc4_)
                                          {
                                             addr153:
                                             return;
                                             addr181:
                                          }
                                          this.cleanup();
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    return;
                                 }
                                 addr178:
                                 addr178:
                                 if(§§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr153);
                              }
                              else
                              {
                                 addr176:
                                 §§goto(addr178);
                                 §§push(this.§"G§);
                              }
                              §§goto(addr178);
                           }
                           this.cleanup();
                           §§goto(addr181);
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr178);
               }
               §§goto(addr176);
            }
            §§goto(addr45);
         }
         §§goto(addr53);
      }
      
      public function §^!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"G§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]m§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§3t§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr124:
                           this.§3t§.clear();
                        }
                        while(_loc1_)
                        {
                           this.§3t§ = null;
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr131);
                     }
                     break;
                  }
                  §§goto(addr124);
               }
               loop2:
               while(true)
               {
                  §§push(this.§;!?§);
                  if(_loc1_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           if(this.§<C§)
                           {
                              while(true)
                              {
                                 this.deActivate();
                                 addr72:
                                 while(true)
                                 {
                                    if(!(_loc1_ || this))
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              addr70:
                           }
                           while(true)
                           {
                              this.§]m§ = false;
                              if(!(_loc1_ || this))
                              {
                                 continue;
                              }
                              if(_loc1_ || _loc1_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§push(this.§;!?§);
                     }
                  }
                  (§§pop().pop() as §'j§).clear();
               }
            }
         }
         addr131:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§]m§);
            while(§§pop())
            {
               §§push(this.§<C§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           § #§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                           addr92:
                           if(_loc2_)
                           {
                              §§goto(addr45);
                           }
                           break;
                        }
                        addr97:
                        return §`!;§;
                        addr118:
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     addr24:
                     §§push(STATE_STATUS_RUNNING);
                     if(!(_loc3_ && param1))
                     {
                        if(_loc2_ || _loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr97);
                     }
                  }
                  addr45:
               }
               continue;
               return §!!Z§;
            }
            § #§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            §§goto(addr118);
         }
         §§goto(addr24);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=!I§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
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
      
      public function §0H§(param1:§'j§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;!?§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§?!N§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?!N§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§?!N§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§7P§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr63);
                  }
               }
               return 0;
            }
            §§goto(addr63);
         }
         addr63:
         return this.§7P§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§7P§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§7P§);
                  }
                  else
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr60);
            }
            return §§pop().getAppHeight();
         }
         addr60:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§3t§);
            loop0:
            for(; §§pop(); if(!(_loc4_ || param1))
            {
               continue;
            },§§push(param2),if(!_loc3_)
            {
               §§pop().viewHeight = §§pop();
               if(_loc4_ || param1)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     §§goto(addr83);
                  }
                  addr79:
                  break;
               }
               §§goto(addr87);
            },§§goto(addr86))
            {
               while(true)
               {
                  §§push(this.§3t§);
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     addr86:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        addr87:
                        while(true)
                        {
                           §§push(this.§3t§);
                           if(_loc4_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §4f§() : int
      {
         return §-S§;
      }
   }
}
