package §<!>§
{
   import §&A§.§,6§;
   import §^_§.§!>§;
   import flash.display.Stage;
   
   public class §>!C§
   {
       
      
      private var §<!7§:Vector.<§?Y§>;
      
      protected var §>!P§:§?Y§;
      
      private var mNextState:String;
      
      protected var §8!0§:§,6§ = null;
      
      private var § !6§:Number;
      
      private var §0!j§:Number;
      
      public function §>!C§(param1:§,6§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§<!7§ = new Vector.<§?Y§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§8!0§ = param1;
                  while(!(_loc3_ && this))
                  {
                     this.§ !6§ = this.§8!0§.stage.stageWidth;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§0!j§ = this.§8!0§.stage.stageHeight;
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §6!3§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§>!P§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§push(this.§>!P§.mName);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return §?Y§.§-!'§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr43);
         }
         §§goto(addr52);
      }
      
      public function §4C§() : §?Y§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§>!P§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§>!P§);
                  }
                  else
                  {
                     §§goto(addr30);
                  }
               }
               §§goto(addr30);
            }
            return §§pop();
         }
         addr30:
         return null;
      }
      
      public function §]!-§(param1:String) : §?Y§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§<!7§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if((this.§<!7§[_loc2_] as §?Y§).mName == param1)
            {
               break;
            }
            _loc2_++;
         }
         return this.§<!7§[_loc2_] as §?Y§;
      }
      
      public function §,!6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §8!W§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §?Y§.§-!'§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §8p§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §?Y§.§-!'§)
            {
               loop0:
               while(true)
               {
                  this.§ !%§(this.mNextState);
                  addr91:
                  while(true)
                  {
                     this.setViewSize(this.§ !6§,this.§0!j§);
                     while(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           this.mNextState = §?Y§.§-!'§;
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           §§push(true);
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc1_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr91);
      }
      
      public function § !%§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§?Y§ = null;
         var _loc3_:§?Y§ = null;
         for each(_loc3_ in this.§<!7§)
         {
            if(!(_loc7_ && param1))
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc6_ || this)
         {
            if(_loc2_ != null)
            {
               loop1:
               while(true)
               {
                  §§push(this.§>!P§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        loop11:
                        while(true)
                        {
                           this.§>!P§ = _loc2_;
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    §§push(§!>§);
                                    §§push("Activate state: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + this.§>!P§.mName);
                                    }
                                    §§pop().log(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       this.stage.frameRate = this.§>!P§.§ a§();
                                       addr150:
                                       addr179:
                                       while(true)
                                       {
                                          §§push(this.§8!0§);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(this.§>!P§);
                                          if(!_loc7_)
                                          {
                                             §§pop().addChildAt(§§pop().§8X§,0);
                                             continue loop13;
                                          }
                                          addr181:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§8X§);
                                             addr183:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(§!>§);
                                                   §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                }
                                                else
                                                {
                                                   addr236:
                                                }
                                                continue loop11;
                                                §§pop().log(§§pop());
                                                break;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr181);
                                          §§goto(addr150);
                                       }
                                    }
                                    addr161:
                                 }
                                 §§goto(addr231);
                                 §§push(false);
                              }
                           }
                           addr228:
                           while(true)
                           {
                              §§push(this.§>!P§);
                              continue loop2;
                           }
                        }
                     }
                     while(_loc6_)
                     {
                        §§push(§!>§);
                        §§push("deActivate state: ");
                        if(_loc6_)
                        {
                           §§push(§§pop() + this.§>!P§.mName);
                        }
                        §§pop().log(§§pop());
                        §§goto(addr228);
                     }
                     continue loop1;
                  }
               }
            }
            §§goto(addr236);
         }
         §§goto(addr161);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9!`§(param1:§?Y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != null)
            {
               do
               {
                  this.§<!7§.push(param1);
                  param1.§&!C§ = this;
               }
               while(!(_loc2_ || _loc3_));
               
               §§push(true);
               addr74:
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
         §§goto(addr74);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>!P§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr56:
                     §§push(§?Y§.§^!]§);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return this.§>!P§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr66);
         }
         §§goto(addr56);
      }
      
      public function getAppWidth() : Number
      {
         return this.§8!0§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§8!0§.height;
      }
      
      public function get canvas() : §,6§
      {
         return this.§8!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§>!P§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr87:
                     this.§>!P§.setViewSize(param1,param2);
                     addr90:
                     while(true)
                     {
                     }
                     addr90:
                  }
                  §§goto(addr90);
               }
               while(true)
               {
                  this.§ !6§ = param1;
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§0!j§ = param2;
                     if(_loc4_ || param2)
                     {
                        return;
                     }
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr87);
      }
   }
}
