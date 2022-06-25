package §#P§
{
   public class §+!!§ extends §1!?§ implements §]!N§
   {
       
      
      private var §0!K§:Vector.<§]!N§>;
      
      private var §6$§:Boolean = true;
      
      private var §"H§:int = 0;
      
      public function §+!!§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§]!N§ = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§0!K§ = new Vector.<§]!N§>();
            if(!_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               this.§0!K§.push(_loc3_);
            }
         }
         if(_loc6_ || this)
         {
            this.§6$§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
         {
            if(!_loc4_)
            {
               if(!_loc1_.isCompleted)
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
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!N§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§0!K§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
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
      
      private function get §#k§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§6$§)
            {
               if(!_loc2_)
               {
                  return this.§0!K§.length;
               }
               addr47:
               §§push(1);
               if(_loc1_)
               {
                  return §§pop();
               }
            }
            else
            {
               if(this.§0!K§.length > this.§"H§)
               {
                  if(_loc1_)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr52);
               }
               §§push(0);
            }
            addr52:
            return §§pop();
         }
         §§goto(addr47);
      }
      
      private function get §@1§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§6$§)
            {
               if(!_loc1_)
               {
                  addr39:
                  §§push(0);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  §§push(this.§"H§);
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
         var _loc1_:§]!N§ = null;
         while(this.§0!K§.length > 0)
         {
            _loc1_ = this.§0!K§.shift();
            if(_loc3_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!N§ = null;
         if(_loc4_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§0!K§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §;!-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]!N§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§0!K§)
               {
                  if(!_loc4_)
                  {
                     _loc1_.§;!-§();
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!N§ = null;
         var _loc3_:* = this.§0!K§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.play();
            }
         }
      }
      
      public function §4R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]!N§ = null;
         if(!_loc4_)
         {
            §^f§ = -§40§;
            if(_loc3_ || _loc1_)
            {
               this.§"H§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!K§.length)
         {
            _loc2_ = this.§0!K§[_loc1_];
            if(_loc3_ || this)
            {
               _loc2_.§4R§();
               if(!_loc4_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§]!N§ = null;
         if(!(_loc7_ && _loc3_))
         {
            §^f§ += param1;
            if(!_loc7_)
            {
               if(§^f§ < 0)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§#k§);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(this.§@1§);
               if(!_loc7_)
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
                  (_loc5_ = this.§0!K§[_loc4_]).update(param1);
                  if(!(_loc7_ && _loc2_))
                  {
                     this.§;!?§(_loc5_);
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc4_++;
               }
               if(!_loc7_)
               {
                  this.§^v§();
               }
               return;
            }
         }
         addr43:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.update(0);
         }
      }
      
      private function §;!?§(param1:§]!N§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || _loc3_)
               {
                  if(!this.§6$§)
                  {
                     if(_loc5_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§"H§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           _loc2_.§"H§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr105);
                     }
                     if(this.§"H§ < this.§0!K§.length)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           this.§0!K§[this.§"H§].play();
                        }
                     }
                  }
               }
            }
         }
         addr105:
      }
      
      private function §^v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.isCompleted)
            {
               if(_loc4_)
               {
                  if(!§<!D§)
                  {
                     if(_loc4_)
                     {
                        this.§4R§();
                        if(_loc3_ && _loc1_)
                        {
                        }
                        addr117:
                        return;
                        addr65:
                     }
                  }
                  else
                  {
                     if(§7!%§ != null)
                     {
                        try
                        {
                           addr69:
                           §7!%§();
                           if(!_loc3_)
                           {
                              §7!%§ = null;
                           }
                           §§goto(addr117);
                        }
                        catch(e:Error)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §7!%§ = null;
                              if(!_loc3_)
                              {
                                 if(§=!?§)
                                 {
                                    §§goto(addr117);
                                 }
                              }
                           }
                           throw e;
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr117);
               }
               this.play();
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr65);
               }
               else
               {
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr117);
      }
   }
}
