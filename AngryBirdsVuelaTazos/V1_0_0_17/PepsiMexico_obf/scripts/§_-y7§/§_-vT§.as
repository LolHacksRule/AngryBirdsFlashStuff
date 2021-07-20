package §_-y7§
{
   import §_-9§.§_-0W§;
   import §_-e3§.§_-54§;
   import flash.display.Stage;
   
   public class §_-vT§
   {
       
      
      private var §_-u6§:Vector.<§_-VA§>;
      
      private var §_-qZ§:§_-VA§;
      
      private var mNextState:String;
      
      protected var §_-XX§:§_-0W§ = null;
      
      private var §_-Px§:Number;
      
      private var §_-9t§:Number;
      
      public function §_-vT§(param1:§_-0W§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this.§_-u6§ = new Vector.<§_-VA§>();
               if(!(_loc3_ && _loc2_))
               {
                  addr49:
                  this.§_-XX§ = param1;
                  if(_loc3_ && _loc2_)
                  {
                  }
                  §§goto(addr80);
               }
               this.§_-Px§ = this.§_-XX§.stage.stageWidth;
               if(!_loc3_)
               {
                  this.§_-9t§ = this.§_-XX§.stage.stageHeight;
                  §§goto(addr80);
               }
               addr80:
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §_-9j§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-qZ§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr44:
                     §§push(this.§_-qZ§.mName);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr48:
                     §§push(§_-VA§.§_-U§);
                  }
                  return §§pop();
               }
               §§goto(addr48);
            }
         }
         §§goto(addr44);
      }
      
      public function §_-cO§() : §_-VA§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§_-qZ§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§_-qZ§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop();
         }
         addr51:
         return null;
      }
      
      public function §_-eE§(param1:String) : §_-VA§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-u6§.length)
         {
            if((this.§_-u6§[_loc2_] as §_-VA§).mName == param1)
            {
               if(_loc3_ || param1)
               {
                  return this.§_-u6§[_loc2_] as §_-VA§;
               }
               break;
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
         return null;
      }
      
      public function §_-Ld§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function §_-wg§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mNextState != §_-VA§.§_-U§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§_-DN§(this.mNextState);
                  if(_loc1_ || _loc1_)
                  {
                     this.§_-nJ§(this.§_-Px§,this.§_-9t§);
                     if(!_loc2_)
                     {
                        §§goto(addr53);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr71);
               }
               addr53:
               this.mNextState = §_-VA§.§_-U§;
               if(!(_loc2_ && _loc1_))
               {
                  addr71:
                  §§push(true);
                  if(_loc1_)
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
      
      public function §_-DN§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-VA§ = null;
         var _loc3_:§_-VA§ = null;
         for each(_loc3_ in this.§_-u6§)
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
         if(_loc2_ == null)
         {
            §_-54§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            §§push(false);
            if(_loc6_)
            {
               return §§pop();
            }
         }
         else
         {
            §§push(this.§_-qZ§);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  §_-54§.log("deActivate state: " + this.§_-qZ§.mName);
                  §§push(this.§_-qZ§);
                  if(!_loc7_)
                  {
                     §§pop().deActivate();
                     §§push(this.§_-XX§);
                     if(_loc6_)
                     {
                        §§push(this.§_-qZ§);
                        if(_loc6_ || _loc3_)
                        {
                           §§pop().removeChild(§§pop().§_-Cv§);
                           if(!_loc7_)
                           {
                              addr99:
                              this.§_-qZ§ = _loc2_;
                              §_-54§.log("Activate state: " + this.§_-qZ§.mName);
                              addr113:
                              this.§_-XX§.addChildAt(this.§_-qZ§.§_-Cv§,0);
                              §§push(this.§_-qZ§);
                              if(_loc6_)
                              {
                                 §§pop().activate();
                                 if(!(_loc7_ && param1))
                                 {
                                    addr137:
                                    this.§_-qZ§.§_-pY§();
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr137);
               }
               §§goto(addr99);
            }
            §§goto(addr137);
         }
         addr139:
         return true;
      }
      
      public function §_-13§(param1:§_-VA§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  this.§_-u6§.push(param1);
                  if(_loc2_)
                  {
                     §§goto(addr38);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr59);
         }
         addr38:
         param1.§_-f0§ = this;
         if(_loc2_)
         {
            addr43:
            §§push(true);
            if(_loc2_ || _loc3_)
            {
               return §§pop();
            }
         }
         else
         {
            addr59:
            §§push(false);
         }
         return §§pop();
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-qZ§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr45:
                     §§push(§_-VA§.§_-vQ§);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     §§push(this.§_-qZ§.run(param1));
                  }
                  return §§pop();
               }
            }
            §§goto(addr62);
         }
         §§goto(addr45);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-XX§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-XX§.height;
      }
      
      public function get canvas() : §_-0W§
      {
         return this.§_-XX§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-XX§.stage;
      }
      
      public function §_-nJ§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-qZ§);
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param2))
                  {
                     addr34:
                     §§pop();
                     §§push(this.§_-qZ§);
                     if(_loc3_)
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr48);
            }
            §§goto(addr34);
         }
         addr39:
         §§push(§§pop().§_-NY§);
         if(!(_loc4_ && _loc3_))
         {
            addr48:
            if(§§pop())
            {
               if(_loc3_ || this)
               {
                  §§push(this.§_-qZ§);
                  if(_loc3_ || _loc3_)
                  {
                     addr72:
                     §§push(§§pop().§_-NY§);
                     if(_loc3_)
                     {
                        §§goto(addr75);
                     }
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr103);
         }
         addr75:
         §§push(param1);
         if(_loc3_ || this)
         {
            §§pop().viewWidth = §§pop();
            addr87:
            §§push(this.§_-qZ§.§_-NY§);
            §§push(param2);
         }
         §§pop().viewHeight = §§pop();
         if(_loc3_ || param2)
         {
            addr103:
            this.§_-Px§ = param1;
            if(!_loc4_)
            {
               this.§_-9t§ = param2;
            }
         }
      }
   }
}
