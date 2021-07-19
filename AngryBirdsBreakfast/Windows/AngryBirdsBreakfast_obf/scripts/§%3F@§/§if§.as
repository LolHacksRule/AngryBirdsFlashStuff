package §?@§
{
   public class §if§ extends §-w§ implements §9!k§
   {
       
      
      private var §9!5§:Vector.<§9!k§>;
      
      private var §`!v§:Boolean = true;
      
      private var §6!M§:int = 0;
      
      public function §if§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9!k§ = null;
         if(_loc6_)
         {
            this.§9!5§ = new Vector.<§9!k§>();
            if(_loc6_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               this.§9!5§.push(_loc3_);
            }
         }
         if(!_loc7_)
         {
            this.§`!v§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9!k§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§9!5§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(!_loc1_.isCompleted)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!k§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§9!5§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(_loc5_ || _loc1_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §<!M§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§`!v§)
            {
               while(this.§9!5§.length > this.§6!M§)
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr52);
                  }
                  if(_loc2_)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     addr76:
                     return this.§9!5§.length;
                  }
               }
               §§push(0);
               if(!_loc1_)
               {
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr76);
         }
         addr52:
         return 1;
      }
      
      private function get §1h§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§`!v§)
            {
               if(_loc2_ || this)
               {
                  addr39:
                  §§push(0);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return this.§6!M§;
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr39);
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9!k§ = null;
         while(this.§9!5§.length > 0)
         {
            _loc1_ = this.§9!5§.shift();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && this))
         {
            super.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9!k§ = null;
         if(_loc4_)
         {
            if(!this.isCompleted)
            {
               for each(_loc1_ in this.§9!5§)
               {
                  if(_loc4_ || this)
                  {
                     _loc1_.stop();
                  }
               }
               addr24:
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §+-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!k§ = null;
         if(!(_loc4_ && this))
         {
            if(!this.isCompleted)
            {
               addr40:
               for each(_loc1_ in this.§9!5§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     _loc1_.§+-§();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!k§ = null;
         if(!(_loc4_ && _loc1_))
         {
            super.pause();
         }
         for each(_loc1_ in this.§9!5§)
         {
            if(_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      override public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!k§ = null;
         if(!_loc4_)
         {
            super.play();
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§9!5§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §8_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!k§ = null;
         if(!_loc3_)
         {
            §^B§ = -§55§;
            if(_loc4_)
            {
               this.§6!M§ = 0;
               addr28:
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§9!5§.length)
            {
               _loc2_ = this.§9!5§[_loc1_];
               if(!_loc3_)
               {
                  _loc2_.§8_§();
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_++;
                  }
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§9!k§ = null;
         if(!_loc7_)
         {
            if(!§`G§(param1))
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
         }
         §§push(this.§<!M§);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§1h§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!5§[_loc4_]).update(param1);
            if(!(_loc7_ && param1))
            {
               this.§%!i§(_loc5_);
               if(!(_loc6_ || param1))
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(_loc6_)
         {
            this.§'!r§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.update(0);
         }
      }
      
      private function §%!i§(param1:§9!k§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.isCompleted)
            {
               if(!_loc4_)
               {
                  addr24:
                  if(!this.§`!v§)
                  {
                     if(_loc4_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr100);
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§6!M§);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_.§6!M§ = _loc3_;
               }
               if(_loc5_ || _loc2_)
               {
                  if(this.§6!M§ < this.§9!5§.length)
                  {
                     if(_loc5_ || this)
                     {
                     }
                  }
                  §§goto(addr100);
               }
               this.§9!5§[this.§6!M§].play();
            }
            addr100:
            return;
         }
         §§goto(addr24);
      }
      
      private function §'!r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.isCompleted)
            {
               if(!(_loc4_ && _loc1_))
               {
                  if(!§7f§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr46:
                        this.§8_§();
                        if(_loc3_)
                        {
                           this.play();
                           addr50:
                           if(_loc4_)
                           {
                              try
                              {
                                 addr68:
                                 §try§();
                                 if(_loc3_ || this)
                                 {
                                    §try§ = null;
                                 }
                                 §§goto(addr121);
                              }
                              catch(e:Error)
                              {
                                 var _loc2_:* = e;
                                 if(_loc3_)
                                 {
                                    §try§ = null;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(§5l§)
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                 }
                                 throw e;
                              }
                           }
                           §§goto(addr121);
                        }
                     }
                     addr121:
                     return;
                  }
                  if(§try§ != null)
                  {
                  }
                  §§goto(addr68);
                  §§goto(addr68);
               }
               §§goto(addr50);
            }
            §§goto(addr68);
         }
         §§goto(addr46);
      }
   }
}
