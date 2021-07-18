package §-H§
{
   import § !0§.§##§;
   import § !G§.§ #§;
   import flash.display.Stage;
   
   public class § 5§
   {
       
      
      private var §continue§:Vector.<§&c§>;
      
      protected var §+!3§:§&c§;
      
      private var mNextState:String;
      
      protected var §1C§:§##§ = null;
      
      private var §#Z§:Number;
      
      private var §%!&§:Number;
      
      public function § 5§(param1:§##§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§continue§ = new Vector.<§&c§>();
               while(!(_loc2_ && _loc3_))
               {
                  this.§1C§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§#Z§ = this.§1C§.stage.stageWidth;
                        do
                        {
                           this.§%!&§ = this.§1C§.stage.stageHeight;
                        }
                        while(!(_loc3_ || param1));
                        
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §&G§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!3§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     addr39:
                     §§push(this.§+!3§.mName);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr58:
                     return §&c§.§&`§;
                  }
                  return §§pop();
               }
               §§goto(addr58);
            }
         }
         §§goto(addr39);
      }
      
      public function §?!1§() : §&c§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+!3§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr58);
                  }
               }
               return null;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§+!3§;
      }
      
      public function §[!=§(param1:String) : §&c§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§continue§.length)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return null;
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
            if((this.§continue§[_loc2_] as §&c§).mName == param1)
            {
               break;
            }
            §§goto(addr47);
         }
         while(_loc4_ || this);
         
         return this.§continue§[_loc2_] as §&c§;
      }
      
      public function §=T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §8!1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §&c§.§&`§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §"3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.mNextState != §&c§.§&`§)
            {
               addr97:
               this.§3!3§(this.mNextState);
               this.setViewSize(this.§#Z§,this.§%!&§);
               this.mNextState = §&c§.§&`§;
               return true;
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
         §§goto(addr97);
      }
      
      public function §3!3§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§&c§ = null;
         var _loc3_:§&c§ = null;
         for each(_loc3_ in this.§continue§)
         {
            if(_loc7_ || _loc3_)
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
               loop1:
               while(true)
               {
                  §§push(this.§+!3§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(!_loc6_)
                        {
                           § #§.log("deActivate state: " + this.§+!3§.mName);
                           while(true)
                           {
                              §§push(this.§+!3§);
                              loop5:
                              while(_loc7_ || param1)
                              {
                                 §§pop().deActivate();
                                 loop6:
                                 while(true)
                                 {
                                    this.previousStateDeactivate();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§1C§);
                                       while(true)
                                       {
                                          §§push(this.§+!3§);
                                          addr202:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§?!N§);
                                             addr204:
                                             while(true)
                                             {
                                             }
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§1C§);
                                             if(!(_loc7_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(this.§+!3§);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§pop().addChildAt(§§pop().§?!N§,0);
                                                loop15:
                                                for(; _loc7_ || _loc3_; if(!(_loc7_ || param1))
                                                {
                                                   continue;
                                                },if(_loc6_)
                                                {
                                                   continue loop7;
                                                },if(_loc6_)
                                                {
                                                   continue loop3;
                                                },if(_loc7_ || this)
                                                {
                                                   §§push(true);
                                                   if(!_loc6_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr253:
                                                   § #§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                                                   §§goto(addr258);
                                                },§§goto(addr238))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§+!3§);
                                                      loop17:
                                                      while(!_loc6_)
                                                      {
                                                         §§pop().activate();
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            addr109:
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§+!3§);
                                                               if(_loc6_ && param1)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§goto(addr74);
                                                               continue loop17;
                                                            }
                                                            addr180:
                                                            while(!_loc6_)
                                                            {
                                                               continue loop6;
                                                               §§goto(addr109);
                                                            }
                                                            addr74:
                                                            §§pop().activateComplete();
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               continue loop15;
                                                            }
                                                         }
                                                         return false;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.stage.frameRate = this.§+!3§.§4f§();
                                                   continue loop14;
                                                   §§goto(addr151);
                                                }
                                                addr151:
                                                addr175:
                                             }
                                             else
                                             {
                                                §§goto(addr202);
                                             }
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                              if(_loc6_ && _loc2_)
                              {
                                 continue;
                              }
                              § #§.log("Activate state: " + this.§+!3§.mName);
                              §§goto(addr175);
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§+!3§ = _loc2_;
                        §§goto(addr180);
                        §§goto(addr204);
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr158);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#d§(param1:§&c§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               this.§continue§.push(param1);
               param1.§7P§ = this;
               return true;
            }
            else
            {
               addr19:
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr19);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+!3§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     §§push(§&c§.§!!Z§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr55:
                     return this.§+!3§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr55);
      }
      
      public function getAppWidth() : Number
      {
         return this.§1C§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§1C§.height;
      }
      
      public function get canvas() : §##§
      {
         return this.§1C§;
      }
      
      public function get stage() : Stage
      {
         return this.§1C§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§+!3§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§+!3§);
                     addr86:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr89:
                        while(true)
                        {
                        }
                     }
                     addr49:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     return;
                     addr56:
                  }
               }
               while(true)
               {
                  this.§#Z§ = param1;
                  while(!_loc4_)
                  {
                     this.§%!&§ = param2;
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr89);
               }
               §§goto(addr56);
            }
            §§goto(addr86);
         }
         §§goto(addr89);
      }
   }
}
