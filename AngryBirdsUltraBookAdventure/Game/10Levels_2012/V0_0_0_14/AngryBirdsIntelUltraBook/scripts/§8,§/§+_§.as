package §8,§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §=R§.§7!"§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §+_§
   {
      
      public static const §9!5§:int = 60;
      
      public static const §7!v§:String = "dummyState";
      
      public static const §;L§:int = 0;
      
      public static const §<3§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[!Z§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!5§ = 60;
            while(true)
            {
               §7!v§ = "dummyState";
               addr100:
               while(true)
               {
                  §;L§ = 0;
               }
            }
            addr104:
         }
         while(true)
         {
            §<3§ = 1;
            loop3:
            while(true)
            {
               STATE_STATUS_RUNNING = 2;
               while(true)
               {
                  if(!_loc1_)
                  {
                     STATE_STATUS_COMPLETED = 3;
                     while(!_loc1_)
                     {
                        §[!Z§ = null;
                        if(_loc2_ || §+_§)
                        {
                           continue loop3;
                        }
                     }
                     continue;
                  }
                  §§goto(addr104);
               }
               §§goto(addr100);
            }
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            if(_loc2_)
            {
               break;
            }
            §§goto(addr100);
         }
      }
      
      public var §[!?§:Boolean = false;
      
      public var §@!"§:Boolean = false;
      
      public var mName:String;
      
      public var §39§:Boolean = false;
      
      public var §8u§:Boolean = false;
      
      public var §`-§:§ C§;
      
      public var §,!F§:Array;
      
      public var mNextState:String = "";
      
      public var §8!9§:Sprite = null;
      
      public var §&!x§:§3!?§ = null;
      
      public function §+_§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
         }
         while(true)
         {
            this.mName = param2;
            while(true)
            {
               this.§,!F§ = new Array();
               loop2:
               while(!_loc4_)
               {
                  this.§8!9§ = new Sprite();
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!param1)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
      }
      
      public static function §`!g§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§[!Z§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return §[!Z§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[!?§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ C§ = null;
         if(_loc5_)
         {
            if(!this.§[!?§)
            {
               if(_loc5_ || _loc2_)
               {
                  this.init();
               }
               while(true)
               {
                  loop4:
                  while(!(_loc4_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this.§`-§);
                        if(_loc5_)
                        {
                           §§pop().activateView();
                           if(!_loc5_)
                           {
                              continue loop4;
                           }
                           if(_loc5_ || _loc3_)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    §§push(this.§`-§);
                                    addr43:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§8!9§.addChild(this.§`-§);
                                          continue loop4;
                                       }
                                    }
                                 }
                                 addr40:
                              }
                              for each(_loc1_ in this.§,!F§)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§8!9§.addChild(_loc1_);
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc1_.§#R§();
                              }
                              if(_loc5_ || _loc1_)
                              {
                                 this.mNextState = "";
                              }
                              do
                              {
                                 this.§@!"§ = true;
                              }
                              while(_loc4_);
                              
                              return;
                           }
                           §§goto(addr44);
                        }
                        §§goto(addr43);
                     }
                  }
               }
            }
            §§goto(addr40);
         }
         §§goto(addr66);
      }
      
      public function §&S§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ C§ = null;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§`-§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     addr40:
                     this.§`-§.§#R§();
                     if(_loc4_)
                     {
                        addr43:
                        this.§8!9§.removeChild(this.§`-§);
                     }
                  }
                  §§goto(addr43);
               }
               var _loc3_:* = this.§,!F§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_)
                  {
                     _loc1_.§#R§();
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  this.§8!9§.removeChild(_loc1_);
               }
               if(!(_loc5_ && _loc1_))
               {
                  §§push(this.§@!"§);
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§@!"§ = false;
                        while(true)
                        {
                           if(_loc5_ && _loc1_)
                           {
                              break loop1;
                           }
                           §§push(this.§8u§);
                           if(_loc5_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       this.cleanup();
                                       addr116:
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          §§goto(addr93);
                                       }
                                       addr164:
                                       this.cleanup();
                                    }
                                    else if(!(_loc5_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                       addr157:
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr116);
                              }
                              addr93:
                           }
                           continue loop1;
                           return;
                        }
                        §§goto(addr163);
                     }
                  }
                  addr163:
                  if(§§pop())
                  {
                     §§goto(addr164);
                  }
                  addr148:
                  return;
                  §§push(this.§8u§);
               }
               §§goto(addr157);
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      public function §!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8u§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§[!?§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§`-§);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(this.§`-§);
                           addr133:
                           loop1:
                           while(true)
                           {
                              §§pop().clear();
                              while(_loc2_)
                              {
                                 if(_loc1_ && this)
                                 {
                                    return;
                                 }
                                 addr147:
                                 this.§`-§ = null;
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        addr131:
                     }
                     while(true)
                     {
                        §§push(this.§,!F§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop().length <= 0)
                           {
                              do
                              {
                                 if(this.§@!"§)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       this.deActivate();
                                    }
                                    while(true)
                                    {
                                    }
                                    addr85:
                                 }
                                 while(true)
                                 {
                                    this.§[!?§ = false;
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§push(this.§,!F§);
                        }
                        (§§pop().pop() as § C§).clear();
                     }
                     return;
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr147);
         }
         §§goto(addr131);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§[!?§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§[g§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  §§push(§;L§);
                  break;
                  addr127:
               }
               while(true)
               {
                  §§push(this.§@!"§);
                  if(_loc3_ && _loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     addr24:
                     §§push(STATE_STATUS_RUNNING);
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        break loop0;
                     }
                     break;
                  }
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(§[g§);
                     §§push("WARNING: State -> run() method is called when state is not active: ");
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + this.mName);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc2_)
                  {
                     §§push(§<3§);
                     break;
                  }
                  §§goto(addr127);
               }
               return §§pop();
            }
         }
         else
         {
            §§goto(addr24);
         }
         return §§pop();
      }
      
      public function isGenericState() : Boolean
      {
         return this.§39§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
      
      public function §[!_§(param1:§ C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!F§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§8!9§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!9§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8!9§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&!x§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return 0;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§&!x§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&!x§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§&!x§);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§`-§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     addr85:
                     §§push(this.§`-§);
                     while(true)
                     {
                        §§push(param1);
                        addr86:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                        }
                     }
                     addr85:
                  }
                  while(true)
                  {
                     §§push(this.§`-§);
                     if(_loc4_ || param2)
                     {
                        §§push(param2);
                        if(_loc4_ || this)
                        {
                           §§pop().viewHeight = §§pop();
                           if(_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr86);
                  }
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      public function §6!_§() : int
      {
         return §9!5§;
      }
   }
}
