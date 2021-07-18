package §'V§
{
   public class static extends §8a§ implements §%!"§
   {
       
      
      private var §4@§:Vector.<§%!"§>;
      
      private var §,!i§:Boolean = true;
      
      private var §,!=§:int = 0;
      
      public function static(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§%!"§ = null;
         if(_loc7_)
         {
            this.§4@§ = new Vector.<§%!"§>();
            if(_loc7_)
            {
               addr30:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(_loc7_)
               {
                  this.§4@§.push(_loc3_);
               }
            }
            if(!(_loc6_ && param2))
            {
               this.§,!i§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            if(_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(_loc5_)
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
         var _loc1_:§%!"§ = null;
         var _loc3_:* = this.§4@§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               if(!_loc1_.isPaused)
               {
                  if(!_loc4_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §^"<§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,!i§)
            {
               if(!_loc1_)
               {
                  return this.§4@§.length;
               }
               while(true)
               {
                  addr46:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr54);
               }
               addr75:
            }
            while(true)
            {
               if(this.§4@§.length > this.§,!=§)
               {
                  if(!_loc2_)
                  {
                     addr55:
                     break;
                  }
                  §§goto(addr46);
               }
               break;
               §§goto(addr75);
            }
            §§push(0);
            if(!_loc1_)
            {
               return §§pop();
            }
            addr54:
            return 1;
         }
         §§goto(addr55);
      }
      
      private function get §]!A§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,!i§)
            {
               if(_loc2_)
               {
                  §§push(0);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return this.§,!=§;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%!"§ = null;
         while(this.§4@§.length > 0)
         {
            _loc1_ = this.§4@§.shift();
            if(_loc2_ || this)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%!"§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr25:
               for each(_loc1_ in this.§4@§)
               {
                  if(_loc5_ || this)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §]!!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%!"§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.isCompleted)
            {
               addr39:
               var _loc3_:* = this.§4@§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc1_.§]!!§();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.play();
            }
         }
      }
      
      public function §!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%!"§ = null;
         if(_loc4_)
         {
            §9R§ = -§&l§;
            if(!(_loc3_ && _loc1_))
            {
               this.§,!=§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§4@§.length)
         {
            _loc2_ = this.§4@§[_loc1_];
            if(_loc4_ || this)
            {
               _loc2_.§!1§();
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
         var _loc5_:§%!"§ = null;
         if(!_loc7_)
         {
            §9R§ += param1;
            if(!(_loc7_ && param1))
            {
               if(§9R§ < 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr38);
                  }
               }
               §§push(this.§^"<§);
               if(_loc6_ || param1)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(this.§]!A§);
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc3_);
               if(!(_loc7_ && this))
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               while(_loc4_ < _loc3_ + _loc2_)
               {
                  (_loc5_ = this.§4@§[_loc4_]).update(param1);
                  if(_loc6_)
                  {
                     this.§>!o§(_loc5_);
                     if(!(_loc7_ && this))
                     {
                        _loc4_++;
                     }
                  }
               }
               if(!(_loc7_ && param1))
               {
                  this.§6!P§();
               }
               return;
            }
         }
         addr38:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.update(0);
         }
      }
      
      private function §>!o§(param1:§%!"§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.isCompleted)
            {
               if(_loc4_ || param1)
               {
                  if(!this.§,!i§)
                  {
                     if(_loc5_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr104);
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§,!=§);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  _loc2_.§,!=§ = _loc3_;
               }
               if(_loc4_ || param1)
               {
                  addr80:
                  if(this.§,!=§ < this.§4@§.length)
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr104);
               }
               this.§4@§[this.§,!=§].play();
            }
            addr104:
            return;
         }
         §§goto(addr80);
      }
      
      private function §6!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.isCompleted)
            {
               if(_loc4_)
               {
                  if(!§;!n§)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr42);
                     }
                  }
                  else if(§,h§ != null)
                  {
                  }
                  §§goto(addr74);
               }
               addr42:
               this.§!1§();
               if(_loc4_ || this)
               {
                  addr51:
                  this.play();
                  if(_loc3_ && _loc1_)
                  {
                     try
                     {
                        addr74:
                        §,h§();
                        if(_loc4_ || _loc3_)
                        {
                           §,h§ = null;
                        }
                        §§goto(addr127);
                     }
                     catch(e:Error)
                     {
                        var _loc2_:* = e;
                        if(!_loc3_)
                        {
                           §,h§ = null;
                           if(_loc3_ && _loc2_)
                           {
                           }
                           §§goto(addr122);
                        }
                        if(!§!!p§)
                        {
                           addr122:
                           throw e;
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr127);
               }
               addr127:
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr51);
      }
   }
}
