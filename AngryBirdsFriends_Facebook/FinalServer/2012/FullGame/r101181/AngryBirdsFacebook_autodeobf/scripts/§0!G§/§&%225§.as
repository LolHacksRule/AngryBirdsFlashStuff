package §0!G§
{
   import §-"6§.§5E§;
   import §6o§.§+!k§;
   import flash.display.Stage;
   
   public class §&"5§
   {
       
      
      private var §>!"§:Vector.<§1-§>;
      
      protected var §8%§:§1-§;
      
      private var mNextState:String;
      
      protected var §5!X§:§5E§ = null;
      
      private var §+"D§:Number;
      
      private var §[8§:Number;
      
      public function §&"5§(param1:§5E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§>!"§ = new Vector.<§1-§>();
               addr83:
               while(!_loc2_)
               {
                  this.§5!X§ = param1;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§+"D§ = this.§5!X§.stage.stageWidth;
            while(_loc3_ || this)
            {
               this.§[8§ = this.§5!X§.stage.stageHeight;
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop2;
               }
               §§goto(addr83);
            }
         }
      }
      
      public function §<!W§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8%§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§8%§.mName);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     return §1-§.§+"7§;
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §>k§() : §1-§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§8%§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§8%§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         addr49:
         return null;
      }
      
      public function §;n§(param1:String) : §1-§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§>!"§.length)
            {
               if(!_loc3_)
               {
                  break;
               }
               while(_loc3_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr54:
            }
            else if((this.§>!"§[_loc2_] as §1-§).mName == param1)
            {
               if(_loc4_ || this)
               {
                  return this.§>!"§[_loc2_] as §1-§;
               }
               §§goto(addr82);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr54);
            }
         }
         return null;
      }
      
      public function §-![§(param1:String, param2:§1-§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.§>!"§.length)
            {
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     param2.§0!+§ = this;
                     addr91:
                     addr70:
                     loop1:
                     while(true)
                     {
                        this.§>!"§[_loc3_] = param2;
                        continue loop2;
                        addr77:
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
               §§goto(addr77);
            }
            else if((this.§>!"§[_loc3_] as §1-§).mName == param1)
            {
               §§goto(addr91);
            }
            §§goto(addr70);
         }
      }
      
      public function §=!w§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §<z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §1-§.§+"7§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §;"&§() : String
      {
         return this.mNextState;
      }
      
      public function §[!@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.mNextState != §1-§.§+"7§)
            {
               if(_loc1_ || this)
               {
                  this.§2!r§(this.mNextState);
               }
               this.setViewSize(this.§+"D§,this.§[8§);
               do
               {
                  this.mNextState = §1-§.§+"7§;
               }
               while(!_loc1_);
               
               §§push(true);
               addr71:
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
         §§goto(addr71);
      }
      
      public function §2!r§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§1-§ = null;
         var _loc3_:§1-§ = null;
         for each(_loc3_ in this.§>!"§)
         {
            if(!(_loc7_ && _loc3_))
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc6_)
         {
            if(_loc2_ != null)
            {
               loop1:
               while(true)
               {
                  §§push(this.§8%§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc6_)
                        {
                           §§push(§+!k§);
                           §§push("deActivate state: ");
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() + this.§8%§.mName);
                           }
                           §§pop().log(§§pop());
                        }
                        loop3:
                        while(true)
                        {
                           §§push(this.§8%§);
                           loop4:
                           while(_loc6_)
                           {
                              §§pop().deActivate();
                              loop5:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ && _loc2_)
                                    {
                                       §§push(§+!k§);
                                       §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                    }
                                    else
                                    {
                                       addr266:
                                    }
                                    continue loop1;
                                    §§pop().log(§§pop());
                                    break;
                                 }
                                 this.previousStateDeactivate();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§5!X§);
                                    while(true)
                                    {
                                       §§push(this.§8%§);
                                       addr204:
                                       addr173:
                                       while(true)
                                       {
                                          §§pop().removeChild(§§pop().§3^§);
                                          addr206:
                                          while(true)
                                          {
                                          }
                                       }
                                       §§push(this.§5!X§);
                                       if(_loc7_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(this.§8%§);
                                       if(_loc6_ || param1)
                                       {
                                          §§pop().addChildAt(§§pop().§3^§,0);
                                          loop14:
                                          for(; _loc6_ || _loc3_; while(true)
                                          {
                                             if(_loc7_ && param1)
                                             {
                                                continue loop14;
                                             }
                                             if(!(_loc6_ || this))
                                             {
                                                break;
                                             }
                                             §§goto(addr116);
                                          },continue loop5)
                                          {
                                             §§push(this.§8%§);
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§pop().activate();
                                                   continue loop14;
                                                }
                                                §§push(this.§8%§);
                                                addr116:
                                                continue loop4;
                                                if(_loc6_ || param1)
                                                {
                                                   §§pop().§7!#§();
                                                   if(!_loc7_)
                                                   {
                                                      addr81:
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr196:
                                                      while(_loc6_)
                                                      {
                                                         this.stage.frameRate = this.§8%§.§ g§();
                                                         continue loop5;
                                                         §§goto(addr81);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§+!k§);
                                                         §§push("Activate state: ");
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop() + this.§8%§.mName);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr189);
                                                      }
                                                      addr189:
                                                      continue loop4;
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr204);
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                              }
                              §§goto(addr254);
                              §§push(false);
                           }
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        this.§8%§ = _loc2_;
                        §§goto(addr196);
                        §§goto(addr206);
                     }
                  }
               }
            }
            §§goto(addr266);
         }
         §§goto(addr278);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §[3§(param1:§1-§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               if(!(_loc3_ && this))
               {
                  this.§>!"§.push(param1);
                  param1.§0!+§ = this;
                  addr78:
                  §§push(true);
                  addr78:
               }
               §§goto(addr78);
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
         §§goto(addr78);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§8%§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr35:
                     §§push(§1-§.§]m§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr40:
                     return this.§8%§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr40);
         }
         §§goto(addr35);
      }
      
      public function getAppWidth() : Number
      {
         return this.§5!X§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§5!X§.height;
      }
      
      public function get canvas() : §5E§
      {
         return this.§5!X§;
      }
      
      public function get stage() : Stage
      {
         return this.§5!X§.stage;
      }
      
      public function §<!s§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§8%§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr76:
                     this.§8%§.setViewSize(param1,param2);
                  }
                  while(true)
                  {
                  }
                  addr79:
               }
               while(true)
               {
                  this.§+"D§ = param1;
                  while(!_loc4_)
                  {
                     this.§[8§ = param2;
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                     }
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr76);
      }
   }
}
