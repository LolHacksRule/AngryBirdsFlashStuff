package §<!>§
{
   import §2h§.§'!^§;
   import §9Y§.§6!8§;
   import §^_§.§!>§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §?Y§
   {
      
      public static const §^!7§:int = 60;
      
      public static const §-!'§:String = "dummyState";
      
      public static const §#E§:int = 0;
      
      public static const §^!]§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §'!;§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!7§ = 60;
            while(true)
            {
               §-!'§ = "dummyState";
               loop1:
               while(!(_loc1_ && §?Y§))
               {
                  §#E§ = 0;
                  loop2:
                  while(true)
                  {
                     §^!]§ = 1;
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
                                 §'!;§ = null;
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
      
      public var §<"§:Boolean = false;
      
      public var §2c§:Boolean = false;
      
      public var mName:String;
      
      public var §8g§:Boolean = false;
      
      public var §<!W§:Boolean = false;
      
      public var §5!P§:§'!^§;
      
      public var §5!S§:Array;
      
      public var mNextState:String = "";
      
      public var §8X§:Sprite = null;
      
      public var §&!C§:§>!C§ = null;
      
      public function §?Y§(param1:Boolean, param2:String)
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
                  this.§5!S§ = new Array();
                  while(true)
                  {
                     this.§8X§ = new Sprite();
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
      
      public static function §&!I§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§'!;§)
            {
               if(!_loc2_)
               {
                  return §'!;§[param1];
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
            this.§<"§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'!^§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§<"§)
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
               §§push(this.§5!P§);
               loop3:
               while(§§pop())
               {
                  loop4:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§8X§.addChild(this.§5!P§);
                        while(true)
                        {
                           §§push(this.§5!P§);
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
               for each(_loc1_ in this.§5!S§)
               {
                  if(_loc4_)
                  {
                     this.§8X§.addChild(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.§3a§();
               }
               if(!(_loc5_ && _loc1_))
               {
                  this.mNextState = "";
                  do
                  {
                     this.§2c§ = true;
                  }
                  while(!_loc4_);
                  
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §9U§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'!^§ = null;
         if(_loc5_ || this)
         {
            §§push(this.§5!P§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr41:
                     this.§5!P§.§3a§();
                     addr39:
                     if(_loc5_ || _loc1_)
                     {
                     }
                     addr54:
                     var _loc3_:* = this.§5!S§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc1_.§3a§();
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                        }
                        this.§8X§.removeChild(_loc1_);
                     }
                     if(_loc5_)
                     {
                        §§push(this.§2c§);
                        if(_loc5_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§2c§ = false;
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(this.§<!W§);
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
                           §§push(this.§<!W§);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr170);
                  }
                  this.§8X§.removeChild(this.§5!P§);
               }
               §§goto(addr54);
            }
            §§goto(addr41);
         }
         §§goto(addr39);
      }
      
      public function §62§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§<!W§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§<"§)
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
                     this.§5!P§ = null;
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
               §§push(this.§5!P§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §§push(this.§5!P§);
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
               §§push(this.§5!S§);
               if(!_loc2_)
               {
                  if(§§pop().length <= 0)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(this.§2c§)
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
                           this.§<"§ = false;
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
                     §§push(this.§5!S§);
                  }
               }
               (§§pop().pop() as §'!^§).clear();
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
            §§push(this.§<"§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc2_)
               {
                  §§push(§!>§);
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
         §#E§;
         return §§pop();
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8g§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
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
      
      public function §^! §(param1:§'!^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5!S§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§8X§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8X§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8X§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&!C§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§&!C§);
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
            §§push(this.§&!C§);
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
         return this.§&!C§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§5!P§);
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
                     §§push(this.§5!P§);
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
                  §§push(this.§5!P§);
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
      
      public function § a§() : int
      {
         return §^!7§;
      }
   }
}
