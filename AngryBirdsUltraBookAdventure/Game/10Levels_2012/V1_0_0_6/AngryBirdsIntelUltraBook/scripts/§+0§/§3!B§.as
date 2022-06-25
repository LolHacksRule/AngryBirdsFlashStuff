package §+0§
{
   import §"x§.§-8§;
   import §]2§.§-9§;
   import flash.display.Stage;
   
   public class §3!B§
   {
       
      
      private var §+U§:Vector.<§,!E§>;
      
      protected var §00§:§,!E§;
      
      private var mNextState:String;
      
      protected var § !j§:§-9§ = null;
      
      private var §"!V§:Number;
      
      private var §-!e§:Number;
      
      public function §3!B§(param1:§-9§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§+U§ = new Vector.<§,!E§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§ !j§ = param1;
                  while(!(_loc3_ && this))
                  {
                     this.§"!V§ = this.§ !j§.stage.stageWidth;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§-!e§ = this.§ !j§.stage.stageHeight;
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
      
      public function §6!O§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§00§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§push(this.§00§.mName);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return §,!E§.§'!=§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr43);
         }
         §§goto(addr52);
      }
      
      public function §0@§() : §,!E§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§00§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§00§);
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
      
      public function §?!K§(param1:String) : §,!E§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+U§.length)
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
            else if((this.§+U§[_loc2_] as §,!E§).mName == param1)
            {
               break;
            }
            _loc2_++;
         }
         return this.§+U§[_loc2_] as §,!E§;
      }
      
      public function §@!n§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §0!q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §,!E§.§'!=§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §!!b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §,!E§.§'!=§)
            {
               loop0:
               while(true)
               {
                  this.§@!-§(this.mNextState);
                  addr91:
                  while(true)
                  {
                     this.setViewSize(this.§"!V§,this.§-!e§);
                     while(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           this.mNextState = §,!E§.§'!=§;
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
      
      public function §@!-§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§,!E§ = null;
         var _loc3_:§,!E§ = null;
         for each(_loc3_ in this.§+U§)
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
                  §§push(this.§00§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        loop11:
                        while(true)
                        {
                           this.§00§ = _loc2_;
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    §§push(§-8§);
                                    §§push("Activate state: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + this.§00§.mName);
                                    }
                                    §§pop().log(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       this.stage.frameRate = this.§00§.§>9§();
                                       addr150:
                                       addr179:
                                       while(true)
                                       {
                                          §§push(this.§ !j§);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(this.§00§);
                                          if(!_loc7_)
                                          {
                                             §§pop().addChildAt(§§pop().§2O§,0);
                                             continue loop13;
                                          }
                                          addr181:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§2O§);
                                             addr183:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(§-8§);
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
                              §§push(this.§00§);
                              continue loop2;
                           }
                        }
                     }
                     while(_loc6_)
                     {
                        §§push(§-8§);
                        §§push("deActivate state: ");
                        if(_loc6_)
                        {
                           §§push(§§pop() + this.§00§.mName);
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
      
      public function §!]§(param1:§,!E§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != null)
            {
               do
               {
                  this.§+U§.push(param1);
                  param1.§&!g§ = this;
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
            §§push(this.§00§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr56:
                     §§push(§,!E§.§`g§);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return this.§00§.run(param1);
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
         return this.§ !j§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§ !j§.height;
      }
      
      public function get canvas() : §-9§
      {
         return this.§ !j§;
      }
      
      public function get stage() : Stage
      {
         return this.§ !j§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§00§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr87:
                     this.§00§.setViewSize(param1,param2);
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
                  this.§"!V§ = param1;
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§-!e§ = param2;
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
