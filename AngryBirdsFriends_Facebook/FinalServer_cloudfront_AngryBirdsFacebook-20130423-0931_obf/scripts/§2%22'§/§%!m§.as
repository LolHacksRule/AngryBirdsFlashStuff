package §2"'§
{
   public class §%!m§ extends § "%§ implements §'v§
   {
       
      
      private var §,4§:Vector.<§'v§>;
      
      private var §[D§:Boolean = true;
      
      private var §8"5§:int = 0;
      
      public function §%!m§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'v§ = null;
         if(!_loc6_)
         {
            this.§,4§ = new Vector.<§'v§>();
            if(!_loc6_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               this.§,4§.push(_loc3_);
            }
         }
         if(!_loc6_)
         {
            this.§[D§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'v§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§,4§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ || _loc1_))
               {
                  break;
               }
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc4_ && _loc1_))
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'v§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§,4§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc1_))
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §5",§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§[D§)
            {
               if(!_loc1_)
               {
                  return this.§,4§.length;
               }
               while(true)
               {
               }
               addr75:
            }
            while(this.§,4§.length > this.§8"5§)
            {
               if(_loc2_)
               {
                  §§goto(addr62);
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr75);
            }
            §§push(0);
            if(!(_loc1_ && this))
            {
               return §§pop();
            }
            §§goto(addr62);
         }
         addr62:
         return 1;
      }
      
      private function get §`!T§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§[D§)
            {
               if(_loc2_)
               {
                  addr39:
                  §§push(0);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return this.§8"5§;
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr39);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'v§ = null;
         while(this.§,4§.length > 0)
         {
            _loc1_ = this.§,4§.shift();
            if(_loc3_ || this)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'v§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.isCompleted)
            {
               addr49:
               var _loc3_:* = this.§,4§;
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
         §§goto(addr49);
      }
      
      public function §7!d§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'v§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§,4§)
               {
                  if(_loc4_)
                  {
                     _loc1_.§7!d§();
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
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
         {
            if(!_loc4_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
         {
            if(!_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §?!J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'v§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §"!M§ = -§!"U§;
            if(_loc4_)
            {
               this.§8"5§ = 0;
               addr43:
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§,4§.length)
            {
               _loc2_ = this.§,4§[_loc1_];
               if(!_loc3_)
               {
                  _loc2_.§?!J§();
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_++;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§'v§ = null;
         if(!_loc6_)
         {
            §"!M§ += param1;
            if(_loc7_ || _loc2_)
            {
               addr34:
               if(§"!M§ < 0)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            §§push(this.§5",§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§`!T§);
            if(_loc7_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!(_loc6_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§,4§[_loc4_]).update(param1);
               if(_loc7_)
               {
                  this.§!!p§(_loc5_);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(_loc7_ || this)
            {
               this.§![§();
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.update(0);
         }
      }
      
      private function §!!p§(param1:§'v§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || _loc2_)
               {
                  if(!this.§[D§)
                  {
                     if(!_loc5_)
                     {
                     }
                  }
                  §§goto(addr95);
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§8"5§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§8"5§ = _loc3_;
               }
               if(!_loc4_)
               {
                  if(this.§8"5§ < this.§,4§.length)
                  {
                     if(_loc5_ || this)
                     {
                        addr89:
                        this.§,4§[this.§8"5§].play();
                     }
                  }
               }
            }
            addr95:
            return;
         }
         §§goto(addr89);
      }
      
      private function §![§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(this.isCompleted)
            {
               if(_loc3_)
               {
                  addr32:
                  if(!§1!>§)
                  {
                     if(!_loc4_)
                     {
                        this.§?!J§();
                        if(_loc3_ || _loc1_)
                        {
                           this.play();
                           if(_loc4_)
                           {
                              try
                              {
                                 addr63:
                                 §[!r§();
                                 if(!_loc4_)
                                 {
                                    §[!r§ = null;
                                 }
                                 §§goto(addr106);
                              }
                              catch(e:Error)
                              {
                                 if(!_loc4_)
                                 {
                                    §[!r§ = null;
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr101);
                                 }
                                 if(!§-$§)
                                 {
                                    addr101:
                                    throw e;
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr106);
                           }
                           addr106:
                           return;
                        }
                     }
                  }
                  else
                  {
                     if(§[!r§ != null)
                     {
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr32);
      }
   }
}
