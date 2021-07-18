package §37§
{
   import §,!'§.§6!L§;
   import §24§.;
   import flash.display.Stage;
   
   public class §>n§
   {
       
      
      private var §`!H§:Vector.<§9!c§>;
      
      protected var §#,§:§9!c§;
      
      private var §=! §:String;
      
      private var §8!!§:String;
      
      protected var §-!x§:§6!L§ = null;
      
      private var §^!J§:Number;
      
      private var §+=§:Number;
      
      public function §>n§(param1:§6!L§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§`!H§ = new Vector.<§9!c§>();
            }
            addr87:
         }
         loop1:
         do
         {
            this.§-!x§ = param1;
            while(_loc2_)
            {
               this.§^!J§ = this.§-!x§.stage.stageWidth;
               while(!_loc3_)
               {
                  this.§+=§ = this.§-!x§.stage.stageHeight;
                  if(_loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr87);
         }
         while(!_loc2_);
         
      }
      
      public function §!!w§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#,§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     addr53:
                     §§push(this.§#,§.mName);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     return §9!c§.§8!w§;
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
            §§goto(addr53);
         }
         §§goto(addr57);
      }
      
      public function §-!w§() : §9!c§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#,§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§#,§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         return null;
      }
      
      public function §=J§(param1:String) : §9!c§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§`!H§.length)
            {
               if(_loc3_)
               {
                  break;
               }
               loop2:
               while(!(_loc3_ || param1))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr43:
            }
            else if((this.§`!H§[_loc2_] as §9!c§).mName == param1)
            {
               if(_loc3_)
               {
                  return this.§`!H§[_loc2_] as §9!c§;
               }
               §§goto(addr81);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr43);
            }
         }
         return null;
      }
      
      public function §7"6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§=! § = param1;
         }
      }
      
      public function get §0o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=! § == §9!c§.§8!w§);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §<!$§() : String
      {
         return this.§=! §;
      }
      
      public function §%j§() : String
      {
         return this.§8!!§;
      }
      
      public function §6!;§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§=! § != §9!c§.§8!w§)
            {
               if(_loc1_)
               {
                  this.§'l§(this.§=! §);
               }
               loop0:
               while(true)
               {
                  this.setViewSize(this.§^!J§,this.§+=§);
                  addr77:
                  while(true)
                  {
                     this.§8!!§ = this.§=! §;
                     this.§=! § = §9!c§.§8!w§;
                     if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr33);
               }
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            addr33:
            return true;
         }
         §§goto(addr77);
      }
      
      public function §'l§(param1:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§9!c§ = null;
         var _loc3_:§9!c§ = null;
         for each(_loc3_ in this.§`!H§)
         {
            if(!(_loc8_ && this))
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(!_loc8_)
         {
            if(_loc2_ == null)
            {
               if(_loc7_ || _loc3_)
               {
                  addr65:
                  §#7§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                  if(!(_loc8_ && param1))
                  {
                     addr77:
                     §§push(false);
                     if(_loc7_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr81:
                     §§push(false);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(this.§#,§);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != null)
                        {
                           loop2:
                           while(true)
                           {
                              §#7§.log("deActivate state: " + this.§#,§.mName);
                              loop3:
                              while(true)
                              {
                                 §§push(this.§#,§);
                                 while(true)
                                 {
                                    §§push(§§pop().§7;§);
                                    addr251:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr252:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§#,§);
                                             while(true)
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§pop().§7;§ = §§pop();
                                                   loop10:
                                                   while(!(_loc8_ && _loc3_))
                                                   {
                                                      §§push(this.§#,§);
                                                      while(_loc7_)
                                                      {
                                                         §§pop().deActivate();
                                                         while(true)
                                                         {
                                                            this.previousStateDeactivate();
                                                            loop13:
                                                            while(_loc7_ || param1)
                                                            {
                                                               §§push(this.§-!x§);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§#,§);
                                                                  addr213:
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeChild(§§pop().§&%§);
                                                                     while(true)
                                                                     {
                                                                        addr203:
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           this.§#,§ = _loc2_;
                                                                           addr207:
                                                                           while(true)
                                                                           {
                                                                              §#7§.log("Activate state: " + this.§#,§.mName);
                                                                              while(!_loc8_)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    this.stage.frameRate = this.§#,§.§9R§();
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr182:
                                                                                 }
                                                                                 continue loop3;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr203);
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr77);
            }
            §§goto(addr81);
         }
         §§goto(addr65);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §1""§(param1:§9!c§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != null)
            {
               do
               {
                  this.§`!H§.push(param1);
                  param1.§3"7§ = this;
               }
               while(_loc3_ && param1);
               
               §§push(true);
               addr79:
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
         §§goto(addr79);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§#,§);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr96);
                  }
                  else
                  {
                     addr97:
                  }
                  while(true)
                  {
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(this.§#,§);
                  do
                  {
                     if(§§pop().nextState)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr70);
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§push(this.§#,§);
                  }
                  while(_loc2_ && _loc2_);
                  
                  continue loop0;
               }
            }
            while(!(_loc3_ || param1));
            
            §§push(§§pop().run(param1));
            if(!_loc2_)
            {
               if(_loc3_ || param1)
               {
                  return §§pop();
               }
               addr96:
               return §9!c§.§%!j§;
            }
            addr70:
            return §9!c§.§6+§;
         }
         §§goto(addr97);
      }
      
      public function getAppWidth() : Number
      {
         return this.§-!x§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§-!x§.height;
      }
      
      public function get canvas() : §6!L§
      {
         return this.§-!x§;
      }
      
      public function get stage() : Stage
      {
         return this.§-!x§.stage;
      }
      
      public function §0!#§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§#,§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr74:
                  while(true)
                  {
                     §§push(this.§#,§);
                     addr76:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr79:
                        while(true)
                        {
                        }
                     }
                  }
                  addr74:
               }
               loop0:
               while(true)
               {
                  this.§^!J§ = param1;
                  while(true)
                  {
                     if(_loc3_ || param2)
                     {
                        this.§+=§ = param2;
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              break loop0;
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr74);
      }
   }
}
