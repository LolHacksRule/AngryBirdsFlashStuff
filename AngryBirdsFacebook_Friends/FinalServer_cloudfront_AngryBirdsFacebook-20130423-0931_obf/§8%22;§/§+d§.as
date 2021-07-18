package §8";§
{
   import §+!c§.§;!=§;
   import §1!t§.§""B§;
   import §`"%§.§`_§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §+d§
   {
      
      public static const §]!"§:int = 60;
      
      public static const §-!7§:String = "dummyState";
      
      public static const §7!D§:int = 0;
      
      public static const §8!I§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §!"R§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]!"§ = 60;
            while(true)
            {
               §-!7§ = "dummyState";
               addr39:
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
         while(true)
         {
            §7!D§ = 0;
            loop2:
            for(; !_loc2_; if(!(_loc1_ || _loc2_))
            {
               continue;
            },§§goto(addr70))
            {
               §8!I§ = 1;
               while(true)
               {
                  STATE_STATUS_RUNNING = 2;
                  loop4:
                  while(_loc1_ || _loc2_)
                  {
                     STATE_STATUS_COMPLETED = 3;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop4;
                        addr70:
                        §!"R§ = null;
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public var §>!%§:Boolean = false;
      
      public var §@!Q§:Boolean = false;
      
      public var mName:String;
      
      public var §]!§:Boolean = false;
      
      public var §8!Z§:Boolean = false;
      
      public var §2"@§:§`_§;
      
      public var §1!z§:Array;
      
      public var mNextState:String = "";
      
      public var §?!T§:Sprite = null;
      
      public var §8!G§:§6!9§ = null;
      
      public function §+d§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.mName = param2;
            loop1:
            while(_loc3_ || param1)
            {
               this.§1!z§ = new Array();
               loop2:
               while(true)
               {
                  this.§?!T§ = new Sprite();
                  do
                  {
                     if(_loc3_ || this)
                     {
                        if(!_loc4_)
                        {
                           if(!param1)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  while(if(_loc3_)
                  {
                     this.init();
                  }, _loc4_ && this);
                  
                  return;
               }
            }
         }
      }
      
      public static function §+!a§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§!"R§)
            {
               if(_loc2_)
               {
                  return §!"R§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§>!%§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`_§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.§>!%§)
            {
               while(true)
               {
                  this.init();
                  addr88:
                  addr47:
                  while(true)
                  {
                  }
                  if(_loc4_ || _loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           §§push(this.§2"@§);
                           loop3:
                           while(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§?!T§.addChild(this.§2"@§);
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    §§push(this.§2"@§);
                                    if(_loc4_)
                                    {
                                       §§pop().activateView();
                                       if(_loc4_ || _loc2_)
                                       {
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr88);
                              }
                           }
                        }
                        addr56:
                     }
                     var _loc3_:* = this.§1!z§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§?!T§.addChild(_loc1_);
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        _loc1_.§^#§();
                     }
                     if(!_loc5_)
                     {
                        this.mNextState = "";
                     }
                     do
                     {
                        this.§@!Q§ = true;
                     }
                     while(_loc5_);
                     
                     return;
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr70);
      }
      
      public function §=k§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`_§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§2"@§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr40:
                     this.§2"@§.§^#§();
                     if(_loc5_)
                     {
                     }
                     addr48:
                     var _loc3_:* = this.§1!z§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(_loc4_)
                        {
                           _loc1_.§^#§();
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        this.§?!T§.removeChild(_loc1_);
                     }
                     if(_loc4_)
                     {
                        §§push(this.§@!Q§);
                        loop1:
                        for(; §§pop(); if(!(_loc5_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    this.cleanup();
                                    addr111:
                                    if(_loc5_ && _loc3_)
                                    {
                                       addr147:
                                       §§goto(addr88);
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
                                       addr142:
                                       §§goto(addr88);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr111);
                           }
                           addr88:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(this.§8!Z§);
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       addr164:
                                       this.cleanup();
                                    }
                                 }
                                 else
                                 {
                                    addr163:
                                 }
                                 continue loop1;
                                 return;
                              }
                              §§goto(addr164);
                           }
                           return;
                        })
                        {
                           while(true)
                           {
                              this.§@!Q§ = false;
                              §§goto(addr147);
                           }
                        }
                        §§goto(addr163);
                        §§push(this.§8!Z§);
                     }
                     §§goto(addr142);
                  }
                  this.§?!T§.removeChild(this.§2"@§);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr40);
      }
      
      public function §get §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!Z§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§>!%§)
            {
               while(true)
               {
                  §§push(this.§2"@§);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           §§goto(addr142);
                        }
                        addr137:
                        this.§2"@§.clear();
                     }
                     do
                     {
                        this.§2"@§ = null;
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr137);
               }
               loop2:
               while(true)
               {
                  §§push(this.§1!z§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop().length <= 0)
                     {
                        do
                        {
                           if(this.§@!Q§)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 this.deActivate();
                              }
                              while(_loc2_)
                              {
                              }
                              continue loop2;
                              addr78:
                           }
                           while(true)
                           {
                              this.§>!%§ = false;
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr78);
                           }
                        }
                        while(_loc1_ && this);
                        
                        return;
                     }
                     §§push(this.§1!z§);
                  }
                  (§§pop().pop() as §`_§).clear();
               }
            }
         }
         addr142:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§>!%§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§;!=§);
                     §§push("WARNING: State -> run() method is called when state is not ready: ");
                     if(!_loc3_)
                     {
                        §§push(§§pop() + this.mName);
                     }
                     §§pop().log(§§pop());
                  }
                  §§push(§7!D§);
                  break;
               }
               §§push(this.§@!Q§);
               if(!(_loc3_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§push(§;!=§);
                     §§push("WARNING: State -> run() method is called when state is not active: ");
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + this.mName);
                     }
                     §§pop().log(§§pop());
                     §§push(§8!I§);
                     addr109:
                  }
                  else
                  {
                     §§push(STATE_STATUS_RUNNING);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
                  break;
               }
            }
            return §§pop();
         }
         §§goto(addr109);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§]!§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
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
      
      public function §`l§(param1:§`_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!z§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!T§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!T§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§?!T§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8!G§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr43);
                  }
               }
               return 0;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§8!G§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§8!G§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§8!G§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§2"@§);
            while(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  §§push(this.§2"@§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr80:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr79:
               }
               addr43:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(param2);
               if(_loc3_)
               {
                  §§pop().viewHeight = §§pop();
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§2"@§);
                        if(!_loc4_)
                        {
                           §§goto(addr43);
                        }
                        else
                        {
                           §§goto(addr79);
                        }
                     }
                     addr81:
                  }
                  break;
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §1!_§() : int
      {
         return §]!"§;
      }
   }
}
