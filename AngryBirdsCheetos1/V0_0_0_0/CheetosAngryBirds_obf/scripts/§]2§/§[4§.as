package §]2§
{
   import §+?§.§,!N§;
   import §@,§.§4h§;
   import §@R§.§]^§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §[4§
   {
      
      public static const §=!D§:String = "dummyState";
      
      public static const §0,§:int = 0;
      
      public static const §^Z§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §@z§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!D§ = "dummyState";
            while(true)
            {
               §0,§ = 0;
               loop1:
               while(_loc2_ || §[4§)
               {
                  while(true)
                  {
                     §^Z§ = 1;
                     loop3:
                     while(true)
                     {
                        STATE_STATUS_RUNNING = 2;
                        while(true)
                        {
                           STATE_STATUS_COMPLETED = 3;
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §@z§ = null;
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public var §!!4§:Boolean = false;
      
      public var §4!>§:Boolean = false;
      
      public var mName:String;
      
      public var §2!@§:Boolean = false;
      
      public var §]O§:Boolean = false;
      
      public var §"c§:§,!N§;
      
      public var §1!=§:Array;
      
      public var mNextState:String = "";
      
      public var §9!A§:Sprite = null;
      
      public var §[!U§:§%!B§ = null;
      
      public function §[4§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param2;
               addr91:
               while(true)
               {
                  this.§1!=§ = new Array();
                  continue loop0;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §59§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§@z§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr47);
               }
            }
            return null;
         }
         addr47:
         return §@z§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!!4§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!N§ = null;
         if(!(_loc4_ && this))
         {
            if(!this.§!!4§)
            {
               loop0:
               while(true)
               {
                  this.init();
                  addr79:
                  while(true)
                  {
                  }
                  loop8:
                  while(true)
                  {
                     if(!(_loc5_ || this))
                     {
                        continue loop0;
                     }
                     §§push(this.§"c§);
                     if(_loc5_)
                     {
                        §§pop().§'$§();
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(this.§"c§);
                                 addr43:
                                 while(§§pop())
                                 {
                                    while(!(_loc4_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§9!A§.addChild(this.§"c§);
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr79);
                                 }
                              }
                              addr40:
                           }
                           var _loc3_:* = this.§1!=§;
                           for each(_loc1_ in _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 this.§9!A§.addChild(_loc1_);
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              _loc1_.§[!F§();
                           }
                           if(!(_loc4_ && _loc3_))
                           {
                              this.mNextState = "";
                           }
                           do
                           {
                              this.§4!>§ = true;
                           }
                           while(!(_loc5_ || _loc3_));
                           
                           return;
                        }
                        §§goto(addr44);
                     }
                     §§goto(addr43);
                  }
               }
            }
            §§goto(addr40);
         }
         §§goto(addr51);
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!N§ = null;
         if(_loc5_ || this)
         {
            §§push(this.§"c§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     addr46:
                     this.§"c§.§[!F§();
                     if(_loc5_ || _loc2_)
                     {
                     }
                     addr59:
                     var _loc2_:int = 0;
                     var _loc3_:* = this.§1!=§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(_loc5_)
                        {
                           _loc1_.§[!F§();
                           if(!_loc5_)
                           {
                              continue;
                           }
                        }
                        this.§9!A§.removeChild(_loc1_);
                     }
                     if(_loc5_)
                     {
                        §§push(this.§4!>§);
                        if(_loc5_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr174);
                              }
                              §§goto(addr177);
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 this.§4!>§ = false;
                                 while(true)
                                 {
                                    §§push(this.§]O§);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             this.cleanup();
                                          }
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc4_ && _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc4_)
                                             {
                                                addr141:
                                                break;
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       break;
                                    }
                                    addr174:
                                    if(this.§]O§)
                                    {
                                       addr175:
                                       this.cleanup();
                                       addr177:
                                    }
                                    return;
                                    §§goto(addr174);
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr141);
                  }
                  this.§9!A§.removeChild(this.§"c§);
               }
               §§goto(addr59);
            }
         }
         §§goto(addr46);
      }
      
      public function §81§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]O§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§!!4§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
               while(true)
               {
               }
               addr138:
            }
            loop0:
            while(true)
            {
               §§push(this.§"c§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§"c§);
                        addr113:
                        loop2:
                        while(true)
                        {
                           §§pop().clear();
                           while(!_loc1_)
                           {
                              this.§"c§ = null;
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr43:
                  §§push(this.§1!=§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(this.§4!>§)
                           {
                              addr76:
                              this.deActivate();
                              if(!_loc1_)
                              {
                                 addr24:
                                 this.§!!4§ = false;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       §§goto(addr76);
                                    }
                                    return;
                                 }
                                 §§goto(addr76);
                              }
                              addr90:
                              §§goto(addr43);
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr76);
                     }
                     §§push(this.§1!=§);
                  }
                  (§§pop().pop() as §,!N§).clear();
                  §§goto(addr90);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr138);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§!!4§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4!>§);
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        addr24:
                        §§push(STATE_STATUS_RUNNING);
                        if(!(_loc3_ && this))
                        {
                           return §§pop();
                        }
                        break;
                     }
                     §4h§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                     if(_loc2_)
                     {
                        §§push(§^Z§);
                        break;
                     }
                     if(_loc2_ || _loc3_)
                     {
                        continue;
                     }
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
                  break;
               }
               if(_loc2_)
               {
                  §4h§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2!@§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
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
      
      public function §4!&§(param1:§,!N§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1!=§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§9!A§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!A§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§9!A§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§[!U§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr62);
                  }
               }
               return 0;
            }
            §§goto(addr62);
         }
         addr62:
         return this.§[!U§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§[!U§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§[!U§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§"c§);
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§"c§);
                  addr79:
                  while(true)
                  {
                     §§push(param1);
                     addr80:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                     }
                  }
               }
               addr43:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§push(param2);
               if(!_loc4_)
               {
                  §§pop().viewHeight = §§pop();
                  if(_loc3_ || param2)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr77);
                     }
                     break;
                     addr63:
                  }
                  while(true)
                  {
                     §§push(this.§"c§);
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr63);
                  addr81:
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr81);
      }
   }
}
