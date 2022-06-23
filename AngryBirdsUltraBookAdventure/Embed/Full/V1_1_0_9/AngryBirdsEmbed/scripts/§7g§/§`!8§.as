package §7g§
{
   import §3a§.§7!+§;
   import §7j§.§5!N§;
   import flash.display.Stage;
   
   public class §`!8§
   {
       
      
      private var §+R§:Vector.<§1Q§>;
      
      protected var §6D§:§1Q§;
      
      private var mNextState:String;
      
      protected var §"B§:§5!N§ = null;
      
      private var §5n§:Number;
      
      private var §@!$§:Number;
      
      public function §`!8§(param1:§5!N§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.§+R§ = new Vector.<§1Q§>();
               if(_loc3_)
               {
                  this.§"B§ = param1;
                  if(!_loc2_)
                  {
                     this.§5n§ = this.§"B§.stage.stageWidth;
                     if(_loc3_)
                     {
                        addr64:
                        this.§@!$§ = this.§"B§.stage.stageHeight;
                     }
                  }
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §8!;§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6D§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§6D§.mName);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     §§push(§1Q§.§5+§);
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §@v§() : §1Q§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6D§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§6D§;
      }
      
      public function §`l§(param1:String) : §1Q§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+R§.length)
         {
            if((this.§+R§[_loc2_] as §1Q§).mName == param1)
            {
               if(_loc4_)
               {
                  return this.§+R§[_loc2_] as §1Q§;
               }
            }
            else
            {
               _loc2_++;
               if(_loc3_ && param1)
               {
                  break;
               }
            }
         }
         return null;
      }
      
      public function §[q§(param1:String, param2:§1Q§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.§+R§.length)
         {
            if((this.§+R§[_loc3_] as §1Q§).mName == param1)
            {
               if(!_loc4_)
               {
                  this.§+R§[_loc3_] = param2;
                  if(!(_loc4_ && param1))
                  {
                     param2.§<1§ = this;
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                  }
                  break;
               }
            }
            _loc3_++;
            if(_loc4_ && param2)
            {
               break;
            }
         }
      }
      
      public function §+N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §"_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §1Q§.§5+§);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §'!"§() : String
      {
         return this.mNextState;
      }
      
      public function §=2§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §1Q§.§5+§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§4!2§(this.mNextState);
                  if(_loc1_)
                  {
                     this.setViewSize(this.§5n§,this.§@!$§);
                     if(_loc2_ && this)
                     {
                     }
                     addr85:
                     return false;
                     addr84:
                  }
                  this.mNextState = §1Q§.§5+§;
                  if(_loc1_ || _loc2_)
                  {
                     §§push(true);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §4!2§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§1Q§ = null;
         var _loc3_:§1Q§ = null;
         for each(_loc3_ in this.§+R§)
         {
            if(_loc6_)
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
            if(_loc2_ == null)
            {
               addr58:
               §§push(§7!+§);
               §§push("WARNING: StateManager->setState, requested state name does not exists: ");
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               §§push(false);
               if(_loc6_ || _loc2_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(this.§6D§);
               if(_loc6_ || this)
               {
                  if(§§pop() != null)
                  {
                     if(!_loc7_)
                     {
                        §§push(§7!+§);
                        §§push("deActivate state: ");
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() + this.§6D§.mName);
                        }
                        §§pop().log(§§pop());
                        §§push(this.§6D§);
                        if(!_loc7_)
                        {
                           §§pop().deActivate();
                           this.previousStateDeactivate();
                           if(!_loc7_)
                           {
                              §§push(this.§"B§);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(this.§6D§);
                                 if(_loc6_)
                                 {
                                    §§pop().removeChild(§§pop().§,!7§);
                                    addr140:
                                    this.§6D§ = _loc2_;
                                    §§push(§7!+§);
                                    §§push("Activate state: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + this.§6D§.mName);
                                    }
                                    §§pop().log(§§pop());
                                    this.stage.frameRate = this.§6D§.§"!§();
                                    addr170:
                                    §§push(this.§"B§);
                                    §§push(this.§6D§);
                                 }
                                 §§pop().addChildAt(§§pop().§,!7§,0);
                                 §§push(this.§6D§);
                                 if(_loc6_ || this)
                                 {
                                    addr184:
                                    §§pop().activate();
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr140);
                        }
                        addr187:
                        this.§6D§.§^7§();
                        return true;
                     }
                  }
                  §§goto(addr140);
               }
               §§goto(addr184);
            }
            §§goto(addr184);
         }
         §§goto(addr58);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §8Y§(param1:§1Q§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§+R§.push(param1);
                  if(_loc3_ || _loc2_)
                  {
                     param1.§<1§ = this;
                     if(!(_loc2_ && param1))
                     {
                        addr70:
                        §§push(true);
                        if(_loc3_ || param1)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr79:
                        §§push(false);
                     }
                     return §§pop();
                  }
                  §§goto(addr79);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr79);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6D§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr45:
                     §§push(§1Q§.§1!6§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     §§push(this.§6D§.run(param1));
                  }
                  return §§pop();
               }
            }
            §§goto(addr50);
         }
         §§goto(addr45);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"B§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"B§.height;
      }
      
      public function get canvas() : §5!N§
      {
         return this.§"B§;
      }
      
      public function get stage() : Stage
      {
         return this.§"B§.stage;
      }
      
      public function §;!2§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§6D§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§6D§.setViewSize(param1,param2);
                     if(!_loc3_)
                     {
                        addr43:
                        this.§5n§ = param1;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr51);
                     }
                     this.§@!$§ = param2;
                  }
                  addr51:
                  return;
               }
               §§goto(addr43);
            }
            §§goto(addr38);
         }
         §§goto(addr43);
      }
   }
}
