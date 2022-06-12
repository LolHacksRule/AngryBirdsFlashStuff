package §0!G§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §6o§.§+!k§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1-§
   {
      
      public static const §!!!§:int = 60;
      
      public static const §+"7§:String = "dummyState";
      
      public static const §!!3§:int = 0;
      
      public static const §]m§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[U§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!!§ = 60;
            while(true)
            {
               §+"7§ = "dummyState";
               while(_loc2_)
               {
                  while(_loc2_ || _loc2_)
                  {
                     §]m§ = 1;
                     loop4:
                     for(; _loc2_ || _loc2_; if(_loc2_ || §1-§)
                     {
                        return;
                     })
                     {
                        STATE_STATUS_RUNNING = 2;
                        while(true)
                        {
                           STATE_STATUS_COMPLETED = 3;
                           while(!(_loc1_ && _loc1_))
                           {
                              §[U§ = null;
                              if(!_loc1_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!!3§ = 0;
            §§goto(addr91);
         }
      }
      
      public var § J§:Boolean = false;
      
      public var §+L§:Boolean = false;
      
      public var mName:String;
      
      public var §=&§:Boolean = false;
      
      public var §+s§:Boolean = false;
      
      public var §6w§:§7!A§;
      
      public var §?!9§:Array;
      
      public var mNextState:String = "";
      
      public var §3^§:Sprite = null;
      
      public var §0!+§:§&"5§ = null;
      
      public function §1-§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            while(true)
            {
               this.mName = param2;
               while(_loc4_ || param1)
               {
                  this.§?!9§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§3^§ = new Sprite();
                     loop3:
                     while(param1)
                     {
                        if(!(_loc3_ && param1))
                        {
                           while(true)
                           {
                              this.init();
                           }
                           addr49:
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     addr25:
                     return;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public static function §5t§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §1-§)
         {
            if(§[U§)
            {
               if(!_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §[U§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§ J§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7!A§ = null;
         if(_loc4_ || this)
         {
            if(!this.§ J§)
            {
               if(_loc4_ || _loc1_)
               {
                  addr81:
                  this.init();
               }
               while(true)
               {
                  loop4:
                  while(_loc4_ || _loc2_)
                  {
                     §§push(this.§6w§);
                     if(_loc4_)
                     {
                        §§pop().activateView();
                        if(!(_loc4_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           addr42:
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(this.§6w§);
                                 addr47:
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§3^§.addChild(this.§6w§);
                                       continue loop4;
                                    }
                                    §§goto(addr42);
                                 }
                              }
                              addr44:
                           }
                           for each(_loc1_ in this.§?!9§)
                           {
                              if(!(_loc5_ && this))
                              {
                                 this.§3^§.addChild(_loc1_);
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    _loc1_.§6v§();
                                 }
                              }
                           }
                           if(!_loc5_)
                           {
                              this.mNextState = "";
                              do
                              {
                                 this.§+L§ = true;
                              }
                              while(!_loc4_);
                              
                           }
                           return;
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr47);
                  }
               }
            }
            §§goto(addr44);
         }
         §§goto(addr81);
      }
      
      public function §7!#§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7!A§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§6w§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     addr40:
                     this.§6w§.§6v§();
                     if(_loc4_)
                     {
                        this.§3^§.removeChild(this.§6w§);
                     }
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§?!9§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && this))
                  {
                     _loc1_.§6v§();
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§3^§.removeChild(_loc1_);
                     }
                  }
               }
               if(!(_loc5_ && _loc3_))
               {
                  §§push(this.§+L§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           this.§+L§ = false;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§push(this.§+s§);
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       this.cleanup();
                                    }
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       addr154:
                                       addr156:
                                       if(this.§+s§)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             this.cleanup();
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                                 return;
                              }
                           }
                           addr144:
                           return;
                        }
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr156);
               }
               §§goto(addr154);
            }
         }
         §§goto(addr40);
      }
      
      public function §[#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+s§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§ J§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
               while(true)
               {
               }
               addr148:
            }
            loop0:
            while(true)
            {
               §§push(this.§6w§);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§6w§);
                        addr133:
                        while(true)
                        {
                           §§pop().clear();
                           while(!_loc1_)
                           {
                              this.§6w§ = null;
                              if(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        addr109:
                     }
                  }
                  addr36:
                  §§push(this.§?!9§);
                  if(!_loc1_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_ && _loc2_)
                           {
                              addr90:
                              §§goto(addr36);
                           }
                           if(this.§+L§)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr78:
                                 this.deActivate();
                              }
                              addr80:
                           }
                           this.§ J§ = false;
                           if(!(_loc2_ || this))
                           {
                              §§goto(addr80);
                           }
                           return;
                        }
                        §§goto(addr78);
                     }
                     §§push(this.§?!9§);
                  }
                  (§§pop().pop() as §7!A§).clear();
                  §§goto(addr90);
               }
               §§goto(addr133);
            }
         }
         §§goto(addr148);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§ J§);
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§+!k§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  §§push(§!!3§);
                  break;
               }
               §§push(this.§+L§);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr67:
                        §§push(§+!k§);
                        §§push("WARNING: State -> run() method is called when state is not active: ");
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() + this.mName);
                        }
                        §§pop().log(§§pop());
                     }
                     return §]m§;
                  }
                  else
                  {
                     §§push(STATE_STATUS_RUNNING);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr67);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=&§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
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
      
      public function §var §(param1:§7!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!9§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§3^§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3^§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§3^§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0!+§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§0!+§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().getAppWidth();
         }
         addr45:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§0!+§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§0!+§);
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
         if(!_loc4_)
         {
            §§push(this.§6w§);
            loop0:
            for(; §§pop(); if(_loc4_ && param2)
            {
               continue;
            },§§push(param2),if(!_loc4_)
            {
               §§pop().viewHeight = §§pop();
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     §§goto(addr72);
                  }
                  addr68:
                  break;
               }
               §§goto(addr76);
            },§§goto(addr75))
            {
               while(true)
               {
                  §§push(this.§6w§);
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     addr75:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        addr76:
                        while(true)
                        {
                           §§push(this.§6w§);
                           if(!(_loc4_ && _loc3_))
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
         §§goto(addr68);
      }
      
      public function § g§() : int
      {
         return §!!!§;
      }
   }
}
