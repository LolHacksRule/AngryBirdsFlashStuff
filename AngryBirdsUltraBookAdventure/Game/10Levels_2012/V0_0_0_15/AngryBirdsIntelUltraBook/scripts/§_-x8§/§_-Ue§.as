package §_-x8§
{
   import §_-0BH§.§_-FK§;
   import §_-jn§.§_-hS§;
   import flash.display.Stage;
   
   public class §_-Ue§
   {
       
      
      private var §_-wd§:Vector.<§_-nG§>;
      
      protected var §_-ot§:§_-nG§;
      
      private var mNextState:String;
      
      protected var §_-t8§:§_-hS§ = null;
      
      private var §_-AC§:Number;
      
      private var §_-bK§:Number;
      
      public function §_-Ue§(param1:§_-hS§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-wd§ = new Vector.<§_-nG§>();
               loop1:
               while(true)
               {
                  this.§_-t8§ = param1;
                  while(true)
                  {
                     this.§_-AC§ = this.§_-t8§.stage.stageWidth;
                     loop3:
                     while(_loc3_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§_-bK§ = this.§_-t8§.stage.stageHeight;
                              if(_loc3_ || param1)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §_-vR§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-ot§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     addr44:
                     §§push(this.§_-ot§.mName);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr53:
                     return §_-nG§.§_-1R§;
                  }
                  return §§pop();
               }
               §§goto(addr53);
            }
         }
         §§goto(addr44);
      }
      
      public function §_-053§() : §_-nG§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-ot§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr44);
                  }
               }
               return null;
            }
            §§goto(addr44);
         }
         addr44:
         return this.§_-ot§;
      }
      
      public function §_-0EA§(param1:String) : §_-nG§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§_-wd§.length)
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
               addr53:
            }
            else if((this.§_-wd§[_loc2_] as §_-nG§).mName == param1)
            {
               if(_loc3_)
               {
                  return this.§_-wd§[_loc2_] as §_-nG§;
               }
               §§goto(addr76);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr53);
            }
         }
         return null;
      }
      
      public function §_-Sk§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §_-02R§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §_-nG§.§_-1R§);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §_-rl§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.mNextState == §_-nG§.§_-1R§)
            {
               §§push(false);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
               addr48:
               return true;
            }
            loop0:
            while(true)
            {
               this.§_-vU§(this.mNextState);
               addr101:
               while(true)
               {
                  this.setViewSize(this.§_-AC§,this.§_-bK§);
                  if(_loc1_)
                  {
                     this.mNextState = §_-nG§.§_-1R§;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr48);
            }
         }
         §§goto(addr101);
      }
      
      public function §_-vU§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-nG§ = null;
         var _loc3_:§_-nG§ = null;
         for each(_loc3_ in this.§_-wd§)
         {
            if(!_loc7_)
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
                  §§push(this.§_-ot§);
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        while(true)
                        {
                           if(!(_loc6_ || this))
                           {
                              §§push(§_-FK§);
                              §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + param1);
                              }
                           }
                           else
                           {
                              addr246:
                           }
                           §§push(§_-FK§);
                           §§push("deActivate state: ");
                           if(_loc6_)
                           {
                              §§push(§§pop() + this.§_-ot§.mName);
                           }
                           §§pop().log(§§pop());
                           loop4:
                           while(_loc6_)
                           {
                              while(true)
                              {
                                 §§push(this.§_-ot§);
                                 addr201:
                                 while(true)
                                 {
                                    §§pop().deActivate();
                                    addr202:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       this.previousStateDeactivate();
                                       while(true)
                                       {
                                          §§push(this.§_-t8§);
                                          addr189:
                                          while(true)
                                          {
                                             §§push(this.§_-ot§);
                                             addr191:
                                             while(true)
                                             {
                                                §§pop().removeChild(§§pop().§_-FQ§);
                                                addr193:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                           §§pop().log(§§pop());
                           break;
                        }
                        addr241:
                        return false;
                        addr210:
                        addr253:
                     }
                     while(true)
                     {
                        this.§_-ot§ = _loc2_;
                        while(true)
                        {
                           §§push(§_-FK§);
                           §§push("Activate state: ");
                           if(_loc6_)
                           {
                              §§push(§§pop() + this.§_-ot§.mName);
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    this.stage.frameRate = this.§_-ot§.§_-lf§();
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(this.§_-t8§);
                                          if(!_loc7_)
                                          {
                                             §§push(this.§_-ot§);
                                             if(_loc6_)
                                             {
                                                §§pop().addChildAt(§§pop().§_-FQ§,0);
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr189);
                                          }
                                          §§goto(addr191);
                                       }
                                       else
                                       {
                                          §§goto(addr210);
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr253);
                              }
                              break;
                              if(_loc7_ && param1)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(true);
                                    if(_loc6_ || this)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr241);
                                 }
                                 else
                                 {
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr193);
                        }
                     }
                  }
               }
            }
            §§goto(addr246);
         }
         §§goto(addr238);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-pP§(param1:§_-nG§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               this.§_-wd§.push(param1);
               do
               {
                  param1.§_-vC§ = this;
               }
               while(!(_loc2_ || _loc2_));
               
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-ot§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§_-nG§.§_-JX§);
                     if(_loc3_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return this.§_-ot§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr66);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-t8§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-t8§.height;
      }
      
      public function get canvas() : §_-hS§
      {
         return this.§_-t8§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-t8§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-ot§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-ot§);
                     addr91:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr71:
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           this.§_-bK§ = param2;
                           if(!(_loc4_ && this))
                           {
                              if(!(_loc4_ && this))
                              {
                                 return;
                                 addr66:
                              }
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr94);
                  }
               }
               while(true)
               {
                  this.§_-AC§ = param1;
                  §§goto(addr71);
                  §§goto(addr94);
               }
               §§goto(addr66);
            }
            §§goto(addr91);
         }
         §§goto(addr66);
      }
   }
}
