package §_-x8§
{
   import §_-0BH§.§_-FK§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-nG§
   {
      
      public static const §_-zC§:int = 60;
      
      public static const §_-1R§:String = "dummyState";
      
      public static const §_-a6§:int = 0;
      
      public static const §_-JX§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-lH§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-zC§ = 60;
            loop0:
            while(true)
            {
               §_-1R§ = "dummyState";
               loop1:
               while(true)
               {
                  §_-a6§ = 0;
                  while(true)
                  {
                     §_-JX§ = 1;
                     loop3:
                     while(true)
                     {
                        STATE_STATUS_RUNNING = 2;
                        while(true)
                        {
                           STATE_STATUS_COMPLETED = 3;
                           while(!_loc2_)
                           {
                              continue loop3;
                              §_-lH§ = null;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                    addr36:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     if(_loc1_ || §_-nG§)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public var §_-I8§:Boolean = false;
      
      public var §_-rE§:Boolean = false;
      
      public var mName:String;
      
      public var §_-9o§:Boolean = false;
      
      public var §_-ca§:Boolean = false;
      
      public var §_-s0§:§_-5q§;
      
      public var §_-EU§:Array;
      
      public var mNextState:String = "";
      
      public var §_-FQ§:Sprite = null;
      
      public var §_-vC§:§_-Ue§ = null;
      
      public function §_-nG§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.mName = param2;
               loop1:
               for(; !_loc3_; while(true)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(!param1)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },§§goto(addr25))
               {
                  this.§_-EU§ = new Array();
                  while(true)
                  {
                     this.§_-FQ§ = new Sprite();
                     continue loop1;
                     addr53:
                     if(_loc4_ || param2)
                     {
                        addr25:
                        return;
                        addr70:
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public static function §_-oh§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §_-nG§))
         {
            if(§_-lH§)
            {
               if(!_loc2_)
               {
                  return §_-lH§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-I8§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-5q§ = null;
         if(_loc4_)
         {
            if(!this.§_-I8§)
            {
               while(true)
               {
                  this.init();
                  addr68:
                  while(true)
                  {
                  }
               }
               addr66:
            }
            while(true)
            {
               §§push(this.§_-s0§);
               loop2:
               while(§§pop())
               {
                  while(!_loc5_)
                  {
                     this.§_-FQ§.addChild(this.§_-s0§);
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           §§push(this.§_-s0§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr66);
                     }
                     continue loop2;
                  }
                  §§goto(addr68);
               }
               var _loc3_:* = this.§_-EU§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_)
                  {
                     this.§_-FQ§.addChild(_loc1_);
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc1_.§_-nr§();
               }
               if(_loc4_)
               {
                  this.mNextState = "";
                  do
                  {
                     this.§_-rE§ = true;
                  }
                  while(!(_loc4_ || _loc3_));
                  
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §_-zx§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-5q§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§_-s0§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  addr53:
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§_-s0§);
                  }
                  var _loc3_:* = this.§_-EU§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(!_loc5_)
                     {
                        _loc1_.§_-nr§();
                        if(!(_loc4_ || _loc1_))
                        {
                           continue;
                        }
                     }
                     this.§_-FQ§.removeChild(_loc1_);
                  }
                  if(!_loc5_)
                  {
                     §§push(this.§_-rE§);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              §§goto(addr173);
                           }
                           §§goto(addr174);
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              this.§_-rE§ = false;
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(this.§_-ca§);
                                       if(_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                this.cleanup();
                                             }
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                §§goto(addr174);
                                             }
                                          }
                                          return;
                                       }
                                       addr173:
                                       addr171:
                                       if(this.§_-ca§)
                                       {
                                          addr174:
                                          this.cleanup();
                                       }
                                       return;
                                       §§goto(addr174);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr171);
               }
               §§goto(addr53);
            }
            §§pop().§_-nr§();
            if(!_loc5_)
            {
               this.§_-FQ§.removeChild(this.§_-s0§);
            }
         }
         §§goto(addr53);
      }
      
      public function §_-vO§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-ca§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§_-I8§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
               loop0:
               while(true)
               {
                  addr110:
                  while(true)
                  {
                     this.§_-s0§ = null;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(this.§_-EU§);
                        if(_loc1_)
                        {
                           if(§§pop().length <= 0)
                           {
                              while(_loc1_)
                              {
                                 if(this.§_-rE§)
                                 {
                                    while(true)
                                    {
                                       this.deActivate();
                                       addr64:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr62:
                                 }
                                 while(true)
                                 {
                                    this.§_-I8§ = false;
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §§goto(addr62);
                                 }
                                 if(_loc1_)
                                 {
                                    return;
                                 }
                              }
                              continue;
                           }
                           §§push(this.§_-EU§);
                        }
                        (§§pop().pop() as §_-5q§).clear();
                     }
                  }
               }
               addr122:
            }
            while(true)
            {
               §§push(this.§_-s0§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr109:
                        this.§_-s0§.clear();
                     }
                     §§goto(addr110);
                  }
                  break;
               }
               §§goto(addr109);
               §§goto(addr122);
            }
            §§goto(addr65);
         }
         §§goto(addr110);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§_-I8§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-rE§);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ || param1))
                        {
                           break loop0;
                        }
                        §§push(§_-FK§);
                        §§push("WARNING: State -> run() method is called when state is not active: ");
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + this.mName);
                        }
                        §§pop().log(§§pop());
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(§_-JX§);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop1;
                           }
                           addr110:
                        }
                     }
                     else
                     {
                        §§push(STATE_STATUS_RUNNING);
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                     §§goto(addr109);
                  }
                  continue loop0;
               }
               addr109:
               return §§pop();
               §§push(§_-a6§);
            }
            §§push(§_-FK§);
            §§push("WARNING: State -> run() method is called when state is not ready: ");
            if(_loc2_)
            {
               §§push(§§pop() + this.mName);
            }
            §§pop().log(§§pop());
            §§goto(addr122);
         }
         §§goto(addr110);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-9o§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
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
      
      public function §_-ys§(param1:§_-5q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-EU§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-FQ§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-FQ§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-FQ§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-vC§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§_-vC§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().getAppWidth();
         }
         addr50:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-vC§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr43);
                  }
               }
               return 0;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§_-vC§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§_-s0§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-s0§);
                     addr84:
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        loop2:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           addr86:
                           while(true)
                           {
                              §§push(this.§_-s0§);
                              if(_loc3_ || param2)
                              {
                                 §§push(param2);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().viewHeight = §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      public function §_-lf§() : int
      {
         return §_-zC§;
      }
   }
}
