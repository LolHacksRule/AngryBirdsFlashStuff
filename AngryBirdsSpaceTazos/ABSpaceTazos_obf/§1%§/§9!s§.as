package §1%§
{
   import §#!b§.§"!"§;
   import §0N§.§2!@§;
   import flash.display.Stage;
   
   public class §9!s§
   {
       
      
      private var §<c§:Vector.<§0!3§>;
      
      protected var §?!M§:§0!3§;
      
      private var §>"?§:String;
      
      private var §]"D§:String;
      
      protected var §2! §:§"!"§ = null;
      
      private var § !%§:Number;
      
      private var §=D§:Number;
      
      public function §9!s§(param1:§"!"§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§<c§ = new Vector.<§0!3§>();
               loop1:
               do
               {
                  this.§2! § = param1;
                  while(true)
                  {
                     this.§ !%§ = this.§2! §.stage.stageWidth;
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           this.§=D§ = this.§2! §.stage.stageHeight;
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc2_);
               
            }
         }
      }
      
      public function §6![§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?!M§);
            if(_loc1_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     addr48:
                     §§push(this.§?!M§.mName);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr67:
                     return §0!3§.§^![§;
                  }
                  return §§pop();
               }
               §§goto(addr67);
            }
         }
         §§goto(addr48);
      }
      
      public function §,"7§() : §0!3§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§?!M§);
            if(!(_loc1_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§?!M§);
                  }
                  else
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr65);
            }
            return §§pop();
         }
         addr65:
         return null;
      }
      
      public function §[!@§(param1:String) : §0!3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§<c§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  return null;
               }
               addr87:
            }
            else if((this.§<c§[_loc2_] as §0!3§).mName == param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               §§goto(addr87);
            }
            _loc2_++;
         }
         return this.§<c§[_loc2_] as §0!3§;
      }
      
      public function §8!^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>"?§ = param1;
         }
      }
      
      public function get §!E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>"?§ == §0!3§.§^![§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §@?§() : String
      {
         return this.§>"?§;
      }
      
      public function §@!%§() : String
      {
         return this.§]"D§;
      }
      
      public function §@1§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§>"?§ != §0!3§.§^![§)
            {
               if(_loc2_ || this)
               {
                  this.§+"$§(this.§>"?§);
               }
               do
               {
                  this.setViewSize(this.§ !%§,this.§=D§);
                  this.§]"D§ = this.§>"?§;
                  do
                  {
                     this.§>"?§ = §0!3§.§^![§;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               while(_loc1_ && this);
               
               return true;
            }
            else
            {
               addr25:
               §§push(false);
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr25);
      }
      
      public function §+"$§(param1:String) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§0!3§ = null;
         var _loc3_:§0!3§ = null;
         for each(_loc3_ in this.§<c§)
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
         if(!(_loc7_ && _loc2_))
         {
            if(_loc2_ == null)
            {
               if(!(_loc7_ && this))
               {
                  §2!@§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                  if(!(_loc7_ && _loc2_))
                  {
                     addr83:
                     §§push(false);
                     if(!_loc7_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr87:
                     §§push(false);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc8_)
                  {
                     §§push(this.§?!M§);
                     while(true)
                     {
                        if(§§pop() != null)
                        {
                           loop2:
                           while(true)
                           {
                              §2!@§.log("deActivate state: " + this.§?!M§.mName);
                              loop3:
                              while(true)
                              {
                                 §§push(this.§?!M§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop().§;"-§);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§?!M§);
                                          loop7:
                                          for(; _loc8_; while(!(_loc7_ && _loc3_))
                                          {
                                             §§pop().deActivate();
                                             while(true)
                                             {
                                                this.previousStateDeactivate();
                                                loop12:
                                                for(; !_loc7_; while(_loc8_ || param1)
                                                {
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                })
                                                {
                                                   §§push(this.§2! §);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§?!M§);
                                                      addr214:
                                                      addr190:
                                                      while(true)
                                                      {
                                                         §§pop().removeChild(§§pop().§]!$§);
                                                         continue loop12;
                                                      }
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(this.§2! §);
                                                         if(_loc7_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§push(this.§?!M§);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            §§pop().addChildAt(§§pop().§]!$§,0);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(this.§?!M§);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§pop().activate(this.§@!%§());
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr214);
                                                         }
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr136:
                                                            if(_loc8_ || this)
                                                            {
                                                               continue loop5;
                                                            }
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.stage.frameRate = this.§?!M§.§?a§();
                                                                  continue loop19;
                                                               }
                                                               addr208:
                                                               while(true)
                                                               {
                                                                  §2!@§.log("Activate state: " + this.§?!M§.mName);
                                                                  continue loop18;
                                                               }
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          })
                                          {
                                             §§push(false);
                                             while(true)
                                             {
                                                §§pop().§;"-§ = §§pop();
                                                addr256:
                                                while(!(_loc7_ && param1))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§?!M§);
                                                      continue loop7;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§push(true);
                                       if(!(_loc7_ && param1))
                                       {
                                          return §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§?!M§ = _loc2_;
                           §§goto(addr208);
                        }
                     }
                  }
                  §§goto(addr190);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         §§goto(addr83);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §0j§(param1:§0!3§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1 != null)
            {
               if(_loc3_)
               {
                  this.§<c§.push(param1);
               }
               param1.§[M§ = this;
               return true;
            }
            else
            {
               addr25:
               §§push(false);
               if(_loc3_ || _loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr25);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§?!M§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr45:
                     §§push(§0!3§.§ !b§);
                     if(!(_loc3_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return this.§?!M§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr65);
         }
         §§goto(addr45);
      }
      
      public function getAppWidth() : Number
      {
         return this.§2! §.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§2! §.height;
      }
      
      public function get canvas() : §"!"§
      {
         return this.§2! §;
      }
      
      public function get stage() : Stage
      {
         return this.§2! §.stage;
      }
      
      public function §9C§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§?!M§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr76:
                     this.§?!M§.setViewSize(param1,param2);
                  }
                  while(true)
                  {
                     §§goto(addr42);
                  }
               }
               addr42:
               §§goto(addr41);
            }
            §§goto(addr76);
         }
         addr41:
         while(true)
         {
            this.§ !%§ = param1;
            do
            {
               this.§=D§ = param2;
            }
            while(!_loc3_);
            
            if(!_loc4_)
            {
               break;
            }
            continue loop0;
         }
      }
   }
}
