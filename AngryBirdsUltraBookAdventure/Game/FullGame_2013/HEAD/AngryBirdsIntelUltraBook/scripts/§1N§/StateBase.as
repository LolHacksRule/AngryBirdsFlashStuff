package §1N§
{
   import §0!Q§.UIEventListenerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase
   {
      
      public static const §5!N§:int = 60;
      
      public static const §<!8§:String = "dummyState";
      
      public static const §@!J§:int = 0;
      
      public static const §>!D§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §9!4§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!N§ = 60;
            while(true)
            {
               §<!8§ = "dummyState";
               addr77:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               STATE_STATUS_COMPLETED = 3;
               do
               {
                  §9!4§ = null;
               }
               while(!_loc1_);
               
               addr84:
               if(_loc1_ || StateBase)
               {
                  addr36:
                  if(_loc1_ || StateBase)
                  {
                     addr53:
                     if(!_loc1_)
                     {
                        loop1:
                        while(true)
                        {
                           §@!J§ = 0;
                           loop2:
                           while(true)
                           {
                              §>!D§ = 1;
                              addr89:
                              while(true)
                              {
                                 STATE_STATUS_RUNNING = 2;
                                 addr75:
                                 while(_loc1_)
                                 {
                                    §§goto(addr77);
                                    §§goto(addr84);
                                 }
                                 continue loop2;
                                 §§goto(addr36);
                              }
                              continue loop1;
                           }
                        }
                        addr99:
                     }
                     return;
                  }
                  §§goto(addr89);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr99);
      }
      
      public var §&!C§:Boolean = false;
      
      public var §]`§:Boolean = false;
      
      public var mName:String;
      
      public var §1!O§:Boolean = false;
      
      public var §8$§:Boolean = false;
      
      public var §`=§:§`X§;
      
      public var §"0§:Array;
      
      public var mNextState:String = "";
      
      public var §"!,§:Sprite = null;
      
      public var §^c§:StateManager = null;
      
      public function StateBase(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.mName = param2;
               while(_loc4_ || param2)
               {
                  this.§"0§ = new Array();
                  loop2:
                  while(_loc4_)
                  {
                     this.§"!,§ = new Sprite();
                     while(param1)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           this.init();
                           §§goto(addr44);
                           continue loop2;
                        }
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §!!Z§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§9!4§)
            {
               if(!_loc2_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return §9!4§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§&!C§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`X§ = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§&!C§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.init();
                        addr92:
                        while(true)
                        {
                        }
                     }
                     addr89:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(this.§`=§);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 this.§"!,§.addChild(this.§`=§);
                              }
                              loop6:
                              for(; !(_loc5_ && _loc2_); §§pop().activateView(),if(!(_loc4_ || this))
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§goto(addr89);
                              })
                              {
                                 while(true)
                                 {
                                    §§push(this.§`=§);
                                    if(!_loc5_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                              §§goto(addr92);
                           }
                           var _loc3_:* = this.§"0§;
                           for each(_loc1_ in _loc3_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 this.§"!,§.addChild(_loc1_);
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              _loc1_.§&!N§();
                           }
                           if(!(_loc5_ && _loc1_))
                           {
                              this.mNextState = "";
                           }
                           do
                           {
                              this.§]`§ = true;
                           }
                           while(!(_loc4_ || _loc3_));
                           
                           return;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §"!4§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`X§ = null;
         if(!_loc5_)
         {
            §§push(this.§`=§);
            if(!(_loc5_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr41:
                     this.§`=§.§&!N§();
                     if(_loc4_)
                     {
                        addr45:
                        this.§"!,§.removeChild(this.§`=§);
                     }
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§"0§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.§&!N§();
                     if(!_loc5_)
                     {
                        this.§"!,§.removeChild(_loc1_);
                     }
                  }
               }
               if(_loc4_)
               {
                  §§push(this.§]`§);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc5_)
                     {
                        addr167:
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr177);
                           }
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              this.§]`§ = false;
                              while(_loc4_ || _loc2_)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(this.§8$§);
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             this.cleanup();
                                          }
                                          if(!(_loc4_ || _loc1_))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr178);
                              }
                           }
                        }
                        §§goto(addr178);
                     }
                     addr177:
                     if(this.§8$§)
                     {
                        addr178:
                        this.cleanup();
                     }
                     return;
                  }
                  §§goto(addr167);
               }
               §§goto(addr159);
            }
            §§goto(addr41);
         }
         §§goto(addr45);
      }
      
      public function §,!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8$§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§&!C§);
            if(!_loc1_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr127:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     addr136:
                     this.§`=§.clear();
                     do
                     {
                        this.§`=§ = null;
                     }
                     while(_loc1_ && this);
                     
                     addr72:
                     while(true)
                     {
                        §§push(this.§"0§);
                        if(_loc2_)
                        {
                           if(§§pop().length <= 0)
                           {
                              if(_loc2_)
                              {
                                 if(this.§]`§)
                                 {
                                    if(_loc2_)
                                    {
                                       this.deActivate();
                                       addr54:
                                       while(!(_loc1_ && _loc2_))
                                       {
                                       }
                                       continue;
                                       addr54:
                                    }
                                    §§goto(addr54);
                                 }
                                 while(true)
                                 {
                                    this.§&!C§ = false;
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr71);
                                 }
                                 return;
                              }
                              §§goto(addr54);
                           }
                           else
                           {
                              §§push(this.§"0§);
                           }
                        }
                        (§§pop().pop() as §`X§).clear();
                     }
                     addr138:
                  }
               }
               while(true)
               {
                  §§push(this.§`=§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           §§goto(addr127);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr72);
                  }
                  break;
               }
               §§goto(addr136);
            }
            return;
         }
         §§goto(addr134);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§&!C§);
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
            }
            while(!§§pop())
            {
               §§push(this.§]`§);
               if(!_loc3_)
               {
                  §§push(!§§pop());
               }
               if(_loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(Log);
                        §§push("WARNING: State -> run() method is called when state is not active: ");
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + this.mName);
                        }
                        §§pop().log(§§pop());
                        addr42:
                        return §>!D§;
                        addr103:
                     }
                     addr107:
                     return §@!J§;
                     addr130:
                  }
                  §§goto(addr103);
               }
               else
               {
                  §§push(STATE_STATUS_RUNNING);
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr42);
            }
         }
         §§push(Log);
         §§push("WARNING: State -> run() method is called when state is not ready: ");
         if(!_loc3_)
         {
            §§push(§§pop() + this.mName);
         }
         §§pop().log(§§pop());
         §§goto(addr130);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§1!O§;
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
      
      public function §0! §(param1:§`X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"0§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§"!,§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!,§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§"!,§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§^c§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§^c§);
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
         if(_loc2_ || _loc1_)
         {
            §§push(this.§^c§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§^c§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return §§pop().getAppHeight();
         }
         addr46:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§`=§);
            loop0:
            for(; §§pop(); if(_loc3_)
            {
               continue;
            },§§push(param2),if(!(_loc3_ && param1))
            {
               §§pop().viewHeight = §§pop();
               if(!_loc4_)
               {
                  §§goto(addr88);
               }
               break;
            },§§goto(addr87))
            {
               if(_loc4_ || _loc3_)
               {
                  while(true)
                  {
                     §§push(this.§`=§);
                     addr86:
                     while(true)
                     {
                        §§push(param1);
                        addr87:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                        }
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  §§push(this.§`=§);
                  if(_loc4_ || _loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr86);
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §>Y§() : int
      {
         return §5!N§;
      }
   }
}
