package §'!O§
{
   import §6v§.§`M§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §'!#§
   {
      
      public static const §&J§:int = 60;
      
      public static const §,!2§:String = "dummyState";
      
      public static const §2!8§:int = 0;
      
      public static const §^4§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#f§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            §2!8§ = 0;
            §^4§ = 1;
            do
            {
               STATE_STATUS_RUNNING = 2;
               do
               {
                  STATE_STATUS_COMPLETED = 3;
                  do
                  {
                     §#f§ = null;
                  }
                  while(_loc1_ && §'!#§);
                  
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public var §&K§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §?q§:Boolean = false;
      
      public var §?v§:Boolean = false;
      
      public var §0q§:§`o§;
      
      public var §]_§:Array;
      
      public var mNextState:String = "";
      
      public var §8A§:Sprite = null;
      
      public var §1!Q§:§,!?§ = null;
      
      public function §'!#§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            this.mName = param2;
            this.§]_§ = new Array();
            do
            {
               this.§8A§ = new Sprite();
               if(!param1)
               {
                  break;
               }
               if(_loc3_ || param1)
               {
                  this.init();
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr57);
      }
      
      public static function §5F§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§#f§)
            {
               if(_loc2_)
               {
                  §§goto(addr22);
               }
            }
            return null;
         }
         addr22:
         return §#f§[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&K§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`o§ = null;
         if(!_loc5_)
         {
            if(!this.§&K§)
            {
               loop0:
               while(true)
               {
                  this.init();
                  addr78:
                  while(true)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop0;
                     }
                     §§push(this.§0q§);
                     if(!(_loc5_ && this))
                     {
                        §§pop().§[C§();
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           if(!(_loc4_ || _loc1_))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    §§push(this.§0q§);
                                    addr49:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§8A§.addChild(this.§0q§);
                                          continue loop5;
                                       }
                                    }
                                 }
                                 addr46:
                              }
                              for each(_loc1_ in this.§]_§)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§8A§.addChild(_loc1_);
                                    if(_loc4_)
                                    {
                                       _loc1_.§!q§();
                                    }
                                 }
                              }
                              if(_loc4_ || _loc1_)
                              {
                                 this.mNextState = "";
                              }
                              do
                              {
                                 this.mActive = true;
                              }
                              while(!_loc4_);
                              
                              return;
                           }
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr78);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr44);
      }
      
      public function §!!P§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`o§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§0q§);
            if(!(_loc5_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr45:
                     this.§0q§.§!q§();
                     if(!_loc5_)
                     {
                        addr48:
                        this.§8A§.removeChild(this.§0q§);
                     }
                  }
                  §§goto(addr48);
               }
               var _loc3_:* = this.§]_§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_.§!q§();
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  this.§8A§.removeChild(_loc1_);
               }
               if(_loc4_ || this)
               {
                  §§push(this.mActive);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           this.mActive = false;
                           addr148:
                           while(true)
                           {
                              §§push(this.§?v§);
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_ && this)
                                          {
                                             return;
                                          }
                                          addr169:
                                          continue loop1;
                                       }
                                       if(_loc5_ && _loc3_)
                                       {
                                          addr164:
                                          §§push(this.§?v§);
                                          break;
                                       }
                                       this.cleanup();
                                    }
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 return;
                              }
                              break;
                           }
                           addr166:
                           if(§§pop())
                           {
                              this.cleanup();
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr166);
               }
               §§goto(addr148);
            }
            §§goto(addr45);
         }
         §§goto(addr48);
      }
      
      public function §<O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?v§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§&K§)
            {
               if(!_loc1_)
               {
                  §§goto(addr122);
               }
               else
               {
                  while(true)
                  {
                     addr99:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     addr71:
                     while(true)
                     {
                        §§push(this.§]_§);
                        if(!_loc1_)
                        {
                           if(§§pop().length <= 0)
                           {
                              do
                              {
                                 if(this.mActive)
                                 {
                                    while(true)
                                    {
                                       this.deActivate();
                                       addr70:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr68:
                                 }
                                 while(true)
                                 {
                                    this.§&K§ = false;
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr68);
                                    }
                                    §§goto(addr70);
                                 }
                              }
                              while(!(_loc2_ || this));
                              
                              if(!(_loc1_ && _loc2_))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§push(this.§]_§);
                        }
                        (§§pop().pop() as §`o§).clear();
                     }
                     return;
                     addr106:
                  }
                  addr123:
               }
            }
            while(true)
            {
               §§push(this.§0q§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§0q§);
                        addr115:
                        while(true)
                        {
                           §§pop().clear();
                           do
                           {
                              this.§0q§ = null;
                           }
                           while(!_loc2_);
                           
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr115);
               §§goto(addr123);
            }
            §§goto(addr106);
         }
         addr122:
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§&K§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.mActive);
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop())
                     {
                        §§push(STATE_STATUS_RUNNING);
                        if(_loc3_ || param1)
                        {
                           return §§pop();
                        }
                     }
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§ L§);
                        §§push("WARNING: State -> run() method is called when state is not active: ");
                        if(!_loc2_)
                        {
                           §§push(§§pop() + this.mName);
                        }
                        §§pop().log(§§pop());
                        if(!_loc2_)
                        {
                           §§push(§^4§);
                           break;
                        }
                        break loop0;
                     }
                     continue;
                     break;
                  }
                  continue loop0;
               }
               if(_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr98);
            }
            §§push(§ L§);
            §§push("WARNING: State -> run() method is called when state is not ready: ");
            if(_loc3_)
            {
               §§push(§§pop() + this.mName);
            }
            §§pop().log(§§pop());
         }
         addr98:
         §2!8§;
         return §§pop();
      }
      
      public function isGenericState() : Boolean
      {
         return this.§?q§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
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
      
      public function §^!+§(param1:§`o§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]_§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§8A§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8A§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8A§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§1!Q§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§1!Q§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop().getAppWidth();
         }
         addr54:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1!Q§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§1!Q§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().getAppHeight();
         }
         addr50:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§0q§);
            while(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(this.§0q§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr85:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr84:
               }
               addr43:
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§push(param2);
               if(_loc3_)
               {
                  §§pop().viewHeight = §§pop();
                  if(!(_loc3_ || param2))
                  {
                     while(true)
                     {
                        §§push(this.§0q§);
                        if(_loc3_)
                        {
                           §§goto(addr43);
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                     addr86:
                  }
                  break;
               }
               §§goto(addr85);
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function §[!;§() : int
      {
         return §&J§;
      }
   }
}
