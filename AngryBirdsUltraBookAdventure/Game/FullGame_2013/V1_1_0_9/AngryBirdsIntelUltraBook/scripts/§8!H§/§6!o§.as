package §8!H§
{
   import §-!$§.§,w§;
   import §1!B§.§<m§;
   import flash.display.Stage;
   
   public class §6!o§
   {
       
      
      private var §!!r§:Vector.<§9![§>;
      
      protected var §`!<§:§9![§;
      
      private var mNextState:String;
      
      protected var §`O§:§,w§ = null;
      
      private var §3o§:Number;
      
      private var §6>§:Number;
      
      public function §6!o§(param1:§,w§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§!!r§ = new Vector.<§9![§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§`O§ = param1;
                  while(!(_loc3_ && this))
                  {
                     this.§3o§ = this.§`O§.stage.stageWidth;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§6>§ = this.§`O§.stage.stageHeight;
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
      
      public function §,^§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§`!<§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§push(this.§`!<§.mName);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return §9![§.§4h§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr43);
         }
         §§goto(addr52);
      }
      
      public function §>j§() : §9![§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§`!<§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§`!<§);
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
      
      public function §0<§(param1:String) : §9![§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!!r§.length)
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
            else if((this.§!!r§[_loc2_] as §9![§).mName == param1)
            {
               break;
            }
            _loc2_++;
         }
         return this.§!!r§[_loc2_] as §9![§;
      }
      
      public function §[G§(param1:String, param2:§9![§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§!!r§.length)
            {
               if(_loc4_)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                     param2.§>!X§ = this;
                     addr63:
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr75:
                     while(true)
                     {
                        this.§!!r§[_loc3_] = param2;
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr63);
               }
               continue;
            }
            if((this.§!!r§[_loc3_] as §9![§).mName == param1)
            {
               §§goto(addr75);
            }
            §§goto(addr52);
         }
      }
      
      public function §9!m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §0!-§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §9![§.§4h§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §5!I§() : String
      {
         return this.mNextState;
      }
      
      public function §+Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.mNextState != §9![§.§4h§)
            {
               this.§81§(this.mNextState);
               do
               {
                  this.setViewSize(this.§3o§,this.§6>§);
                  this.mNextState = §9![§.§4h§;
               }
               while(!_loc2_);
               
               §§push(true);
               addr69:
            }
            else
            {
               §§push(false);
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr69);
      }
      
      public function §81§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9![§ = null;
         var _loc3_:§9![§ = null;
         for each(_loc3_ in this.§!!r§)
         {
            if(_loc7_ || this)
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc7_ || param1)
         {
            if(_loc2_ != null)
            {
               while(true)
               {
                  §§push(this.§`!<§);
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        while(true)
                        {
                           if(_loc6_)
                           {
                              addr237:
                              §§push(§<m§);
                              §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              break;
                           }
                           §§push(§<m§);
                           §§push("deActivate state: ");
                           if(_loc7_)
                           {
                              §§push(§§pop() + this.§`!<§.mName);
                           }
                           §§pop().log(§§pop());
                           loop4:
                           while(true)
                           {
                              §§push(this.§`!<§);
                              addr201:
                              while(true)
                              {
                                 §§pop().deActivate();
                                 addr202:
                                 while(true)
                                 {
                                    this.previousStateDeactivate();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr232);
                        §§push(false);
                     }
                     while(true)
                     {
                        this.§`!<§ = _loc2_;
                        §§goto(addr174);
                     }
                  }
               }
            }
            §§goto(addr237);
         }
         §§goto(addr197);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9X§(param1:§9![§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != null)
            {
               addr80:
               this.§!!r§.push(param1);
               param1.§>!X§ = this;
               return true;
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr80);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§`!<§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(§9![§.§7!_§);
                     if(!(_loc2_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     return this.§`!<§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`O§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`O§.height;
      }
      
      public function get canvas() : §,w§
      {
         return this.§`O§;
      }
      
      public function get stage() : Stage
      {
         return this.§`O§.stage;
      }
      
      public function §0!n§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§`!<§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§`!<§);
                     addr91:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr66:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     return;
                     addr73:
                  }
               }
               while(true)
               {
                  this.§3o§ = param1;
                  do
                  {
                     this.§6>§ = param2;
                  }
                  while(_loc4_ && _loc3_);
                  
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr66);
               }
               §§goto(addr73);
            }
            §§goto(addr91);
         }
         §§goto(addr73);
      }
   }
}
