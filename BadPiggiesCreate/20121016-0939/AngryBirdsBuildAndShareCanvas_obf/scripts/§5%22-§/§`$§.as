package §5"-§
{
   import §""3§.§,"5§;
   import §=!M§.§9!P§;
   import flash.display.Stage;
   
   public class §`$§
   {
       
      
      private var §6w§:Vector.<§5y§>;
      
      protected var §;L§:§5y§;
      
      private var mNextState:String;
      
      protected var §6!q§:§,"5§ = null;
      
      private var §4r§:Number;
      
      private var §+" §:Number;
      
      public function §`$§(param1:§,"5§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§6w§ = new Vector.<§5y§>();
               while(!_loc3_)
               {
                  this.§6!q§ = param1;
                  do
                  {
                     this.§4r§ = this.§6!q§.stage.stageWidth;
                     do
                     {
                        this.§+" § = this.§6!q§.stage.stageHeight;
                     }
                     while(_loc3_ && _loc2_);
                     
                  }
                  while(_loc3_ && _loc2_);
                  
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §^!t§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;L§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     addr44:
                     §§push(this.§;L§.mName);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr63:
                     return §5y§.§[D§;
                  }
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr44);
         }
         §§goto(addr63);
      }
      
      public function §&[§() : §5y§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§;L§);
            if(!(_loc2_ && this))
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§;L§);
                  }
                  else
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr64);
            }
            return §§pop();
         }
         addr64:
         return null;
      }
      
      public function §=!L§(param1:String) : §5y§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§6w§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               loop1:
               while(_loc3_ && this)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((this.§6w§[_loc2_] as §5y§).mName == param1)
            {
               §§goto(addr80);
            }
            §§goto(addr49);
         }
         if(!(_loc3_ && param1))
         {
            return null;
         }
         addr80:
         return this.§6w§[_loc2_] as §5y§;
      }
      
      public function § !!§(param1:String, param2:§5y§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.§6w§.length)
            {
               if(!_loc5_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           _loc3_++;
                           addr49:
                           while(_loc5_)
                           {
                           }
                           continue loop0;
                        }
                        addr47:
                     }
                     else
                     {
                        addr80:
                        while(true)
                        {
                           this.§6w§[_loc3_] = param2;
                        }
                        addr80:
                     }
                     while(true)
                     {
                        param2.§'!e§ = this;
                        continue loop3;
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr49);
            }
            else if((this.§6w§[_loc3_] as §5y§).mName == param1)
            {
               §§goto(addr80);
            }
            §§goto(addr47);
         }
      }
      
      public function §1!b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §!v§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §5y§.§[D§);
         if(!(_loc1_ && this))
         {
            return !§§pop();
         }
      }
      
      public function §-!d§() : String
      {
         return this.mNextState;
      }
      
      public function § !@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.mNextState != §5y§.§[D§)
            {
               if(_loc1_)
               {
                  this.§4!'§(this.mNextState);
               }
               while(true)
               {
                  this.setViewSize(this.§4r§,this.§+" §);
                  while(_loc1_ || _loc1_)
                  {
                     this.mNextState = §5y§.§[D§;
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr33);
                  }
               }
            }
            else
            {
               addr24:
               §§push(false);
               if(_loc1_)
               {
                  return §§pop();
               }
            }
            addr33:
            return true;
         }
         §§goto(addr24);
      }
      
      public function §4!'§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§5y§ = null;
         var _loc3_:§5y§ = null;
         for each(_loc3_ in this.§6w§)
         {
            if(_loc7_)
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
            if(_loc2_ == null)
            {
               if(!_loc6_)
               {
                  §9!P§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
               }
            }
            else
            {
               loop1:
               while(true)
               {
                  §§push(this.§;L§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(true)
                        {
                           §9!P§.log("deActivate state: " + this.§;L§.mName);
                           loop4:
                           while(true)
                           {
                              if(_loc6_ && _loc2_)
                              {
                                 §§push(false);
                              }
                              else
                              {
                                 addr243:
                              }
                              §§push(this.§;L§);
                              loop5:
                              while(_loc7_)
                              {
                                 §§pop().deActivate();
                                 while(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.previousStateDeactivate();
                                       loop7:
                                       while(!_loc6_)
                                       {
                                          §§push(this.§6!q§);
                                          while(true)
                                          {
                                             §§push(this.§;L§);
                                             addr179:
                                             while(true)
                                             {
                                                §§pop().removeChild(§§pop().§!&§);
                                                addr181:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr157:
                                             §§push(this.§6!q§);
                                             if(!(_loc7_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(this.§;L§);
                                             if(!(_loc6_ && this))
                                             {
                                                §§pop().addChildAt(§§pop().§!&§,0);
                                                loop15:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§;L§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break loop15;
                                                         }
                                                         §§pop().activate();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               addr98:
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               break;
                                                            }
                                                            addr150:
                                                            while(_loc7_ || this)
                                                            {
                                                               §§goto(addr157);
                                                               continue loop17;
                                                            }
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            §9!P§.log("Activate state: " + this.§;L§.mName);
                                                            §§goto(addr98);
                                                         }
                                                      }
                                                   }
                                                   while(!_loc6_)
                                                   {
                                                      this.stage.frameRate = this.§;L§.getTargetFrameRate();
                                                      §§goto(addr150);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr179);
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           return §§pop();
                        }
                     }
                     while(true)
                     {
                        this.§;L§ = _loc2_;
                        §§goto(addr173);
                        §§goto(addr181);
                     }
                  }
               }
            }
         }
         §§goto(addr243);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,Y§(param1:§5y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               if(_loc2_ || this)
               {
                  this.§6w§.push(param1);
                  param1.§'!e§ = this;
                  addr73:
                  §§push(true);
                  addr73:
               }
               §§goto(addr73);
            }
            else
            {
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;L§);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§5y§.§1!3§);
                     if(_loc2_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return this.§;L§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr65);
      }
      
      public function getAppWidth() : Number
      {
         return this.§6!q§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§6!q§.height;
      }
      
      public function get canvas() : §,"5§
      {
         return this.§6!q§;
      }
      
      public function get stage() : Stage
      {
         return this.§6!q§.stage;
      }
      
      public function §=8§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§;L§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§;L§);
                     addr82:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  this.§4r§ = param1;
                  loop2:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§+" § = param2;
                           if(!(_loc3_ && param2))
                           {
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              break loop2;
                           }
                           continue loop2;
                        }
                        return;
                        addr59:
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr59);
      }
   }
}
