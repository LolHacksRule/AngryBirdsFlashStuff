package §8,§
{
   import §6z§.§[g§;
   import §<i§.§#!%§;
   import flash.display.Stage;
   
   public class §3!?§
   {
       
      
      private var §8'§:Vector.<§+_§>;
      
      protected var §"!5§:§+_§;
      
      private var mNextState:String;
      
      protected var §>!+§:§#!%§ = null;
      
      private var §1z§:Number;
      
      private var §3C§:Number;
      
      public function §3!?§(param1:§#!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§8'§ = new Vector.<§+_§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§>!+§ = param1;
                  while(!(_loc3_ && this))
                  {
                     this.§1z§ = this.§>!+§.stage.stageWidth;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§3C§ = this.§>!+§.stage.stageHeight;
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
      
      public function §+!0§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§"!5§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§push(this.§"!5§.mName);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return §+_§.§7!v§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr43);
         }
         §§goto(addr52);
      }
      
      public function §-#§() : §+_§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"!5§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§"!5§);
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
      
      public function §%!<§(param1:String) : §+_§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§8'§.length)
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
            else if((this.§8'§[_loc2_] as §+_§).mName == param1)
            {
               break;
            }
            _loc2_++;
         }
         return this.§8'§[_loc2_] as §+_§;
      }
      
      public function § !,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §9!4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §+_§.§7!v§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §7$§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §+_§.§7!v§)
            {
               loop0:
               while(true)
               {
                  this.§ !7§(this.mNextState);
                  addr91:
                  while(true)
                  {
                     this.setViewSize(this.§1z§,this.§3C§);
                     while(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           this.mNextState = §+_§.§7!v§;
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
      
      public function § !7§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§+_§ = null;
         var _loc3_:§+_§ = null;
         for each(_loc3_ in this.§8'§)
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
                  §§push(this.§"!5§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        loop11:
                        while(true)
                        {
                           this.§"!5§ = _loc2_;
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    §§push(§[g§);
                                    §§push("Activate state: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + this.§"!5§.mName);
                                    }
                                    §§pop().log(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       this.stage.frameRate = this.§"!5§.§6!_§();
                                       addr150:
                                       addr179:
                                       while(true)
                                       {
                                          §§push(this.§>!+§);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(this.§"!5§);
                                          if(!_loc7_)
                                          {
                                             §§pop().addChildAt(§§pop().§8!9§,0);
                                             continue loop13;
                                          }
                                          addr181:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§8!9§);
                                             addr183:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(§[g§);
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
                              §§push(this.§"!5§);
                              continue loop2;
                           }
                        }
                     }
                     while(_loc6_)
                     {
                        §§push(§[g§);
                        §§push("deActivate state: ");
                        if(_loc6_)
                        {
                           §§push(§§pop() + this.§"!5§.mName);
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
      
      public function §?!-§(param1:§+_§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != null)
            {
               do
               {
                  this.§8'§.push(param1);
                  param1.§&!x§ = this;
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
            §§push(this.§"!5§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr56:
                     §§push(§+_§.§<3§);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return this.§"!5§.run(param1);
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
         return this.§>!+§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§>!+§.height;
      }
      
      public function get canvas() : §#!%§
      {
         return this.§>!+§;
      }
      
      public function get stage() : Stage
      {
         return this.§>!+§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§"!5§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr87:
                     this.§"!5§.setViewSize(param1,param2);
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
                  this.§1z§ = param1;
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§3C§ = param2;
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
