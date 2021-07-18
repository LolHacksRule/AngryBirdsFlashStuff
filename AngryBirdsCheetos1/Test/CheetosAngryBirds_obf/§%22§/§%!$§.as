package §"§
{
   import §'!D§.§08§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §%!$§
   {
      
      public static const §+d§:int = 60;
      
      public static const §7!@§:String = "dummyState";
      
      public static const §'!=§:int = 0;
      
      public static const §]!P§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §@!'§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+d§ = 60;
            loop0:
            while(true)
            {
               §7!@§ = "dummyState";
               addr105:
               while(true)
               {
                  §'!=§ = 0;
                  addr100:
                  while(true)
                  {
                     §]!P§ = 1;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            STATE_STATUS_RUNNING = 2;
            loop5:
            while(true)
            {
               if(!_loc1_)
               {
                  STATE_STATUS_COMPLETED = 3;
                  for(; _loc2_; §@!'§ = null,if(!(_loc1_ && _loc2_))
                  {
                     continue loop5;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr100);
               }
               break;
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
            §§goto(addr78);
         }
      }
      
      public var §]!3§:Boolean = false;
      
      public var §2A§:Boolean = false;
      
      public var mName:String;
      
      public var §2i§:Boolean = false;
      
      public var §,h§:Boolean = false;
      
      public var §%!0§:§5!§;
      
      public var §&!3§:Array;
      
      public var mNextState:String = "";
      
      public var §8!2§:Sprite = null;
      
      public var §]!2§:§]!&§ = null;
      
      public function §%!$§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.mName = param2;
               loop1:
               for(; _loc3_ || _loc3_; while(true)
               {
                  if(_loc3_ || param2)
                  {
                     if(!param1)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr49:
                     continue;
                  }
                  continue loop1;
               },return)
               {
                  this.§&!3§ = new Array();
                  while(true)
                  {
                     this.§8!2§ = new Sprite();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §'!A§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§@!'§)
            {
               if(_loc2_)
               {
                  §§goto(addr47);
               }
            }
            return null;
         }
         addr47:
         return §@!'§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§]!3§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5!§ = null;
         if(!_loc4_)
         {
            if(!this.§]!3§)
            {
               if(_loc5_ || _loc2_)
               {
                  this.init();
                  addr79:
                  while(true)
                  {
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            loop0:
            while(true)
            {
               §§push(this.§%!0§);
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(_loc5_)
                  {
                     this.§8!2§.addChild(this.§%!0§);
                     while(true)
                     {
                        §§push(this.§%!0§);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§pop().§%>§();
                        if(!(_loc4_ && this))
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  §§goto(addr79);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§&!3§)
               {
                  if(_loc5_)
                  {
                     this.§8!2§.addChild(_loc1_);
                     if(_loc5_)
                     {
                        _loc1_.§#j§();
                     }
                  }
               }
               if(!_loc4_)
               {
                  this.mNextState = "";
                  do
                  {
                     this.§2A§ = true;
                  }
                  while(_loc4_ && _loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5!§ = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§%!0§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr41:
                     this.§%!0§.§#j§();
                     if(!_loc5_)
                     {
                     }
                     addr49:
                     var _loc3_:* = this.§&!3§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc1_.§#j§();
                           if(!(_loc4_ && _loc1_))
                           {
                              this.§8!2§.removeChild(_loc1_);
                           }
                        }
                     }
                     if(_loc5_ || _loc1_)
                     {
                        §§push(this.§2A§);
                        if(_loc5_ || this)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§2A§ = false;
                                 while(true)
                                 {
                                    §§push(this.§,h§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      this.cleanup();
                                                      addr139:
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            break;
                                                         }
                                                         addr180:
                                                         this.cleanup();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr177:
                                                      if(this.§,h§)
                                                      {
                                                         §§goto(addr180);
                                                      }
                                                   }
                                                   return;
                                                }
                                                continue loop1;
                                             }
                                             continue;
                                          }
                                          §§goto(addr139);
                                       }
                                       break;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  this.§8!2§.removeChild(this.§%!0§);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr41);
      }
      
      public function §>!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,h§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§]!3§)
            {
               while(true)
               {
                  §§push(this.§%!0§);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        for(; _loc1_; while(true)
                        {
                           §§pop().clear();
                           do
                           {
                              this.§%!0§ = null;
                           }
                           while(!(_loc1_ || _loc2_));
                           
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        },if(!(_loc1_ || this))
                        {
                           §§goto(addr146);
                        })
                        {
                           while(true)
                           {
                              §§push(this.§%!0§);
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     loop4:
                     while(true)
                     {
                        §§push(this.§&!3§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop().length <= 0)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && this))
                              {
                                 if(this.§2A§)
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    this.§]!3§ = false;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr39:
                                       if(_loc1_ || this)
                                       {
                                          break;
                                       }
                                       break loop4;
                                    }
                                    addr84:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 return;
                              }
                              continue;
                           }
                           §§push(this.§&!3§);
                        }
                        (§§pop().pop() as §5!§).clear();
                     }
                     while(true)
                     {
                        this.deActivate();
                        §§goto(addr84);
                        §§goto(addr39);
                     }
                  }
                  §§goto(addr141);
               }
            }
            addr146:
            return;
         }
         §§goto(addr139);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§]!3§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §!6§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
                  }
                  §§push(§'!=§);
                  break;
               }
               §§push(this.§2A§);
               if(!(_loc2_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr75:
                        §!6§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                     }
                     §§push(§]!P§);
                  }
                  else
                  {
                     §§push(STATE_STATUS_RUNNING);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
                  break;
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2i§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
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
      
      public function §@!=§(param1:§5!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!3§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§8!2§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!2§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8!2§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]!2§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§]!2§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]!2§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§]!2§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().getAppHeight();
         }
         addr55:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§%!0§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%!0§);
                     addr75:
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        loop2:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           addr77:
                           while(true)
                           {
                              §§push(this.§%!0§);
                              if(!_loc3_)
                              {
                                 §§push(param2);
                                 if(_loc4_)
                                 {
                                    §§pop().viewHeight = §§pop();
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
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
            §§goto(addr75);
         }
         §§goto(addr77);
      }
      
      public function §7!`§() : int
      {
         return §+d§;
      }
   }
}
