package §'!O§
{
   import §9P§.§'B§;
   import §`K§.§ L§;
   import flash.display.Stage;
   
   public class §,!?§
   {
       
      
      private var §]0§:Vector.<§'!#§>;
      
      protected var §'!<§:§'!#§;
      
      private var mNextState:String;
      
      protected var §#!G§:§'B§ = null;
      
      private var §[2§:Number;
      
      private var §-$§:Number;
      
      public function §,!?§(param1:§'B§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§]0§ = new Vector.<§'!#§>();
            }
            addr87:
         }
         do
         {
            this.§#!G§ = param1;
            loop2:
            do
            {
               this.§[2§ = this.§#!G§.stage.stageWidth;
               while(_loc2_)
               {
                  this.§-$§ = this.§#!G§.stage.stageHeight;
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr87);
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!_loc2_);
         
      }
      
      public function §,x§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§'!<§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr48:
                     §§push(this.§'!<§.mName);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return §'!#§.§,!2§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
         }
         §§goto(addr48);
      }
      
      public function §@!@§() : §'!#§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'!<§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§'!<§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         return null;
      }
      
      public function § each§(param1:String) : §'!#§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§]0§.length)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return null;
               }
               loop1:
               while(!(_loc4_ || _loc3_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((this.§]0§[_loc2_] as §'!#§).mName == param1)
            {
               break;
            }
            §§goto(addr47);
         }
         while(!_loc3_);
         
         return this.§]0§[_loc2_] as §'!#§;
      }
      
      public function §7!$§(param1:String, param2:§'!#§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§]0§.length)
            {
               if(!(_loc5_ && this))
               {
                  break;
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        break;
                     }
                     while(true)
                     {
                        param2.§1!Q§ = this;
                     }
                     addr95:
                  }
                  addr71:
                  addr90:
                  while(_loc4_ || param1)
                  {
                  }
                  while(true)
                  {
                     this.§]0§[_loc3_] = param2;
                     §§goto(addr95);
                     §§goto(addr71);
                  }
               }
               continue;
               addr47:
            }
            else if((this.§]0§[_loc3_] as §'!#§).mName == param1)
            {
               §§goto(addr90);
            }
            while(true)
            {
               _loc3_++;
               §§goto(addr47);
            }
         }
      }
      
      public function §8n§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §4q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §'!#§.§,!2§);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §"x§() : String
      {
         return this.mNextState;
      }
      
      public function §+!H§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mNextState != §'!#§.§,!2§)
            {
               do
               {
                  this.§5!"§(this.mNextState);
                  do
                  {
                     this.setViewSize(this.§[2§,this.§-$§);
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(!_loc2_);
               
               this.mNextState = §'!#§.§,!2§;
               §§push(true);
               addr65:
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function §5!"§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§'!#§ = null;
         var _loc3_:§'!#§ = null;
         for each(_loc3_ in this.§]0§)
         {
            if(!(_loc6_ && this))
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc7_)
         {
            if(_loc2_ != null)
            {
               loop1:
               while(true)
               {
                  §§push(this.§'!<§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        §§push(§ L§);
                        §§push("deActivate state: ");
                        if(!_loc6_)
                        {
                           §§push(§§pop() + this.§'!<§.mName);
                        }
                        §§pop().log(§§pop());
                        §§push(this.§'!<§);
                        loop3:
                        while(true)
                        {
                           §§pop().deActivate();
                           if(!_loc7_)
                           {
                              break;
                           }
                           this.previousStateDeactivate();
                           loop4:
                           while(true)
                           {
                              §§push(this.§#!G§);
                              while(true)
                              {
                                 §§push(this.§'!<§);
                                 addr191:
                                 addr150:
                                 while(true)
                                 {
                                    §§pop().removeChild(§§pop().§8A§);
                                    addr193:
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§#!G§);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(this.§'!<§);
                                    if(_loc7_)
                                    {
                                       §§pop().addChildAt(§§pop().§8A§,0);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§'!<§);
                                          loop11:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop10;
                                             }
                                             if(!(_loc7_ || this))
                                             {
                                                break;
                                             }
                                             §§pop().activate();
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop4;
                                                addr79:
                                                §§pop().§!!P§();
                                                if(_loc7_ || _loc3_)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr191);
                                    §§goto(addr244);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§'!<§ = _loc2_;
                        if(!(_loc6_ && param1))
                        {
                           §§push(§ L§);
                           §§push("Activate state: ");
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() + this.§'!<§.mName);
                           }
                           §§pop().log(§§pop());
                           if(_loc7_ || _loc2_)
                           {
                              this.stage.frameRate = this.§'!<§.§[!;§();
                              §§goto(addr150);
                           }
                           §§goto(addr193);
                        }
                     }
                     §§goto(addr244);
                  }
               }
            }
            §§push(§ L§);
            §§push("WARNING: StateManager->setState, requested state name does not exists: ");
            if(_loc7_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
         }
         §§goto(addr244);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#!F§(param1:§'!#§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               this.§]0§.push(param1);
               param1.§1!Q§ = this;
               §§push(true);
               addr75:
            }
            else
            {
               §§push(false);
               if(_loc2_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§'!<§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr40:
                     §§push(§'!#§.§^4§);
                     if(_loc2_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     return this.§'!<§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr50);
         }
         §§goto(addr40);
      }
      
      public function getAppWidth() : Number
      {
         return this.§#!G§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§#!G§.height;
      }
      
      public function get canvas() : §'B§
      {
         return this.§#!G§;
      }
      
      public function get stage() : Stage
      {
         return this.§#!G§.stage;
      }
      
      public function §8!7§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§'!<§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr81:
                     this.§'!<§.setViewSize(param1,param2);
                  }
                  while(true)
                  {
                  }
                  addr84:
               }
               while(true)
               {
                  this.§[2§ = param1;
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§-$§ = param2;
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr81);
         }
         §§goto(addr66);
      }
   }
}
