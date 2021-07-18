package §-!"§
{
   import §9L§.§^D§;
   import §@R§.§4,§;
   import flash.display.Stage;
   
   public class §]7§
   {
       
      
      private var §-!J§:Vector.<§=p§>;
      
      protected var §3a§:§=p§;
      
      private var mNextState:String;
      
      protected var §=Z§:§^D§ = null;
      
      private var §%D§:Number;
      
      private var §0w§:Number;
      
      public function §]7§(param1:§^D§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§-!J§ = new Vector.<§=p§>();
               while(true)
               {
                  this.§=Z§ = param1;
                  addr63:
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §2!0§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§3a§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && this))
                  {
                     addr58:
                     §§push(this.§3a§.mName);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     return §=p§.§>o§;
                  }
                  return §§pop();
               }
               §§goto(addr62);
            }
            §§goto(addr58);
         }
         §§goto(addr62);
      }
      
      public function §=!@§() : §=p§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3a§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr54);
                  }
               }
               return null;
            }
            §§goto(addr54);
         }
         addr54:
         return this.§3a§;
      }
      
      public function §1!N§(param1:String) : §=p§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§-!J§.length)
            {
               if(!(_loc4_ && this))
               {
                  return null;
               }
               while(_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr48:
            }
            else if((this.§-!J§[_loc2_] as §=p§).mName == param1)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr81);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return this.§-!J§[_loc2_] as §=p§;
      }
      
      public function §4!>§(param1:String, param2:§=p§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.§-!J§.length)
            {
               if(_loc4_ && param2)
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     param2.§6!D§ = this;
                     addr86:
                     addr55:
                     loop1:
                     while(true)
                     {
                        this.§-!J§[_loc3_] = param2;
                        continue loop2;
                        addr62:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     _loc3_++;
                     continue loop0;
                  }
               }
               §§goto(addr62);
            }
            else if((this.§-!J§[_loc3_] as §=p§).mName == param1)
            {
               §§goto(addr86);
            }
            §§goto(addr55);
         }
      }
      
      public function §9^§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mNextState = param1;
         }
      }
      
      public function get §0!?§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §=p§.§>o§);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §`R§() : String
      {
         return this.mNextState;
      }
      
      public function §1G§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.mNextState != §=p§.§>o§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§!L§(this.mNextState);
               }
               this.setViewSize(this.§%D§,this.§0w§);
               do
               {
                  this.mNextState = §=p§.§>o§;
               }
               while(!(_loc1_ || this));
               
               §§push(true);
               addr74:
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
         §§goto(addr74);
      }
      
      public function §!L§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§=p§ = null;
         var _loc3_:§=p§ = null;
         for each(_loc3_ in this.§-!J§)
         {
            if(_loc7_ || param1)
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
               while(true)
               {
                  §§push(this.§3a§);
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(true)
                        {
                           §4,§.log("deActivate state: " + this.§3a§.mName);
                           while(true)
                           {
                              §§push(this.§3a§);
                              loop5:
                              while(true)
                              {
                                 §§pop().deActivate();
                                 loop6:
                                 while(!_loc6_)
                                 {
                                    this.previousStateDeactivate();
                                    while(true)
                                    {
                                       §§push(this.§=Z§);
                                       while(true)
                                       {
                                          §§push(this.§3a§);
                                          addr205:
                                          addr183:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§;=§);
                                             addr207:
                                             while(!_loc6_)
                                             {
                                             }
                                             continue loop6;
                                          }
                                          §§push(this.§=Z§);
                                          if(_loc7_)
                                          {
                                             §§push(this.§3a§);
                                             if(!(_loc7_ || _loc3_))
                                             {
                                                §§goto(addr205);
                                             }
                                             §§pop().addChildAt(§§pop().§;=§,0);
                                             do
                                             {
                                                §§push(this.§3a§);
                                                continue loop5;
                                             }
                                             while(_loc6_);
                                             
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§push(true);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr258:
                                                §§push(false);
                                                addr258:
                                             }
                                             return §§pop();
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§3a§ = _loc2_;
                        §§goto(addr199);
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr258);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?!%§(param1:§=p§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               addr79:
               this.§-!J§.push(param1);
               param1.§6!D§ = this;
               return true;
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && param1))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3a§);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(§=p§.§^o§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr56:
                     return this.§3a§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §+C§() : Number
      {
         return this.§=Z§.width;
      }
      
      public function §6!K§() : Number
      {
         return this.§=Z§.height;
      }
      
      public function get canvas() : §^D§
      {
         return this.§=Z§;
      }
      
      public function get stage() : Stage
      {
         return this.§=Z§.stage;
      }
      
      public function §`!'§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§3a§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr87:
                     this.§3a§.setViewSize(param1,param2);
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
                  this.§%D§ = param1;
                  do
                  {
                     this.§0w§ = param2;
                  }
                  while(_loc3_ && param2);
                  
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr90);
               }
               return;
            }
         }
         §§goto(addr87);
      }
   }
}
