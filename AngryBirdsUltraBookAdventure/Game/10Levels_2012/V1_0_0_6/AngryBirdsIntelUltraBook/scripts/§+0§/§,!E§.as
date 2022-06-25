package §+0§
{
   import §"x§.§-8§;
   import §>7§.§,!c§;
   import §[!+§.§4`§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,!E§
   {
      
      public static const § !A§:int = 60;
      
      public static const §'!=§:String = "dummyState";
      
      public static const §,!4§:int = 0;
      
      public static const §`g§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §4!k§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !A§ = 60;
            while(true)
            {
               §'!=§ = "dummyState";
               loop1:
               while(!(_loc1_ && §,!E§))
               {
                  §,!4§ = 0;
                  loop2:
                  while(true)
                  {
                     §`g§ = 1;
                     loop3:
                     while(true)
                     {
                        STATE_STATUS_RUNNING = 2;
                        loop4:
                        while(_loc2_)
                        {
                           STATE_STATUS_COMPLETED = 3;
                           loop5:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 §4!k§ = null;
                                 if(!_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr44);
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public var §?C§:Boolean = false;
      
      public var §=F§:Boolean = false;
      
      public var mName:String;
      
      public var §#!B§:Boolean = false;
      
      public var §^d§:Boolean = false;
      
      public var §&!m§:§4`§;
      
      public var §-4§:Array;
      
      public var mNextState:String = "";
      
      public var §2O§:Sprite = null;
      
      public var §&!g§:§3!B§ = null;
      
      public function §,!E§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param2;
               loop1:
               while(true)
               {
                  this.§-4§ = new Array();
                  while(true)
                  {
                     this.§2O§ = new Sprite();
                     addr43:
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(param1)
         {
            if(_loc4_)
            {
               this.init();
            }
            if(!_loc4_)
            {
               continue;
            }
            §§goto(addr43);
         }
         §§goto(addr20);
      }
      
      public static function §+!0§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§4!k§)
            {
               if(!_loc2_)
               {
                  return §4!k§[param1];
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
            this.§?C§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4`§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§?C§)
            {
               while(true)
               {
                  this.init();
                  addr73:
                  while(true)
                  {
                  }
               }
               addr71:
            }
            loop2:
            while(true)
            {
               §§push(this.§&!m§);
               loop3:
               while(§§pop())
               {
                  loop4:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§2O§.addChild(this.§&!m§);
                        while(true)
                        {
                           §§push(this.§&!m§);
                           if(_loc5_ && _loc2_)
                           {
                              break;
                           }
                           §§pop().activateView();
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop2;
                           }
                           §§goto(addr71);
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr73);
               }
               for each(_loc1_ in this.§-4§)
               {
                  if(_loc4_)
                  {
                     this.§2O§.addChild(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.§=X§();
               }
               if(!(_loc5_ && _loc1_))
               {
                  this.mNextState = "";
                  do
                  {
                     this.§=F§ = true;
                  }
                  while(!_loc4_);
                  
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §?!B§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4`§ = null;
         if(_loc5_ || this)
         {
            §§push(this.§&!m§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr41:
                     this.§&!m§.§=X§();
                     addr39:
                     if(_loc5_ || _loc1_)
                     {
                     }
                     addr54:
                     var _loc3_:* = this.§-4§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc1_.§=X§();
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                        }
                        this.§2O§.removeChild(_loc1_);
                     }
                     if(_loc5_)
                     {
                        §§push(this.§=F§);
                        if(_loc5_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§=F§ = false;
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(this.§^d§);
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.cleanup();
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      addr154:
                                                      return;
                                                      addr172:
                                                   }
                                                }
                                                return;
                                             }
                                             addr169:
                                             addr169:
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr169);
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr170:
                                 this.cleanup();
                                 §§goto(addr172);
                              }
                           }
                           §§push(this.§^d§);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr170);
                  }
                  this.§2O§.removeChild(this.§&!m§);
               }
               §§goto(addr54);
            }
            §§goto(addr41);
         }
         §§goto(addr39);
      }
      
      public function §6k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^d§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§?C§)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
                  addr110:
                  do
                  {
                     this.§&!m§ = null;
                  }
                  while(!_loc1_);
                  
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr65);
               }
               addr117:
            }
            while(true)
            {
               §§push(this.§&!m§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §§push(this.§&!m§);
                           addr109:
                           while(true)
                           {
                              §§pop().clear();
                           }
                        }
                        addr107:
                     }
                     §§goto(addr110);
                  }
                  break;
               }
               §§goto(addr109);
               §§goto(addr117);
            }
            addr65:
            while(true)
            {
               §§push(this.§-4§);
               if(!_loc2_)
               {
                  if(§§pop().length <= 0)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(this.§=F§)
                        {
                           if(!_loc2_)
                           {
                              addr62:
                              this.deActivate();
                           }
                           while(true)
                           {
                           }
                           addr64:
                        }
                        while(true)
                        {
                           this.§?C§ = false;
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr64);
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr62);
                  }
                  else
                  {
                     §§push(this.§-4§);
                  }
               }
               (§§pop().pop() as §4`§).clear();
            }
            return;
         }
         §§goto(addr107);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§?C§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc2_)
               {
                  §§push(§-8§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
               }
            }
            §§goto(addr97);
         }
         addr97:
         §,!4§;
         return §§pop();
      }
      
      public function isGenericState() : Boolean
      {
         return this.§#!B§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
      
      public function §@!`§(param1:§4`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-4§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§2O§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2O§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§2O§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&!g§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§&!g§);
                  }
                  else
                  {
                     §§goto(addr29);
                  }
               }
               §§goto(addr29);
            }
            return §§pop().getAppWidth();
         }
         addr29:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&!g§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr42);
                  }
               }
               return 0;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§&!g§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§&!m§);
            loop0:
            for(; §§pop(); if(!_loc3_)
            {
               continue;
            },§§push(param2),if(_loc3_ || param2)
            {
               §§pop().viewHeight = §§pop();
               if(!(_loc3_ || param1))
               {
                  §§goto(addr86);
               }
               break;
            },§§goto(addr85))
            {
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(this.§&!m§);
                     addr84:
                     while(true)
                     {
                        §§push(param1);
                        addr85:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                        }
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  §§push(this.§&!m§);
                  if(!(_loc4_ && _loc3_))
                  {
                     continue loop0;
                  }
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function §>9§() : int
      {
         return § !A§;
      }
   }
}
