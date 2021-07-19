package §<!0§
{
   public class §-z§ extends §`v§ implements §'c§
   {
       
      
      private var §>l§:Vector.<§'c§>;
      
      private var § ![§:Boolean = true;
      
      private var §^!2§:int = 0;
      
      public function §-z§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§'c§ = null;
         if(_loc6_)
         {
            this.§>l§ = new Vector.<§'c§>();
            if(!(_loc7_ && param1))
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_ || _loc3_)
            {
               this.§>l§.push(_loc3_);
            }
         }
         if(_loc6_)
         {
            this.§ ![§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'c§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§>l§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               if(!_loc1_.isCompleted)
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
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'c§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§>l§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && this)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §;!f§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§ ![§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return this.§>l§.length;
               }
               while(true)
               {
                  addr58:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  addr25:
                  §§push(0);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
                  §§goto(addr57);
                  addr65:
               }
               addr90:
            }
            while(true)
            {
               if(this.§>l§.length > this.§^!2§)
               {
                  if(!_loc1_)
                  {
                     addr57:
                     return §§pop();
                     §§push(1);
                  }
                  else
                  {
                     §§goto(addr58);
                  }
               }
               break;
               §§goto(addr90);
            }
            §§goto(addr25);
         }
         §§goto(addr65);
      }
      
      private function get §@h§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§ ![§)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§^!2§;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'c§ = null;
         while(this.§>l§.length > 0)
         {
            _loc1_ = this.§>l§.shift();
            if(!(_loc2_ && this))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'c§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§>l§)
               {
                  if(_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §!^§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'c§ = null;
         if(!(_loc5_ && this))
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.§>l§)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_.§!^§();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §@0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
         {
            if(!_loc5_)
            {
               _loc1_.§@0§();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
         {
            if(_loc5_ || this)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §6c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'c§ = null;
         if(!(_loc3_ && this))
         {
            §#!c§ = -§9T§;
            if(_loc4_ || _loc2_)
            {
               addr48:
               this.§^!2§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§>l§.length)
            {
               _loc2_ = this.§>l§[_loc1_];
               if(!_loc3_)
               {
                  _loc2_.§6c§();
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§'c§ = null;
         if(!_loc7_)
         {
            §#!c§ += param1;
            if(_loc6_ || this)
            {
               if(§#!c§ < 0)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     return;
                  }
               }
            }
         }
         §§push(this.§;!f§);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§@h§);
         if(_loc6_)
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
            (_loc5_ = this.§>l§[_loc4_]).update(param1);
            if(!_loc7_)
            {
               this.§3!6§(_loc5_);
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(!_loc7_)
         {
            this.§'!%§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §3!6§(param1:§'c§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param1.isCompleted)
            {
               if(_loc4_)
               {
                  addr28:
                  if(!this.§ ![§)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§^!2§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || this)
                        {
                           _loc2_.§^!2§ = _loc3_;
                        }
                        if(!(_loc5_ && this))
                        {
                           addr75:
                           if(this.§^!2§ < this.§>l§.length)
                           {
                              if(_loc5_)
                              {
                              }
                           }
                           §§goto(addr99);
                        }
                        this.§>l§[this.§^!2§].play();
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr75);
            }
            addr99:
            return;
         }
         §§goto(addr28);
      }
      
      private function §'!%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(this.isCompleted)
            {
               if(_loc4_)
               {
                  addr33:
                  if(!§=O§)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§6c§();
                        if(!_loc3_)
                        {
                           addr46:
                           this.play();
                           if(!(_loc4_ || _loc2_))
                           {
                              try
                              {
                                 addr69:
                                 §%H§();
                                 if(!_loc3_)
                                 {
                                    §%H§ = null;
                                 }
                                 §§goto(addr117);
                              }
                              catch(e:Error)
                              {
                                 var _loc2_:* = e;
                                 if(!_loc3_)
                                 {
                                    §%H§ = null;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(§,s§)
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
                     }
                     addr117:
                     return;
                  }
                  if(§%H§ != null)
                  {
                  }
                  §§goto(addr69);
                  §§goto(addr69);
               }
               §§goto(addr46);
            }
            §§goto(addr69);
         }
         §§goto(addr33);
      }
   }
}
