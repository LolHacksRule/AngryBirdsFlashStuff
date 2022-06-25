package § !x§
{
   public class §[u§ extends §2k§ implements §#!K§
   {
       
      
      private var §'!D§:Vector.<§#!K§>;
      
      private var §>!<§:Boolean = true;
      
      private var §2!m§:int = 0;
      
      public function §[u§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#!K§ = null;
         if(!_loc7_)
         {
            this.§'!D§ = new Vector.<§#!K§>();
            if(_loc6_ || _loc3_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               this.§'!D§.push(_loc3_);
            }
         }
         if(!_loc7_)
         {
            this.§>!<§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!K§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§'!D§;
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
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            if(!(_loc4_ && _loc1_))
            {
               if(!_loc1_.isPaused)
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
      
      private function get §'X§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§>!<§)
            {
               while(this.§'!D§.length > this.§2!m§)
               {
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr64);
                     }
                     else
                     {
                        addr76:
                     }
                     return this.§'!D§.length;
                  }
                  if(_loc2_ || _loc1_)
                  {
                     addr72:
                     break;
                  }
               }
               §§push(0);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr64:
               return 1;
            }
            §§goto(addr76);
         }
         §§goto(addr72);
      }
      
      private function get §7L§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§>!<§)
            {
               if(!(_loc1_ && this))
               {
                  addr44:
                  §§push(0);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return this.§2!m§;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#!K§ = null;
         while(this.§'!D§.length > 0)
         {
            _loc1_ = this.§'!D§.shift();
            if(!_loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!K§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§'!D§)
               {
                  if(_loc4_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §;h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!K§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr45:
               for each(_loc1_ in this.§'!D§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     _loc1_.§;h§();
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            if(_loc4_ || this)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            if(!_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §2W§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#!K§ = null;
         if(!_loc4_)
         {
            §?Q§ = -§%U§;
            if(!_loc4_)
            {
               this.§2!m§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!D§.length)
         {
            _loc2_ = this.§'!D§[_loc1_];
            if(!_loc4_)
            {
               _loc2_.§2W§();
               if(!_loc3_)
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
         var _loc5_:§#!K§ = null;
         if(!_loc7_)
         {
            §?Q§ += param1;
            if(_loc6_ || param1)
            {
               if(§?Q§ < 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr38);
                  }
               }
            }
            §§push(this.§'X§);
            if(_loc6_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§7L§);
            if(_loc6_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§'!D§[_loc4_]).update(param1);
               if(_loc6_)
               {
                  this.§`B§(_loc5_);
                  if(!_loc7_)
                  {
                     _loc4_++;
                  }
               }
            }
            if(_loc6_)
            {
               this.§0u§();
            }
            return;
         }
         addr38:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.update(0);
         }
      }
      
      private function §`B§(param1:§#!K§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            if(param1.isCompleted)
            {
               if(!_loc5_)
               {
                  addr28:
                  if(!this.§>!<§)
                  {
                     if(!(_loc5_ && this))
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§2!m§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§2!m§ = _loc3_;
                        }
                        if(_loc5_ && _loc3_)
                        {
                        }
                        §§goto(addr99);
                     }
                     if(this.§2!m§ < this.§'!D§.length)
                     {
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  §§goto(addr99);
               }
               this.§'!D§[this.§2!m§].play();
            }
            addr99:
            return;
         }
         §§goto(addr28);
      }
      
      private function §0u§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(!_loc3_)
               {
                  if(!§;!6§)
                  {
                     if(!_loc3_)
                     {
                        this.§2W§();
                        if(!_loc3_)
                        {
                           this.play();
                           if(_loc4_)
                           {
                              addr102:
                              return;
                              addr50:
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr50);
                     }
                     try
                     {
                        addr54:
                        §9!0§();
                        if(!(_loc3_ && _loc2_))
                        {
                           §9!0§ = null;
                        }
                     }
                     catch(e:Error)
                     {
                        if(!_loc3_)
                        {
                           §9!0§ = null;
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr97);
                        }
                        if(!§0b§)
                        {
                           addr97:
                           throw e;
                        }
                     }
                  }
                  else if(§9!0§ != null)
                  {
                     §§goto(addr54);
                  }
               }
            }
         }
         §§goto(addr102);
      }
   }
}
