package §[!>§
{
   import §"!!§.§&G§;
   import §'N§.Log;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var §#!J§:Vector.<StateBase>;
      
      protected var §5?§:StateBase;
      
      private var mNextState:String;
      
      protected var §"B§:§&G§ = null;
      
      private var §-]§:Number;
      
      private var §42§:Number;
      
      public function StateManager(param1:§&G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.§#!J§ = new Vector.<StateBase>();
               addr47:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         loop1:
         while(true)
         {
            this.§"B§ = param1;
            loop2:
            while(true)
            {
               this.§-]§ = this.§"B§.stage.stageWidth;
               while(true)
               {
                  if(_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr81:
                  this.§42§ = this.§"B§.stage.stageHeight;
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
               continue loop1;
            }
         }
         §§goto(addr54);
      }
      
      public function §6!g§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§5?§);
            if(_loc2_ || this)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr64:
                     §§push(this.§5?§.mName);
                     if(!(_loc1_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr73:
                     return StateBase.§0i§;
                  }
                  return §§pop();
               }
               §§goto(addr73);
            }
            §§goto(addr64);
         }
         §§goto(addr73);
      }
      
      public function §;!W§() : StateBase
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5?§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     §§goto(addr28);
                  }
               }
               return null;
            }
            §§goto(addr28);
         }
         addr28:
         return this.§5?§;
      }
      
      public function §2!H§(param1:String) : StateBase
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() >= this.§#!J§.length)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && param1))
                     {
                        return null;
                     }
                     addr116:
                  }
                  else if((this.§#!J§[_loc2_] as StateBase).mName == param1)
                  {
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     §§goto(addr116);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() + 1);
               if(_loc4_ || _loc3_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
         return this.§#!J§[_loc2_] as StateBase;
      }
      
      public function §0!f§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.mNextState = param1;
         }
      }
      
      public function get §'C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == StateBase.§0i§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §<y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mNextState == StateBase.§0i§)
            {
               §§goto(addr19);
            }
            §§goto(addr112);
         }
         addr19:
         §§push(false);
         if(!(_loc2_ && _loc1_))
         {
            if(_loc1_ || _loc1_)
            {
               return §§pop();
            }
            while(true)
            {
               §§pop();
               this.setViewSize(this.§-]§,this.§42§);
               this.mNextState = StateBase.§0i§;
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return true;
            }
         }
         return §§pop();
      }
      
      public function §"![§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.§#!J§)
         {
            if(!_loc6_)
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc7_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               while(true)
               {
                  §§push(this.§5?§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Log);
                           §§push("deActivate state: ");
                           if(_loc7_)
                           {
                              §§push(§§pop() + this.§5?§.mName);
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              §§push(this.§5?§);
                              loop5:
                              while(true)
                              {
                                 §§pop().deActivate();
                                 loop6:
                                 while(true)
                                 {
                                    this.previousStateDeactivate();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§"B§);
                                       while(true)
                                       {
                                          §§push(this.§5?§);
                                          addr196:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§1!J§);
                                             addr199:
                                             while(_loc7_ || _loc3_)
                                             {
                                             }
                                             continue loop6;
                                          }
                                          addr170:
                                          §§push(this.§"B§);
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§5?§);
                                          if(!_loc6_)
                                          {
                                             §§pop().addChildAt(§§pop().§1!J§,0);
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§5?§);
                                                            loop17:
                                                            for(; _loc7_; §§push(this.§5?§),if(_loc6_ && _loc3_)
                                                            {
                                                               continue;
                                                            },§§goto(addr79))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§pop().activate();
                                                               while(!_loc6_)
                                                               {
                                                                  continue loop17;
                                                                  §§pop().§`^§();
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Log);
                                                                  §§push("Activate state: ");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() + this.§5?§.mName);
                                                                  }
                                                                  §§pop().log(§§pop());
                                                                  addr183:
                                                                  while(_loc7_)
                                                                  {
                                                                     this.stage.frameRate = this.§5?§.§5Q§();
                                                                     while(!_loc6_)
                                                                     {
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr199);
                                                                     continue loop15;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§push(true);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr247:
                                                         return §§pop();
                                                         addr123:
                                                         addr160:
                                                      }
                                                      else
                                                      {
                                                         addr252:
                                                      }
                                                      §§push(Log);
                                                      §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + param1);
                                                      }
                                                      §§pop().log(§§pop());
                                                      break;
                                                   }
                                                   break;
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr247);
                                             §§push(false);
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                              }
                              if(!(_loc6_ && param1))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§5?§ = _loc2_;
                        §§goto(addr190);
                     }
                  }
               }
            }
            §§goto(addr252);
         }
         §§goto(addr160);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&=§(param1:StateBase) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               if(!_loc2_)
               {
                  this.§#!J§.push(param1);
               }
               do
               {
                  param1.§'I§ = this;
               }
               while(_loc2_ && param1);
               
               return true;
            }
            else
            {
               addr20:
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr20);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§5?§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(StateBase.§=!H§);
                     if(_loc2_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return this.§5?§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr52);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"B§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"B§.height;
      }
      
      public function get canvas() : §&G§
      {
         return this.§"B§;
      }
      
      public function get stage() : Stage
      {
         return this.§"B§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§5?§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5?§);
                     addr78:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr82:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               loop1:
               while(true)
               {
                  this.§-]§ = param1;
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§42§ = param2;
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr82);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
   }
}
