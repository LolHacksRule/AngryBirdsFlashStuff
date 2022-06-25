package §4H§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §>!-§.UIEventListenerRovio;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase
   {
      
      public static const §'!%§:int = 60;
      
      public static const §&r§:String = "dummyState";
      
      public static const §&!P§:int = 0;
      
      public static const §3Q§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §"z§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!%§ = 60;
            while(true)
            {
               §&r§ = "dummyState";
               loop5:
               while(!(_loc1_ && StateBase))
               {
                  §"z§ = null;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr35:
                  if(_loc2_ || _loc1_)
                  {
                     addr52:
                     if(_loc1_)
                     {
                        while(_loc2_ || StateBase)
                        {
                           STATE_STATUS_RUNNING = 2;
                           while(true)
                           {
                              STATE_STATUS_COMPLETED = 3;
                              continue loop5;
                              §§goto(addr35);
                           }
                           §§goto(addr52);
                        }
                        while(_loc2_ || _loc2_)
                        {
                           §3Q§ = 1;
                           §§goto(addr86);
                        }
                        addr86:
                        while(true)
                        {
                           §&!P§ = 0;
                           §§goto(addr98);
                        }
                        addr98:
                        addr110:
                     }
                     return;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr110);
      }
      
      public var §'n§:Boolean = false;
      
      public var §;!M§:Boolean = false;
      
      public var mName:String;
      
      public var §@V§:Boolean = false;
      
      public var §^!'§:Boolean = false;
      
      public var §5!M§:§6"§;
      
      public var §-x§:Array;
      
      public var mNextState:String = "";
      
      public var §'6§:Sprite = null;
      
      public var §4!R§:StateManager = null;
      
      public function StateBase(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mName = param2;
            loop1:
            while(true)
            {
               this.§-x§ = new Array();
               loop2:
               while(_loc3_)
               {
                  this.§'6§ = new Sprite();
                  while(param1)
                  {
                     if(!(_loc4_ && param2))
                     {
                        continue loop1;
                     }
                     addr68:
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
               continue loop0;
            }
         }
      }
      
      public static function §#1§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§"z§)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return §"z§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'n§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6"§ = null;
         if(!_loc4_)
         {
            §§push(this.§'n§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        this.init();
                     }
                     loop2:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(this.§5!M§);
                              if(_loc5_ || _loc2_)
                              {
                                 §§pop().activateView();
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 addr37:
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§'6§.addChild(this.§5!M§);
                                       continue loop6;
                                       §§goto(addr37);
                                    }
                                    addr55:
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       §§goto(addr94);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§5!M§);
                                       break loop6;
                                    }
                                 }
                              }
                              break;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        addr94:
                        var _loc3_:* = this.§-x§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(_loc5_ || this)
                           {
                              this.§'6§.addChild(_loc1_);
                              if(_loc5_ || _loc1_)
                              {
                                 _loc1_.§"!e§();
                              }
                           }
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           this.mNextState = "";
                           do
                           {
                              this.§;!M§ = true;
                           }
                           while(!_loc5_);
                           
                        }
                        return;
                     }
                  }
                  §§goto(addr41);
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §6!,§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§6"§ = null;
         if(_loc4_)
         {
            §§push(this.§5!M§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr41:
                     this.§5!M§.§"!e§();
                     if(_loc4_)
                     {
                        addr45:
                        this.§'6§.removeChild(this.§5!M§);
                     }
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§-x§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_.§"!e§();
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  this.§'6§.removeChild(_loc1_);
               }
               if(_loc4_)
               {
                  §§push(this.§;!M§);
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     loop1:
                     while(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§;!M§ = false;
                           while(true)
                           {
                              §§push(this.§^!'§);
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(_loc4_)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             addr173:
                                             this.cleanup();
                                          }
                                          §§goto(addr157);
                                       }
                                       this.cleanup();
                                    }
                                    if(_loc4_)
                                    {
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          break;
                                       }
                                       break loop1;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                           return;
                        }
                     }
                     addr170:
                     §§push(this.§^!'§);
                  }
                  if(§§pop())
                  {
                     §§goto(addr173);
                  }
                  addr157:
                  return;
               }
               §§goto(addr170);
            }
            §§goto(addr41);
         }
         §§goto(addr45);
      }
      
      public function §+l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^!'§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'n§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§5!M§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§5!M§);
                              addr130:
                              while(true)
                              {
                                 §§pop().clear();
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§5!M§ = null;
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              addr106:
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        addr42:
                        §§push(this.§-x§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop().length <= 0)
                           {
                              addr55:
                              if(this.§;!M§)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.deActivate();
                                 }
                                 addr78:
                                 if(!_loc2_)
                                 {
                                    addr28:
                                    this.§'n§ = false;
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr55);
                                       }
                                       return;
                                    }
                                    §§goto(addr78);
                                 }
                                 addr92:
                                 §§goto(addr42);
                              }
                              §§goto(addr28);
                           }
                           §§push(this.§-x§);
                        }
                        (§§pop().pop() as §6"§).clear();
                        §§goto(addr92);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr81);
               }
            }
         }
         addr146:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'n§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§;!M§);
                     if(_loc2_ || this)
                     {
                        §§push(!§§pop());
                     }
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(!§§pop())
                     {
                        §§push(STATE_STATUS_RUNNING);
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                        break;
                     }
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(Log);
                           §§push("WARNING: State -> run() method is called when state is not active: ");
                           if(_loc2_)
                           {
                              §§push(§§pop() + this.mName);
                           }
                           §§pop().log(§§pop());
                           if(!_loc3_)
                           {
                              §§push(§3Q§);
                              break loop2;
                           }
                           if(_loc3_ && this)
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                        addr102:
                        return §§pop();
                        addr76:
                     }
                     §§goto(addr102);
                     §§push(§&!P§);
                  }
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr102);
               }
               §§push(Log);
               §§push("WARNING: State -> run() method is called when state is not ready: ");
               if(_loc2_)
               {
                  §§push(§§pop() + this.mName);
               }
               §§pop().log(§§pop());
               §§goto(addr125);
            }
         }
         §§goto(addr76);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§@V§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
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
      
      public function §5!!§(param1:§6"§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-x§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'6§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'6§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§'6§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4!R§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§4!R§);
                  }
                  else
                  {
                     §§goto(addr30);
                  }
               }
               §§goto(addr30);
            }
            return §§pop().getAppWidth();
         }
         addr30:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4!R§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§4!R§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().getAppHeight();
         }
         addr45:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§5!M§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§5!M§);
                     loop0:
                     while(true)
                     {
                        §§push(param1);
                        addr87:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           continue loop0;
                        }
                     }
                     addr86:
                  }
                  §§goto(addr88);
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr88);
      }
      
      public function §5!Q§() : int
      {
         return §'!%§;
      }
   }
}
