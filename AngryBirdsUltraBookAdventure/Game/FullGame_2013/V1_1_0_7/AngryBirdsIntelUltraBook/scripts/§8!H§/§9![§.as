package §8!H§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §9![§
   {
      
      public static const §+I§:int = 60;
      
      public static const §4h§:String = "dummyState";
      
      public static const §^J§:int = 0;
      
      public static const §7!_§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §?!4§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+I§ = 60;
            loop0:
            while(true)
            {
               §4h§ = "dummyState";
               loop1:
               while(true)
               {
                  §^J§ = 0;
                  while(true)
                  {
                     §7!_§ = 1;
                     addr82:
                     while(_loc1_)
                     {
                        STATE_STATUS_RUNNING = 2;
                        continue loop1;
                     }
                     addr48:
                     continue loop0;
                     while(_loc1_ || _loc1_)
                     {
                        §?!4§ = null;
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        if(!_loc2_)
                        {
                           return;
                           addr33:
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         while(true)
         {
            STATE_STATUS_COMPLETED = 3;
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      public var §]!E§:Boolean = false;
      
      public var §7!#§:Boolean = false;
      
      public var mName:String;
      
      public var §-O§:Boolean = false;
      
      public var §#! §:Boolean = false;
      
      public var §'!Q§:§&!G§;
      
      public var §4v§:Array;
      
      public var mNextState:String = "";
      
      public var §]2§:Sprite = null;
      
      public var §>!X§:§6!o§ = null;
      
      public function §9![§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param2;
               loop1:
               while(true)
               {
                  this.§4v§ = new Array();
                  loop3:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(!param1)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           addr28:
                           if(!(_loc4_ && param2))
                           {
                              this.init();
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§]2§ = new Sprite();
                                 continue loop3;
                                 §§goto(addr28);
                              }
                              addr85:
                           }
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public static function §+!1§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§?!4§)
            {
               if(!_loc3_)
               {
                  return §?!4§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]!E§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&!G§ = null;
         if(!_loc5_)
         {
            if(!this.§]!E§)
            {
               addr76:
               while(true)
               {
                  this.init();
                  addr78:
                  while(true)
                  {
                  }
               }
               addr76:
            }
            loop0:
            while(true)
            {
               §§push(this.§'!Q§);
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§]2§.addChild(this.§'!Q§);
                     while(true)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(this.§'!Q§);
                           if(_loc4_ || _loc3_)
                           {
                              §§pop().activateView();
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || _loc1_))
                                    {
                                       break;
                                    }
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr78);
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§4v§;
               addr117:
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || this)
                  {
                     this.§]2§.addChild(_loc1_);
                     if(_loc4_)
                     {
                        _loc1_.§^!M§();
                     }
                  }
                  §§goto(addr117);
               }
               if(!_loc5_)
               {
                  this.mNextState = "";
               }
               addr143:
               this.§7!#§ = true;
               if(!(_loc4_ || this))
               {
                  §§goto(addr143);
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function §4B§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&!G§ = null;
         if(_loc4_)
         {
            §§push(this.§'!Q§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr30:
                     this.§'!Q§.§^!M§();
                     if(!_loc5_)
                     {
                        addr33:
                        this.§]2§.removeChild(this.§'!Q§);
                     }
                  }
                  §§goto(addr33);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§4v§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.§^!M§();
                     if(_loc5_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  this.§]2§.removeChild(_loc1_);
               }
               if(_loc4_)
               {
                  §§push(this.§7!#§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr153);
                        }
                        §§goto(addr156);
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           this.§7!#§ = false;
                           while(_loc4_ || _loc2_)
                           {
                              §§push(this.§#! §);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          this.cleanup();
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                             addr145:
                                          }
                                          else
                                          {
                                             §§goto(addr156);
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              addr153:
                              if(this.§#! §)
                              {
                                 addr154:
                                 this.cleanup();
                                 addr156:
                              }
                              return;
                              §§goto(addr153);
                           }
                        }
                     }
                     §§goto(addr154);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr30);
         }
         §§goto(addr33);
      }
      
      public function §8^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#! § = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]!E§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§'!Q§);
                  if(_loc1_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(this.§'!Q§);
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr136);
                     }
                     loop4:
                     while(true)
                     {
                        §§push(this.§4v§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop().length <= 0)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(this.§7!#§)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       addr77:
                                       this.deActivate();
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       addr23:
                                       while(true)
                                       {
                                          this.§]!E§ = false;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr23);
                              }
                              §§goto(addr77);
                           }
                           else
                           {
                              §§push(this.§4v§);
                           }
                        }
                        (§§pop().pop() as §&!G§).clear();
                     }
                     return;
                  }
                  §§goto(addr131);
               }
            }
         }
         addr136:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§]!E§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7!#§);
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        §§push(STATE_STATUS_RUNNING);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     if(_loc2_)
                     {
                        §§push(§<m§);
                        §§push("WARNING: State -> run() method is called when state is not active: ");
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + this.mName);
                        }
                        §§pop().log(§§pop());
                     }
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§7!_§);
                        break;
                        addr94:
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr97);
               }
               §§push(§<m§);
               §§push("WARNING: State -> run() method is called when state is not ready: ");
               if(_loc2_)
               {
                  §§push(§§pop() + this.mName);
               }
               §§pop().log(§§pop());
               addr97:
               return §§pop();
            }
         }
         §§goto(addr94);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-O§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
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
      
      public function §95§(param1:§&!G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4v§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]2§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]2§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]2§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!X§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr48);
                  }
               }
               return 0;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§>!X§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§>!X§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§>!X§);
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
         if(_loc4_ || _loc3_)
         {
            §§push(this.§'!Q§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§'!Q§);
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        while(true)
                        {
                           §§push(this.§'!Q§);
                           if(_loc4_ || param1)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(param2);
                              if(_loc4_)
                              {
                                 §§pop().viewHeight = §§pop();
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       addr69:
                                       break loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              continue loop3;
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
         §§goto(addr69);
      }
      
      public function §@!;§() : int
      {
         return §+I§;
      }
   }
}
