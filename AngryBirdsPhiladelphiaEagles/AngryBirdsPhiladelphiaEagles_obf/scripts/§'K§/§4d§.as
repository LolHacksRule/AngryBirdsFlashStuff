package §'K§
{
   public class §4d§ extends §%!4§ implements §>#§
   {
       
      
      private var §=!!§:Vector.<§>#§>;
      
      private var §@v§:Boolean = true;
      
      private var § !D§:int = 0;
      
      public function §4d§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§>#§ = null;
         if(!(_loc7_ && param2))
         {
            this.§=!!§ = new Vector.<§>#§>();
            if(_loc6_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               this.§=!!§.push(_loc3_);
            }
         }
         if(_loc6_)
         {
            this.§@v§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>#§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§=!!§)
         {
            if(_loc4_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(_loc4_ || _loc2_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>#§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=!!§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §2!H§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§@v§)
            {
               while(this.§=!!§.length > this.§ !D§)
               {
                  if(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr76:
                  }
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr69);
                  }
                  continue;
                  return this.§=!!§.length;
               }
               §§push(0);
               if(!(_loc1_ && this))
               {
                  return §§pop();
               }
               addr69:
               return 1;
            }
         }
         §§goto(addr76);
      }
      
      private function get §2!6§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§@v§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(0);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return this.§ !D§;
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>#§ = null;
         while(this.§=!!§.length > 0)
         {
            _loc1_ = this.§=!!§.shift();
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>#§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr45:
               var _loc3_:* = this.§=!!§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function set() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>#§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§=!!§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.set();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>#§ = null;
         var _loc3_:* = this.§=!!§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>#§ = null;
         for each(_loc1_ in this.§=!!§)
         {
            if(!_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §7!§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>#§ = null;
         if(_loc4_)
         {
            §-!9§ = -§'!D§;
            if(_loc4_)
            {
               this.§ !D§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!!§.length)
         {
            _loc2_ = this.§=!!§[_loc1_];
            if(_loc4_)
            {
               _loc2_.§7!§();
               if(!_loc4_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§>#§ = null;
         if(_loc6_ || _loc3_)
         {
            §-!9§ += param1;
            if(!_loc7_)
            {
               §§goto(addr33);
            }
            §§goto(addr38);
         }
         addr33:
         if(§-!9§ < 0)
         {
            if(_loc6_)
            {
               addr38:
               return;
            }
         }
         §§push(this.§2!H§);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§2!6§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=!!§[_loc4_]).update(param1);
            if(_loc6_ || _loc2_)
            {
               this.§>!O§(_loc5_);
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(!(_loc7_ && _loc3_))
         {
            this.§"r§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.update(0);
         }
      }
      
      private function §>!O§(param1:§>#§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(param1.isCompleted)
            {
               if(!_loc4_)
               {
                  if(!this.§@v§)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr81);
                  }
               }
               addr49:
               var _loc2_:*;
               §§push((_loc2_ = this).§ !D§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§ !D§ = _loc3_;
               }
               if(_loc5_)
               {
                  addr81:
                  if(this.§ !D§ < this.§=!!§.length)
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr95);
               }
               this.§=!!§[this.§ !D§].play();
               §§goto(addr95);
            }
            addr95:
            return;
         }
         §§goto(addr49);
      }
      
      private function §"r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(!(_loc3_ && this))
               {
                  if(!§<!,§)
                  {
                     if(_loc4_)
                     {
                        addr37:
                        this.§7!§();
                        if(_loc4_ || _loc2_)
                        {
                           addr56:
                           this.play();
                           if(!_loc3_)
                           {
                              addr112:
                              return;
                              addr60:
                           }
                           §§goto(addr112);
                        }
                        try
                        {
                           addr64:
                           §1A§();
                           if(!_loc3_)
                           {
                              §1A§ = null;
                           }
                           §§goto(addr112);
                        }
                        catch(e:Error)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §1A§ = null;
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr107);
                           }
                           if(!§!y§)
                           {
                              addr107:
                              throw e;
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr60);
                  }
                  else
                  {
                     if(§1A§ != null)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr112);
         }
         §§goto(addr56);
      }
   }
}
