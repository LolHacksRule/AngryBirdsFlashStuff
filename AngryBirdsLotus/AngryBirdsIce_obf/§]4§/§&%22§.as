package §]4§
{
   import §;8§.§3f§;
   import §@!,§.§8!6§;
   import flash.display.Stage;
   
   public class §&"§
   {
       
      
      private var §<!3§:Vector.<§-§>;
      
      protected var §`k§:§-§;
      
      private var mNextState:String;
      
      protected var §5A§:§8!6§ = null;
      
      private var §<j§:Number;
      
      private var §+Z§:Number;
      
      public function §&"§(param1:§8!6§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§<!3§ = new Vector.<§-§>();
               addr73:
               if(_loc3_ || _loc2_)
               {
                  this.§+Z§ = this.§5A§.stage.stageHeight;
                  addr80:
                  if(_loc2_)
                  {
                     while(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr73);
                        §§goto(addr80);
                     }
                     while(_loc3_)
                     {
                        this.§<j§ = this.§5A§.stage.stageWidth;
                        §§goto(addr56);
                     }
                     addr56:
                     while(true)
                     {
                        this.§5A§ = param1;
                        §§goto(addr85);
                     }
                     addr85:
                     addr95:
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §-! §() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§`k§);
            if(!(_loc1_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     addr59:
                     §§push(this.§`k§.mName);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     return §-§.§ !-§;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
         }
         §§goto(addr59);
      }
      
      public function §"! §() : §-§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§`k§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§`k§;
      }
      
      public function §=!1§(param1:String) : §-§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§<!3§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_ || this)
               {
                  return null;
               }
            }
            else if((this.§<!3§[_loc2_] as §-§).mName == param1)
            {
               break;
            }
            _loc2_++;
         }
         while(!(_loc3_ && this));
         
         return this.§<!3§[_loc2_] as §-§;
      }
      
      public function §&K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mNextState = param1;
         }
      }
      
      public function get §[+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §-§.§ !-§);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §,!>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.mNextState != §-§.§ !-§)
            {
               if(_loc2_)
               {
                  this.§?>§(this.mNextState);
               }
               this.setViewSize(this.§<j§,this.§+Z§);
               do
               {
                  this.mNextState = §-§.§ !-§;
               }
               while(!_loc2_);
               
               §§push(true);
               addr85:
            }
            else
            {
               §§push(false);
               if(!_loc1_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr85);
      }
      
      public function §?>§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§-§ = null;
         var _loc3_:§-§ = null;
         for each(_loc3_ in this.§<!3§)
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
         if(_loc6_ || param1)
         {
            if(_loc2_ != null)
            {
               loop1:
               while(true)
               {
                  §§push(this.§`k§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(!_loc7_)
                        {
                           while(true)
                           {
                              §§push(§3f§);
                              §§push("deActivate state: ");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + this.§`k§.mName);
                              }
                              §§pop().log(§§pop());
                              if(_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    addr233:
                                    §§push(§3f§);
                                    §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().log(§§pop());
                                    break;
                                 }
                                 §§push(this.§`k§);
                                 loop10:
                                 while(true)
                                 {
                                    §§pop().deActivate();
                                    this.previousStateDeactivate();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§5A§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§`k§);
                                          loop13:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§1-§);
                                             loop14:
                                             while(true)
                                             {
                                                addr173:
                                                while(true)
                                                {
                                                   this.§`k§ = _loc2_;
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(§3f§);
                                                      §§push("Activate state: ");
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + this.§`k§.mName);
                                                      }
                                                      §§pop().log(§§pop());
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               this.stage.frameRate = this.§`k§.§4!$§();
                                                               §§push(this.§5A§);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(this.§`k§);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().addChildAt(§§pop().§1-§,0);
                                                                     loop6:
                                                                     while(!_loc7_)
                                                                     {
                                                                        §§push(this.§`k§);
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§pop().activate();
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`k§);
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§pop().§2_§();
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             break loop5;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr228);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           addr228:
                           return §§pop();
                           §§push(false);
                        }
                        continue loop1;
                     }
                     §§goto(addr173);
                  }
               }
            }
            §§goto(addr233);
         }
         §§goto(addr212);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9!2§(param1:§-§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != null)
            {
               this.§<!3§.push(param1);
               do
               {
                  param1.§4F§ = this;
               }
               while(!(_loc2_ || _loc2_));
               
               §§push(true);
               addr83:
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`k§);
            if(_loc2_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(§-§.§#!?§);
                     if(_loc2_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     return this.§`k§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr50);
      }
      
      public function getAppWidth() : Number
      {
         return this.§5A§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§5A§.height;
      }
      
      public function get canvas() : §8!6§
      {
         return this.§5A§;
      }
      
      public function get stage() : Stage
      {
         return this.§5A§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§`k§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr74:
                  while(true)
                  {
                     §§push(this.§`k§);
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
                  this.§<j§ = param1;
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        this.§+Z§ = param2;
                        if(!(_loc4_ && param2))
                        {
                           if(!(_loc4_ && this))
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
