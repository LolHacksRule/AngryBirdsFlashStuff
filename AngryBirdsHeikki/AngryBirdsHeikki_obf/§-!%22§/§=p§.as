package §-!"§
{
   import §8P§.§1A§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §=p§
   {
      
      public static const §]!5§:int = 60;
      
      public static const §>o§:String = "dummyState";
      
      public static const §&"§:int = 0;
      
      public static const §^o§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §<!I§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §]!5§ = 60;
            loop0:
            while(true)
            {
               §>o§ = "dummyState";
               addr110:
               while(true)
               {
                  §&"§ = 0;
                  addr35:
                  if(!(_loc1_ && §=p§))
                  {
                     return;
                     addr42:
                  }
               }
               loop3:
               while(true)
               {
                  if(!(_loc2_ || _loc1_))
                  {
                     continue loop0;
                  }
                  STATE_STATUS_RUNNING = 2;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        addr71:
                        if(!(_loc2_ || _loc2_))
                        {
                           break;
                        }
                        STATE_STATUS_COMPLETED = 3;
                        continue;
                     }
                     continue loop3;
                  }
                  while(true)
                  {
                     §^o§ = 1;
                     continue loop3;
                     §§goto(addr71);
                  }
                  §§goto(addr42);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr105);
      }
      
      public var §+?§:Boolean = false;
      
      public var § <§:Boolean = false;
      
      public var mName:String;
      
      public var §0!L§:Boolean = false;
      
      public var §for§:Boolean = false;
      
      public var §]!9§:§]!Q§;
      
      public var §`]§:Array;
      
      public var mNextState:String = "";
      
      public var §;=§:Sprite = null;
      
      public var §6!D§:§]7§ = null;
      
      public function §=p§(param1:Boolean, param2:String)
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
               while(true)
               {
                  this.§`]§ = new Array();
                  while(_loc4_ || param1)
                  {
                     continue loop0;
                     if(_loc4_ || param1)
                     {
                        this.init();
                        addr20:
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr20);
      }
      
      public static function §6"§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§<!I§)
            {
               if(_loc3_)
               {
                  return §<!I§[param1];
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
            this.§+?§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!Q§ = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.§+?§)
            {
               loop0:
               while(true)
               {
                  this.init();
                  addr83:
                  while(true)
                  {
                  }
                  loop7:
                  while(true)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue loop0;
                     }
                     §§push(this.§]!9§);
                     if(!(_loc5_ && this))
                     {
                        §§pop().§6,§();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    §§push(this.§]!9§);
                                    addr54:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§;=§.addChild(this.§]!9§);
                                          continue loop7;
                                       }
                                    }
                                 }
                                 addr51:
                              }
                              var _loc3_:* = this.§`]§;
                              for each(_loc1_ in _loc3_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§;=§.addChild(_loc1_);
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc1_.§@m§();
                              }
                              if(!(_loc5_ && this))
                              {
                                 this.mNextState = "";
                              }
                              do
                              {
                                 this.§ <§ = true;
                              }
                              while(_loc5_);
                              
                              return;
                           }
                           break;
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr55);
      }
      
      public function §+v§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]!Q§ = null;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§]!9§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop())
               {
                  addr59:
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§]!9§);
                  }
                  var _loc3_:* = this.§`]§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc5_ || _loc1_)
                     {
                        _loc1_.§@m§();
                        if(_loc5_)
                        {
                           this.§;=§.removeChild(_loc1_);
                        }
                     }
                  }
                  if(_loc5_ || this)
                  {
                     §§push(this.§ <§);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr184);
                           }
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              this.§ <§ = false;
                              loop3:
                              while(true)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§for§);
                                       if(_loc4_ && _loc3_)
                                       {
                                          addr184:
                                          if(this.§for§)
                                          {
                                             addr185:
                                             this.cleanup();
                                          }
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          this.cleanup();
                                       }
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                       return;
                                    }
                                    return;
                                    addr144:
                                 }
                                 if(_loc5_ || this)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 break;
                                 §§goto(addr185);
                              }
                           }
                        }
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr144);
               }
               §§goto(addr59);
            }
            §§pop().§@m§();
            if(!(_loc4_ && _loc2_))
            {
               this.§;=§.removeChild(this.§]!9§);
            }
         }
         §§goto(addr59);
      }
      
      public function §2[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§for§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!this.§+?§)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
               }
               addr127:
            }
            while(true)
            {
               §§push(this.§]!9§);
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     addr119:
                     this.§]!9§.clear();
                  }
                  do
                  {
                     this.§]!9§ = null;
                  }
                  while(_loc2_);
                  
                  if(_loc1_)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr119);
            }
            loop2:
            while(true)
            {
               §§push(this.§`]§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop().length <= 0)
                  {
                     loop3:
                     do
                     {
                        if(this.§ <§)
                        {
                           loop4:
                           while(!_loc2_)
                           {
                              this.deActivate();
                              loop5:
                              while(true)
                              {
                                 addr28:
                                 while(true)
                                 {
                                    this.§+?§ = false;
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr28);
                     }
                     while(!(_loc1_ || this));
                     
                     return;
                  }
                  §§push(this.§`]§);
               }
               (§§pop().pop() as §]!Q§).clear();
            }
         }
         §§goto(addr127);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§+?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ <§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           §§push(STATE_STATUS_RUNNING);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        if(!(_loc3_ && this))
                        {
                           §4,§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                        }
                        if(!(_loc3_ && param1))
                        {
                           §§push(§^o§);
                           break;
                        }
                        continue;
                        break;
                     }
                     continue loop0;
                  }
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
               if(_loc2_ || _loc2_)
               {
                  §4,§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
               }
            }
            §§goto(addr80);
         }
         addr80:
         §&"§;
         return §§pop();
      }
      
      public function isGenericState() : Boolean
      {
         return this.§0!L§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
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
      
      public function §;+§(param1:§]!Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§`]§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§;=§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;=§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§;=§.contains(param1);
      }
      
      public function §+C§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§6!D§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§6!D§.§+C§();
      }
      
      public function §6!K§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!D§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§6!D§);
                  }
                  else
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr64);
            }
            return §§pop().§6!K§();
         }
         addr64:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§]!9§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!9§);
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
                              §§push(this.§]!9§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(param2);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().viewHeight = §§pop();
                                    if(!(_loc4_ && param1))
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
      
      public function §9u§() : int
      {
         return §]!5§;
      }
   }
}
