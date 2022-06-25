package §?!+§
{
   public class §0z§ extends §1!"§ implements §,!§
   {
       
      
      private var §5w§:Vector.<§,!§>;
      
      private var §>j§:Boolean = true;
      
      private var §4Z§:int = 0;
      
      public function §0z§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,!§ = null;
         if(!_loc6_)
         {
            this.§5w§ = new Vector.<§,!§>();
            if(_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_ || this)
            {
               this.§5w§.push(_loc3_);
            }
         }
         if(!_loc6_)
         {
            this.§>j§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§5w§)
         {
            if(!(_loc4_ && _loc2_))
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!§ = null;
         var _loc3_:* = this.§5w§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               if(!_loc1_.isPaused)
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
      
      private function get §;D§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§>j§)
            {
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr48);
               }
               else
               {
                  addr67:
                  §§push(1);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
            }
            else
            {
               if(this.§5w§.length > this.§4Z§)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr67);
                  }
                  §§goto(addr72);
               }
               §§push(0);
            }
            addr72:
            return §§pop();
         }
         addr48:
         return this.§5w§.length;
      }
      
      private function get §6!,§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§>j§)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(0);
                  if(!(_loc1_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  §§push(this.§4Z§);
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
         var _loc1_:§,!§ = null;
         while(this.§5w§.length > 0)
         {
            _loc1_ = this.§5w§.shift();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!§ = null;
         if(!(_loc4_ && _loc1_))
         {
            if(!this.isCompleted)
            {
               addr50:
               for each(_loc1_ in this.§5w§)
               {
                  if(_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §'!5§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!§ = null;
         if(!(_loc4_ && this))
         {
            if(!this.isCompleted)
            {
               addr50:
               for each(_loc1_ in this.§5w§)
               {
                  if(_loc5_)
                  {
                     _loc1_.§'!5§();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§5w§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,!§ = null;
         for each(_loc1_ in this.§5w§)
         {
            if(_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §!z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,!§ = null;
         if(!_loc4_)
         {
            §9!8§ = -§0! §;
            if(_loc3_)
            {
               this.§4Z§ = 0;
               addr37:
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§5w§.length)
            {
               _loc2_ = this.§5w§[_loc1_];
               if(_loc3_ || _loc1_)
               {
                  _loc2_.§!z§();
                  if(!_loc4_)
                  {
                     _loc1_++;
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§,!§ = null;
         if(_loc6_ || _loc3_)
         {
            §9!8§ += param1;
            if(_loc6_)
            {
               if(§9!8§ < 0)
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
         §§push(this.§;D§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§6!,§);
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
            (_loc5_ = this.§5w§[_loc4_]).update(param1);
            if(!(_loc7_ && _loc2_))
            {
               this.§7+§(_loc5_);
               if(!(_loc7_ && this))
               {
                  _loc4_++;
               }
            }
         }
         if(_loc6_ || this)
         {
            this.§^!$§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §7+§(param1:§,!§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.isCompleted)
            {
               if(!_loc5_)
               {
                  addr23:
                  if(!this.§>j§)
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  §§goto(addr89);
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§4Z§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_ || _loc3_)
               {
                  _loc2_.§4Z§ = _loc3_;
               }
               if(_loc4_)
               {
                  if(this.§4Z§ < this.§5w§.length)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        this.§5w§[this.§4Z§].play();
                     }
                  }
               }
            }
            addr89:
            return;
         }
         §§goto(addr23);
      }
      
      private function §^!$§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(!(_loc3_ && this))
               {
                  if(!§<!8§)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        addr42:
                        this.§!z§();
                        if(!(_loc3_ && _loc3_))
                        {
                           this.play();
                           if(!_loc4_)
                           {
                              try
                              {
                                 addr69:
                                 §"3§();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §"3§ = null;
                                 }
                                 §§goto(addr127);
                              }
                              catch(e:Error)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §"3§ = null;
                                    if(_loc3_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr122);
                                 }
                                 if(!§[d§)
                                 {
                                    addr122:
                                    throw e;
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr127);
                           }
                           addr127:
                           return;
                        }
                     }
                  }
                  else if(§"3§ != null)
                  {
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr42);
      }
   }
}
