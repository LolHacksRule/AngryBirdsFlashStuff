package §8";§
{
   import §%"J§.§!`§;
   import §+!c§.§;!=§;
   import flash.display.Stage;
   
   public class §6!9§
   {
       
      
      private var §0"R§:Vector.<§+d§>;
      
      protected var §=2§:§+d§;
      
      private var mNextState:String;
      
      protected var §%3§:§!`§ = null;
      
      private var §,!&§:Number;
      
      private var §+!i§:Number;
      
      public function §6!9§(param1:§!`§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§0"R§ = new Vector.<§+d§>();
               addr83:
               while(!_loc2_)
               {
                  this.§%3§ = param1;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§,!&§ = this.§%3§.stage.stageWidth;
            while(_loc3_ || this)
            {
               this.§+!i§ = this.§%3§.stage.stageHeight;
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
      
      public function §%^§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§=2§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§=2§.mName);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     return §+d§.§-!7§;
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §2!d§() : §+d§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§=2§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§=2§);
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
      
      public function §]!G§(param1:String) : §+d§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§0"R§.length)
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
            else if((this.§0"R§[_loc2_] as §+d§).mName == param1)
            {
               if(_loc4_ || this)
               {
                  return this.§0"R§[_loc2_] as §+d§;
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
      
      public function §&!4§(param1:String, param2:§+d§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.§0"R§.length)
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
                     param2.§8!G§ = this;
                     addr91:
                     addr70:
                     loop1:
                     while(true)
                     {
                        this.§0"R§[_loc3_] = param2;
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
            else if((this.§0"R§[_loc3_] as §+d§).mName == param1)
            {
               §§goto(addr91);
            }
            §§goto(addr70);
         }
      }
      
      public function §`H§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §^!t§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §+d§.§-!7§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §&!u§() : String
      {
         return this.mNextState;
      }
      
      public function §@">§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.mNextState != §+d§.§-!7§)
            {
               if(_loc1_ || this)
               {
                  this.§`",§(this.mNextState);
               }
               this.setViewSize(this.§,!&§,this.§+!i§);
               do
               {
                  this.mNextState = §+d§.§-!7§;
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
      
      public function §`",§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§+d§ = null;
         var _loc3_:§+d§ = null;
         for each(_loc3_ in this.§0"R§)
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
                  §§push(this.§=2§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc6_)
                        {
                           §§push(§;!=§);
                           §§push("deActivate state: ");
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() + this.§=2§.mName);
                           }
                           §§pop().log(§§pop());
                        }
                        loop3:
                        while(true)
                        {
                           §§push(this.§=2§);
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
                                       §§push(§;!=§);
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
                                    §§push(this.§%3§);
                                    while(true)
                                    {
                                       §§push(this.§=2§);
                                       addr204:
                                       addr173:
                                       while(true)
                                       {
                                          §§pop().removeChild(§§pop().§?!T§);
                                          addr206:
                                          while(true)
                                          {
                                          }
                                       }
                                       §§push(this.§%3§);
                                       if(_loc7_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(this.§=2§);
                                       if(_loc6_ || param1)
                                       {
                                          §§pop().addChildAt(§§pop().§?!T§,0);
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
                                             §§push(this.§=2§);
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§pop().activate();
                                                   continue loop14;
                                                }
                                                §§push(this.§=2§);
                                                addr116:
                                                continue loop4;
                                                if(_loc6_ || param1)
                                                {
                                                   §§pop().§=k§();
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
                                                         this.stage.frameRate = this.§=2§.§1!_§();
                                                         continue loop5;
                                                         §§goto(addr81);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§;!=§);
                                                         §§push("Activate state: ");
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop() + this.§=2§.mName);
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
                        this.§=2§ = _loc2_;
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
      
      public function §%1§(param1:§+d§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               if(!(_loc3_ && this))
               {
                  this.§0"R§.push(param1);
                  param1.§8!G§ = this;
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
            §§push(this.§=2§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr35:
                     §§push(§+d§.§8!I§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr40:
                     return this.§=2§.run(param1);
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
         return this.§%3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§%3§.height;
      }
      
      public function get canvas() : §!`§
      {
         return this.§%3§;
      }
      
      public function get stage() : Stage
      {
         return this.§%3§.stage;
      }
      
      public function §5!l§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§=2§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr76:
                     this.§=2§.setViewSize(param1,param2);
                  }
                  while(true)
                  {
                  }
                  addr79:
               }
               while(true)
               {
                  this.§,!&§ = param1;
                  while(!_loc4_)
                  {
                     this.§+!i§ = param2;
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
