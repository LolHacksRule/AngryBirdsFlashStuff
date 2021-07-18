package §]4§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §-§
   {
      
      public static const §>H§:int = 60;
      
      public static const § !-§:String = "dummyState";
      
      public static const §<! §:int = 0;
      
      public static const §#!?§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §"!G§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §>H§ = 60;
            loop0:
            do
            {
               § !-§ = "dummyState";
               §<! § = 0;
               while(true)
               {
                  §#!?§ = 1;
                  do
                  {
                     STATE_STATUS_RUNNING = 2;
                  }
                  while(_loc1_ && §-§);
                  
                  STATE_STATUS_COMPLETED = 3;
                  while(_loc2_)
                  {
                     §"!G§ = null;
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public var §@!9§:Boolean = false;
      
      public var §^[§:Boolean = false;
      
      public var mName:String;
      
      public var §%3§:Boolean = false;
      
      public var §3]§:Boolean = false;
      
      public var §,R§:§#H§;
      
      public var §2!%§:Array;
      
      public var mNextState:String = "";
      
      public var §1-§:Sprite = null;
      
      public var §4F§:§&"§ = null;
      
      public function §-§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
            this.mName = param2;
         }
         do
         {
            this.§2!%§ = new Array();
         }
         while(_loc4_);
         
         this.§1-§ = new Sprite();
         if(param1)
         {
            if(!_loc4_)
            {
               this.init();
            }
         }
      }
      
      public static function §8!1§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§"!G§)
            {
               if(!(_loc3_ && §-§))
               {
                  return §"!G§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@!9§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#H§ = null;
         if(!_loc4_)
         {
            if(!this.§@!9§)
            {
               while(true)
               {
                  this.init();
                  addr84:
                  while(true)
                  {
                  }
                  addr41:
                  if(_loc4_ && _loc1_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           §§push(this.§,R§);
                           loop3:
                           while(§§pop())
                           {
                              if(_loc5_)
                              {
                                 this.§1-§.addChild(this.§,R§);
                              }
                              while(_loc5_ || _loc2_)
                              {
                                 §§push(this.§,R§);
                                 if(_loc5_ || this)
                                 {
                                    §§pop().§>T§();
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr41);
                                    continue;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr84);
                           }
                        }
                        addr50:
                     }
                     var _loc2_:int = 0;
                     var _loc3_:* = this.§2!%§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§1-§.addChild(_loc1_);
                           if(_loc5_ || _loc1_)
                           {
                              _loc1_.§<w§();
                           }
                        }
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        this.mNextState = "";
                        do
                        {
                           this.§^[§ = true;
                        }
                        while(_loc4_);
                        
                     }
                     return;
                  }
                  addr48:
               }
            }
            §§goto(addr50);
         }
         §§goto(addr48);
      }
      
      public function §2_§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#H§ = null;
         if(!_loc5_)
         {
            §§push(this.§,R§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  addr43:
                  if(!_loc5_)
                  {
                     §§push(this.§,R§);
                  }
                  var _loc3_:* = this.§2!%§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        _loc1_.§<w§();
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                     this.§1-§.removeChild(_loc1_);
                  }
                  if(_loc4_ || this)
                  {
                     §§push(this.§^[§);
                     loop1:
                     while(§§pop())
                     {
                        this.§^[§ = false;
                        while(true)
                        {
                           §§push(this.§3]§);
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 this.cleanup();
                              }
                           }
                           else
                           {
                              addr152:
                           }
                           continue loop1;
                           return;
                           addr110:
                           if(!(_loc5_ && _loc3_))
                           {
                              this.cleanup();
                           }
                           if(!(_loc4_ || _loc1_))
                           {
                              continue loop1;
                           }
                           if(§§pop())
                           {
                              §§goto(addr110);
                           }
                           §§goto(addr93);
                           if(_loc4_ || _loc1_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr152);
                  §§push(this.§3]§);
               }
               §§goto(addr43);
            }
            §§pop().§<w§();
            if(_loc4_)
            {
               this.§1-§.removeChild(this.§,R§);
            }
         }
         §§goto(addr43);
      }
      
      public function §?y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3]§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§@!9§)
            {
               while(true)
               {
                  §§push(this.§,R§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§,R§);
                           addr117:
                           while(true)
                           {
                              §§pop().clear();
                              continue loop1;
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr117);
               }
               while(true)
               {
                  §§push(this.§2!%§);
                  if(_loc2_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!_loc1_)
                        {
                           if(this.§^[§)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr61:
                                 this.deActivate();
                              }
                              while(_loc2_)
                              {
                              }
                              continue;
                              addr63:
                           }
                           while(true)
                           {
                              this.§@!9§ = false;
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr63);
                           }
                           return;
                        }
                        §§goto(addr61);
                     }
                     else
                     {
                        §§push(this.§2!%§);
                     }
                  }
                  (§§pop().pop() as §#H§).clear();
               }
            }
            §§goto(addr122);
         }
         §§goto(addr118);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§@!9§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§3f§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  §§push(§<! §);
                  break;
               }
               addr49:
               while(true)
               {
                  §§push(this.§^[§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     §§push(STATE_STATUS_RUNNING);
                     if(_loc3_ || param1)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§push(§3f§);
                  §§push("WARNING: State -> run() method is called when state is not active: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
               }
               if(!_loc2_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr49);
         §§push(§#!?§);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§%3§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
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
      
      public function §7!<§(param1:§#H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§2!%§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1-§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1-§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§1-§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4F§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§4F§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§4F§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§4F§);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§,R§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§,R§);
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
                           §§push(this.§,R§);
                           if(_loc4_ && param2)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              §§push(param2);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop().viewHeight = §§pop();
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §4!$§() : int
      {
         return §>H§;
      }
   }
}
