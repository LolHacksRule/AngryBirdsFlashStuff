package §=!3§
{
   import § !A§.§"!8§;
   import § !r§.§`![§;
   import flash.display.Stage;
   
   public class §=!p§
   {
       
      
      private var §5!%§:Vector.<§;!!§>;
      
      protected var §<n§:§;!!§;
      
      private var mNextState:String;
      
      protected var §4a§:§"!8§ = null;
      
      private var §;b§:Number;
      
      private var §7!L§:Number;
      
      public function §=!p§(param1:§"!8§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               this.§5!%§ = new Vector.<§;!!§>();
               if(!_loc3_)
               {
                  addr55:
                  this.§4a§ = param1;
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr78);
            }
            addr65:
            this.§;b§ = this.§4a§.stage.stageWidth;
            if(_loc2_ || _loc3_)
            {
               addr78:
               this.§7!L§ = this.§4a§.stage.stageHeight;
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §^!^§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<n§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     addr48:
                     §§push(this.§<n§.mName);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     §§push(§;!!§.§!3§);
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
            §§goto(addr48);
         }
         §§goto(addr57);
      }
      
      public function §?8§() : §;!!§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<n§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr28);
                  }
               }
               return null;
            }
            §§goto(addr28);
         }
         addr28:
         return this.§<n§;
      }
      
      public function §8! §(param1:String) : §;!!§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!%§.length)
         {
            if((this.§5!%§[_loc2_] as §;!!§).mName == param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return this.§5!%§[_loc2_] as §;!!§;
               }
            }
            else
            {
               _loc2_++;
               if(_loc3_ && _loc2_)
               {
                  break;
               }
            }
         }
         return null;
      }
      
      public function §8!W§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get § 8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §;!!§.§!3§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §0!v§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §;!!§.§!3§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§&!f§(this.mNextState);
                  if(_loc1_)
                  {
                     addr56:
                     this.setViewSize(this.§;b§,this.§7!L§);
                     if(_loc1_)
                     {
                        this.mNextState = §;!!§.§!3§;
                        if(_loc1_)
                        {
                           addr70:
                           §§push(true);
                           if(_loc1_ || _loc2_)
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
                  }
                  §§goto(addr70);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr79);
      }
      
      public function §&!f§(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§;!!§ = null;
         var _loc3_:§;!!§ = null;
         for each(_loc3_ in this.§5!%§)
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
         if(_loc6_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               if(_loc6_ || this)
               {
                  §§push(§`![§);
                  §§push("WARNING: StateManager->setState, requested state name does not exists: ");
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  §§push(false);
                  if(_loc6_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr135:
                  §§push(this.§4a§);
                  if(!_loc7_)
                  {
                     §§push(this.§<n§);
                     if(!(_loc7_ && param1))
                     {
                        §§pop().removeChild(§§pop().§>E§);
                        addr150:
                        this.§<n§ = _loc2_;
                        if(_loc6_)
                        {
                           §§push(§`![§);
                           §§push("Activate state: ");
                           if(!_loc7_)
                           {
                              §§push(§§pop() + this.§<n§.mName);
                           }
                           §§pop().log(§§pop());
                           if(_loc6_ || param1)
                           {
                              addr171:
                              this.stage.frameRate = this.§<n§.getTargetFrameRate();
                              this.§4a§.addChildAt(this.§<n§.§>E§,0);
                              addr181:
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(this.§<n§);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr210:
                                    §§pop().activate();
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr220:
                                       this.§<n§.§+R§();
                                    }
                                 }
                                 §§goto(addr220);
                              }
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr220);
                     }
                  }
                  §§goto(addr181);
               }
               addr222:
               return true;
            }
            §§push(this.§<n§);
            if(!(_loc7_ && param1))
            {
               if(§§pop() != null)
               {
                  if(_loc6_ || this)
                  {
                     §§push(§`![§);
                     §§push("deActivate state: ");
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() + this.§<n§.mName);
                     }
                     §§pop().log(§§pop());
                     §§push(this.§<n§);
                     if(!_loc7_)
                     {
                        §§pop().deActivate();
                        this.previousStateDeactivate();
                        §§goto(addr135);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr171);
               }
               §§goto(addr150);
            }
            §§goto(addr220);
         }
         §§goto(addr150);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function § Y§(param1:§;!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  addr33:
                  this.§5!%§.push(param1);
                  if(!_loc3_)
                  {
                     param1.§7'§ = this;
                     if(!_loc3_)
                     {
                        addr44:
                        §§push(true);
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr53:
                        §§push(false);
                     }
                     return §§pop();
                  }
                  §§goto(addr53);
               }
               §§goto(addr44);
            }
            §§goto(addr53);
         }
         §§goto(addr33);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§<n§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr40:
                     §§push(§;!!§.§8K§);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     §§push(this.§<n§.run(param1));
                  }
                  return §§pop();
               }
            }
            §§goto(addr50);
         }
         §§goto(addr40);
      }
      
      public function getAppWidth() : Number
      {
         return this.§4a§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§4a§.height;
      }
      
      public function get canvas() : §"!8§
      {
         return this.§4a§;
      }
      
      public function get stage() : Stage
      {
         return this.§4a§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§<n§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr42:
                     this.§<n§.setViewSize(param1,param2);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr55);
               }
               this.§;b§ = param1;
               if(!_loc4_)
               {
                  this.§7!L§ = param2;
                  §§goto(addr55);
               }
               addr55:
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
