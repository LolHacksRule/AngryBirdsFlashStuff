package §'X§
{
   import §0!<§.§#y§;
   import §<!7§.§2+§;
   import flash.display.Stage;
   
   public class §%y§
   {
       
      
      private var §+B§:Vector.<§9[§>;
      
      protected var §%k§:§9[§;
      
      private var mNextState:String;
      
      protected var §<P§:§2+§ = null;
      
      private var §8w§:Number;
      
      private var §44§:Number;
      
      public function §%y§(param1:§2+§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.§+B§ = new Vector.<§9[§>();
               if(_loc3_)
               {
                  this.§<P§ = param1;
                  if(!_loc2_)
                  {
                     this.§8w§ = this.§<P§.stage.stageWidth;
                     if(_loc3_)
                     {
                        addr64:
                        this.§44§ = this.§<P§.stage.stageHeight;
                     }
                  }
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §@!;§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§%k§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§push(this.§%k§.mName);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     §§push(§9[§.§2Z§);
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         §§goto(addr48);
      }
      
      public function §0!H§() : §9[§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§%k§);
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
         return this.§%k§;
      }
      
      public function §3S§(param1:String) : §9[§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+B§.length)
         {
            if((this.§+B§[_loc2_] as §9[§).mName == param1)
            {
               if(_loc4_)
               {
                  return this.§+B§[_loc2_] as §9[§;
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
      
      public function §,t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §^,§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §9[§.§2Z§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §`!9§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mNextState != §9[§.§2Z§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§7!&§(this.mNextState);
                  if(!_loc1_)
                  {
                     this.setViewSize(this.§8w§,this.§44§);
                     if(_loc2_)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr75);
               }
               addr65:
               this.mNextState = §9[§.§2Z§;
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
      
      public function §7!&§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9[§ = null;
         var _loc3_:§9[§ = null;
         for each(_loc3_ in this.§+B§)
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
               §§push(§#y§);
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
                  this.§<P§.addChildAt(this.§%k§.§0W§,0);
                  addr188:
                  addr190:
                  §§push(this.§%k§);
                  if(!(_loc6_ && this))
                  {
                     addr204:
                     §§pop().activate();
                     §§goto(addr210);
                  }
                  §§pop().§,!G§();
                  §§goto(addr210);
               }
               §§goto(addr210);
            }
            else
            {
               §§push(this.§%k§);
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() != null)
                  {
                     §§push(§#y§);
                     §§push("deActivate state: ");
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§%k§.mName);
                     }
                     §§pop().log(§§pop());
                     if(_loc7_ || this)
                     {
                        §§push(this.§%k§);
                        if(!(_loc6_ && _loc2_))
                        {
                           addr123:
                           §§pop().deActivate();
                           if(!(_loc6_ && this))
                           {
                              this.previousStateDeactivate();
                              §§push(this.§<P§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(this.§%k§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§pop().removeChild(§§pop().§0W§);
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
                  this.§%k§ = _loc2_;
                  §§push(§#y§);
                  §§push("Activate state: ");
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop() + this.§%k§.mName);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_)
                  {
                     addr182:
                     this.stage.frameRate = this.§%k§.§`u§();
                     §§goto(addr188);
                  }
                  addr210:
                  if(_loc7_)
                  {
                     addr207:
                     §§push(this.§%k§);
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
      
      public function §0!5§(param1:§9[§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 != null)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§+B§.push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr79);
         }
         addr65:
         param1.§4!=§ = this;
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
            §§push(this.§%k§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr36:
                     §§push(§9[§.§ !+§);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr46:
                     §§push(this.§%k§.run(param1));
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
         return this.§<P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§<P§.height;
      }
      
      public function get canvas() : §2+§
      {
         return this.§<P§;
      }
      
      public function get stage() : Stage
      {
         return this.§<P§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§%k§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     this.§%k§.setViewSize(param1,param2);
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr51);
               }
               this.§8w§ = param1;
               if(_loc4_)
               {
                  this.§44§ = param2;
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
