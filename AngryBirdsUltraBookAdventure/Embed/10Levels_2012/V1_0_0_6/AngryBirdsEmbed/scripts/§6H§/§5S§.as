package §6H§
{
   import §8c§.§ p§;
   import §>K§.§9X§;
   import flash.display.Stage;
   
   public class §5S§
   {
       
      
      private var §,f§:Vector.<§>3§>;
      
      protected var §?!D§:§>3§;
      
      private var mNextState:String;
      
      protected var §6#§:§ p§ = null;
      
      private var §`i§:Number;
      
      private var §!j§:Number;
      
      public function §5S§(param1:§ p§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.§,f§ = new Vector.<§>3§>();
               if(_loc3_)
               {
                  this.§6#§ = param1;
                  if(!_loc2_)
                  {
                     this.§`i§ = this.§6#§.stage.stageWidth;
                     if(_loc3_)
                     {
                        addr64:
                        this.§!j§ = this.§6#§.stage.stageHeight;
                     }
                  }
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §@!%§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?!D§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§?!D§.mName);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     §§push(§>3§.§0s§);
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §>A§() : §>3§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?!D§);
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
         return this.§?!D§;
      }
      
      public function §?<§(param1:String) : §>3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,f§.length)
         {
            if((this.§,f§[_loc2_] as §>3§).mName == param1)
            {
               if(_loc4_)
               {
                  return this.§,f§[_loc2_] as §>3§;
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
      
      public function each(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §9@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §>3§.§0s§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §0$§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mNextState != §>3§.§0s§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§1!H§(this.mNextState);
                  if(!_loc1_)
                  {
                     this.setViewSize(this.§`i§,this.§!j§);
                     if(_loc2_)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr75);
               }
               addr65:
               this.mNextState = §>3§.§0s§;
               if(_loc2_)
               {
                  addr71:
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr75:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr75);
      }
      
      public function §1!H§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>3§ = null;
         var _loc3_:§>3§ = null;
         for each(_loc3_ in this.§,f§)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc7_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               §§push(§9X§);
               §§push("WARNING: StateManager->setState, requested state name does not exists: ");
               if(!_loc6_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(_loc7_)
               {
                  §§push(false);
                  if(!_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr192:
                  this.§6#§.addChildAt(this.§?!D§.§62§,0);
                  addr188:
                  addr190:
                  §§push(this.§?!D§);
                  if(!(_loc6_ && this))
                  {
                     addr204:
                     §§pop().activate();
                     §§goto(addr210);
                  }
                  §§pop().§ Z§();
                  §§goto(addr210);
               }
               §§goto(addr210);
            }
            else
            {
               §§push(this.§?!D§);
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() != null)
                  {
                     §§push(§9X§);
                     §§push("deActivate state: ");
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§?!D§.mName);
                     }
                     §§pop().log(§§pop());
                     if(_loc7_ || this)
                     {
                        §§push(this.§?!D§);
                        if(!(_loc6_ && _loc2_))
                        {
                           addr123:
                           §§pop().deActivate();
                           if(!(_loc6_ && this))
                           {
                              this.previousStateDeactivate();
                              §§push(this.§6#§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(this.§?!D§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§pop().removeChild(§§pop().§62§);
                                    §§goto(addr153);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr182);
                  }
                  addr153:
                  this.§?!D§ = _loc2_;
                  §§push(§9X§);
                  §§push("Activate state: ");
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop() + this.§?!D§.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_)
                  {
                     addr182:
                     this.stage.frameRate = this.§?!D§.§'!6§();
                     §§goto(addr188);
                  }
                  addr210:
                  if(_loc7_)
                  {
                     addr207:
                     §§push(this.§?!D§);
                  }
                  return true;
               }
               §§goto(addr123);
            }
         }
         §§goto(addr207);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §5!%§(param1:§>3§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 != null)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§,f§.push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr79);
         }
         addr65:
         param1.§'X§ = this;
         if(!(_loc2_ && _loc2_))
         {
            §§push(true);
            if(!_loc2_)
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
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?!D§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr36:
                     §§push(§>3§.§8! §);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr46:
                     §§push(this.§?!D§.run(param1));
                  }
                  return §§pop();
               }
            }
            §§goto(addr46);
         }
         §§goto(addr36);
      }
      
      public function getAppWidth() : Number
      {
         return this.§6#§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§6#§.height;
      }
      
      public function get canvas() : § p§
      {
         return this.§6#§;
      }
      
      public function get stage() : Stage
      {
         return this.§6#§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§?!D§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     this.§?!D§.setViewSize(param1,param2);
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr51);
               }
               this.§`i§ = param1;
               if(_loc4_)
               {
                  this.§!j§ = param2;
                  §§goto(addr51);
               }
               addr51:
               return;
            }
         }
         §§goto(addr38);
      }
   }
}
