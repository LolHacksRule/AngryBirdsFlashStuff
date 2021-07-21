package §;<§
{
   import §6!k§.§@B§;
   import §6]§.§,"0§;
   import flash.display.Stage;
   
   public class § "4§
   {
       
      
      private var §9O§:Vector.<§'B§>;
      
      protected var §2!N§:§'B§;
      
      private var mNextState:String;
      
      protected var §&"!§:§@B§ = null;
      
      private var §3]§:Number;
      
      private var §5!6§:Number;
      
      public function § "4§(param1:§@B§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§9O§ = new Vector.<§'B§>();
               while(!(_loc2_ && _loc2_))
               {
                  this.§&"!§ = param1;
                  do
                  {
                     this.§3]§ = this.§&"!§.stage.stageWidth;
                     do
                     {
                        this.§5!6§ = this.§&"!§.stage.stageHeight;
                     }
                     while(!_loc3_);
                     
                  }
                  while(!(_loc3_ || this));
                  
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §get §() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§2!N§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr53:
                     §§push(this.§2!N§.mName);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     return §'B§.§^o§;
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
         }
         §§goto(addr53);
      }
      
      public function §<"%§() : §'B§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2!N§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return this.§2!N§;
      }
      
      public function §-T§(param1:String) : §'B§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9O§.length)
            {
               if(!_loc4_)
               {
                  break;
               }
               while(_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr43:
            }
            else if((this.§9O§[_loc2_] as §'B§).mName == param1)
            {
               if(_loc3_)
               {
                  return this.§9O§[_loc2_] as §'B§;
               }
               §§goto(addr76);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr43);
            }
         }
         return null;
      }
      
      public function §#P§(param1:String, param2:§'B§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.§9O§.length)
            {
               if(!_loc4_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                     addr91:
                     this.§9O§[_loc3_] = param2;
                     loop1:
                     while(true)
                     {
                        param2.§0!z§ = this;
                        addr57:
                        while(!(_loc5_ || param2))
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     addr55:
                     while(true)
                     {
                        _loc3_++;
                     }
                  }
               }
               §§goto(addr57);
            }
            else if((this.§9O§[_loc3_] as §'B§).mName == param1)
            {
               §§goto(addr91);
            }
            §§goto(addr55);
         }
      }
      
      public function §<t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mNextState = param1;
         }
      }
      
      public function get §5"#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §'B§.§^o§);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §?^§() : String
      {
         return this.mNextState;
      }
      
      public function §-![§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.mNextState != §'B§.§^o§)
            {
               addr98:
               this.§;!Z§(this.mNextState);
               while(true)
               {
                  this.setViewSize(this.§3]§,this.§5!6§);
                  while(!(_loc1_ && this))
                  {
                     this.mNextState = §'B§.§^o§;
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr34);
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            addr34:
            return true;
         }
         §§goto(addr98);
      }
      
      public function §;!Z§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§'B§ = null;
         var _loc3_:§'B§ = null;
         for each(_loc3_ in this.§9O§)
         {
            if(!(_loc7_ && this))
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
                  §§push(this.§2!N§);
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(true)
                        {
                           §,"0§.log("deActivate state: " + this.§2!N§.mName);
                           loop4:
                           while(true)
                           {
                              §§push(this.§2!N§);
                              while(true)
                              {
                                 §§pop().deActivate();
                                 loop6:
                                 while(_loc6_ || param1)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.previousStateDeactivate();
                                       loop7:
                                       for(; _loc6_; if(!(_loc6_ || this))
                                       {
                                          continue;
                                       },§§goto(addr169))
                                       {
                                          §§push(this.§&"!§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§2!N§);
                                             addr189:
                                             addr169:
                                             while(true)
                                             {
                                                §§pop().removeChild(§§pop().§ D§);
                                                addr191:
                                                while(true)
                                                {
                                                   addr179:
                                                   while(true)
                                                   {
                                                      this.§2!N§ = _loc2_;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §,"0§.log("Activate state: " + this.§2!N§.mName);
                                                         while(true)
                                                         {
                                                            this.stage.frameRate = this.§2!N§.getTargetFrameRate();
                                                            while(_loc6_)
                                                            {
                                                               continue loop7;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.§&"!§);
                                                if(!_loc6_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(this.§2!N§);
                                                if(!_loc7_)
                                                {
                                                   §§pop().addChildAt(§§pop().§ D§,0);
                                                   while(_loc6_ || this)
                                                   {
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§2!N§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§pop().activate();
                                                            addr106:
                                                            while(_loc6_ || _loc3_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr247:
                                                         §,"0§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                                                         addr232:
                                                         return §§pop();
                                                         §§push(false);
                                                         addr252:
                                                      }
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr92);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr191);
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr252);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr179);
                  }
               }
            }
            §§goto(addr247);
         }
         §§goto(addr169);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&p§(param1:§'B§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 != null)
            {
               do
               {
                  this.§9O§.push(param1);
                  do
                  {
                     param1.§0!z§ = this;
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
               §§push(true);
               addr75:
            }
            else
            {
               §§push(false);
               if(!_loc2_)
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
         if(!_loc3_)
         {
            §§push(this.§2!N§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     addr35:
                     §§push(§'B§.§++§);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     return this.§2!N§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr50);
         }
         §§goto(addr35);
      }
      
      public function getAppWidth() : Number
      {
         return this.§&"!§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§&"!§.height;
      }
      
      public function get canvas() : §@B§
      {
         return this.§&"!§;
      }
      
      public function get stage() : Stage
      {
         return this.§&"!§.stage;
      }
      
      public function §#"3§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§2!N§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2!N§);
                     addr72:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  this.§3]§ = param1;
                  loop2:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           this.§5!6§ = param2;
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                              break loop2;
                           }
                           continue loop2;
                        }
                        return;
                        addr54:
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr54);
      }
   }
}
