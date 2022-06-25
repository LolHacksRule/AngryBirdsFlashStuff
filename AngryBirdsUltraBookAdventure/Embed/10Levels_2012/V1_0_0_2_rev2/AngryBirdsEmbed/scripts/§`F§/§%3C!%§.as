package §`F§
{
   public class §<!%§ extends §^F§ implements §4!A§
   {
       
      
      private var §]!7§:Vector.<§4!A§>;
      
      private var §3!F§:Boolean = true;
      
      private var §[]§:int = 0;
      
      public function §<!%§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§4!A§ = null;
         if(_loc7_)
         {
            this.§]!7§ = new Vector.<§4!A§>();
            if(!(_loc6_ && this))
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               this.§]!7§.push(_loc3_);
            }
         }
         if(_loc7_ || this)
         {
            this.§3!F§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!A§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§]!7§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc2_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc4_ && _loc3_))
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            if(!_loc4_)
            {
               if(!_loc1_.isPaused)
               {
                  if(!(_loc4_ && this))
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §1g§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§3!F§)
            {
               if(!_loc1_)
               {
                  return this.§]!7§.length;
               }
            }
            if(this.§]!7§.length > this.§[]§)
            {
               if(_loc2_)
               {
                  §§push(1);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(0);
               }
               return §§pop();
            }
         }
         §§goto(addr77);
      }
      
      private function get §?R§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§3!F§)
            {
               if(_loc1_)
               {
                  addr28:
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(this.§[]§);
               }
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4!A§ = null;
         while(this.§]!7§.length > 0)
         {
            _loc1_ = this.§]!7§.shift();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!A§ = null;
         if(_loc4_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc3_:* = this.§]!7§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §0C§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!A§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§]!7§)
               {
                  if(_loc4_)
                  {
                     _loc1_.§0C§();
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
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            if(_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!A§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§]!7§)
         {
            if(_loc4_ || _loc2_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §-g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!A§ = null;
         if(_loc4_)
         {
            §3j§ = -§?-§;
            if(_loc4_)
            {
               this.§[]§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!7§.length)
         {
            _loc2_ = this.§]!7§[_loc1_];
            if(_loc4_ || _loc2_)
            {
               _loc2_.§-g§();
               if(!(_loc4_ || _loc3_))
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
         var _loc5_:§4!A§ = null;
         if(!_loc7_)
         {
            §3j§ += param1;
            if(!_loc7_)
            {
               if(§3j§ < 0)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
               }
            }
            §§push(this.§1g§);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§?R§);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§]!7§[_loc4_]).update(param1);
               if(_loc6_)
               {
                  this.§6Q§(_loc5_);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(!(_loc7_ && _loc2_))
            {
               this.§]!#§();
            }
            return;
         }
         addr38:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §6Q§(param1:§4!A§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.isCompleted)
            {
               if(!(_loc4_ && this))
               {
                  if(!this.§3!F§)
                  {
                     if(_loc5_ || this)
                     {
                        addr49:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§[]§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_.§[]§ = _loc3_;
                        }
                        if(_loc5_)
                        {
                           if(this.§[]§ < this.§]!7§.length)
                           {
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr95);
                        }
                        this.§]!7§[this.§[]§].play();
                     }
                  }
               }
               §§goto(addr49);
            }
            addr95:
            return;
         }
         §§goto(addr49);
      }
      
      private function §]!#§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            if(this.isCompleted)
            {
               if(_loc3_ || this)
               {
                  if(!§,!D§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§-g§();
                        if(_loc3_ || _loc2_)
                        {
                           this.play();
                           if(_loc3_ || _loc2_)
                           {
                              addr126:
                              return;
                              addr74:
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr74);
                     }
                  }
                  else
                  {
                     if(§]!8§ != null)
                     {
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr126);
               }
               try
               {
                  §]!8§();
                  if(_loc3_)
                  {
                     §]!8§ = null;
                  }
               }
               catch(e:Error)
               {
                  if(_loc3_ || this)
                  {
                     §]!8§ = null;
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr121);
                  }
                  if(!§4v§)
                  {
                     addr121:
                     throw e;
                  }
               }
            }
         }
         §§goto(addr126);
      }
   }
}
