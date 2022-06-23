package §"!&§
{
   import §#'§.§'Q§;
   import §+!"§.§5!<§;
   import flash.display.Stage;
   
   public class §7§
   {
       
      
      private var §6x§:Vector.<§#!,§>;
      
      protected var §7r§:§#!,§;
      
      private var mNextState:String;
      
      protected var §7P§:§'Q§ = null;
      
      private var §4!7§:Number;
      
      private var §'O§:Number;
      
      public function §7§(param1:§'Q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.§6x§ = new Vector.<§#!,§>();
               if(_loc3_)
               {
                  this.§7P§ = param1;
                  if(!_loc2_)
                  {
                     this.§4!7§ = this.§7P§.stage.stageWidth;
                     if(_loc3_)
                     {
                        addr64:
                        this.§'O§ = this.§7P§.stage.stageHeight;
                     }
                  }
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §?c§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7r§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§7r§.mName);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     §§push(§#!,§.§47§);
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §8y§() : §#!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§7r§);
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
         return this.§7r§;
      }
      
      public function §%D§(param1:String) : §#!,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6x§.length)
         {
            if((this.§6x§[_loc2_] as §#!,§).mName == param1)
            {
               if(_loc4_)
               {
                  return this.§6x§[_loc2_] as §#!,§;
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
      
      public function §'<§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §"M§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §#!,§.§47§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §'K§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mNextState != §#!,§.§47§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§1!A§(this.mNextState);
                  if(!_loc1_)
                  {
                     this.setViewSize(this.§4!7§,this.§'O§);
                     if(_loc2_)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr75);
               }
               addr65:
               this.mNextState = §#!,§.§47§;
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
      
      public function §1!A§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§#!,§ = null;
         var _loc3_:§#!,§ = null;
         for each(_loc3_ in this.§6x§)
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
               §§push(§5!<§);
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
                  this.§7P§.addChildAt(this.§7r§.§[0§,0);
                  addr188:
                  addr190:
                  §§push(this.§7r§);
                  if(!(_loc6_ && this))
                  {
                     addr204:
                     §§pop().activate();
                     §§goto(addr210);
                  }
                  §§pop().§4Q§();
                  §§goto(addr210);
               }
               §§goto(addr210);
            }
            else
            {
               §§push(this.§7r§);
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() != null)
                  {
                     §§push(§5!<§);
                     §§push("deActivate state: ");
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§7r§.mName);
                     }
                     §§pop().log(§§pop());
                     if(_loc7_ || this)
                     {
                        §§push(this.§7r§);
                        if(!(_loc6_ && _loc2_))
                        {
                           addr123:
                           §§pop().deActivate();
                           if(!(_loc6_ && this))
                           {
                              this.previousStateDeactivate();
                              §§push(this.§7P§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(this.§7r§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§pop().removeChild(§§pop().§[0§);
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
                  this.§7r§ = _loc2_;
                  §§push(§5!<§);
                  §§push("Activate state: ");
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop() + this.§7r§.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_)
                  {
                     addr182:
                     this.stage.frameRate = this.§7r§.§#K§();
                     §§goto(addr188);
                  }
                  addr210:
                  if(_loc7_)
                  {
                     addr207:
                     §§push(this.§7r§);
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
      
      public function §^'§(param1:§#!,§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 != null)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§6x§.push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr79);
         }
         addr65:
         param1.§-_§ = this;
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
            §§push(this.§7r§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr36:
                     §§push(§#!,§.§0m§);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr46:
                     §§push(this.§7r§.run(param1));
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
         return this.§7P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§7P§.height;
      }
      
      public function get canvas() : §'Q§
      {
         return this.§7P§;
      }
      
      public function get stage() : Stage
      {
         return this.§7P§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§7r§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     this.§7r§.setViewSize(param1,param2);
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr51);
               }
               this.§4!7§ = param1;
               if(_loc4_)
               {
                  this.§'O§ = param2;
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
