package §#!V§
{
   public class §5!,§ extends §[1§ implements §>!3§
   {
       
      
      private var §5s§:Vector.<§>!3§>;
      
      private var §3!'§:Boolean = true;
      
      private var §1!5§:int = 0;
      
      public function §5!,§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§>!3§ = null;
         if(_loc6_ || param1)
         {
            this.§5s§ = new Vector.<§>!3§>();
            if(!_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               this.§5s§.push(_loc3_);
            }
         }
         if(_loc6_)
         {
            this.§3!'§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!3§ = null;
         var _loc3_:* = this.§5s§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(_loc5_ || _loc3_)
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
         var _loc1_:§>!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§5s§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && _loc1_)
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
      
      private function get §9!I§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§3!'§)
            {
               while(this.§5s§.length > this.§1!5§)
               {
                  if(!_loc1_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     addr75:
                  }
                  if(_loc1_)
                  {
                     §§goto(addr53);
                  }
                  continue;
                  return this.§5s§.length;
               }
               §§push(0);
               if(_loc1_ || _loc2_)
               {
                  return §§pop();
               }
               §§goto(addr53);
            }
            §§goto(addr75);
         }
         addr53:
         return 1;
      }
      
      private function get §;y§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§3!'§)
            {
               if(!(_loc1_ && this))
               {
                  addr44:
                  §§push(0);
                  if(!(_loc1_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return this.§1!5§;
               }
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>!3§ = null;
         while(this.§5s§.length > 0)
         {
            _loc1_ = this.§5s§.shift();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!3§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§5s§)
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
      
      public function §!S§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!3§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§5s§)
               {
                  if(!_loc4_)
                  {
                     _loc1_.§!S§();
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §3J§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.§3J§();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
         {
            if(!_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function § !R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>!3§ = null;
         if(_loc3_)
         {
            §3-§ = -§2K§;
            if(!(_loc4_ && _loc3_))
            {
               this.§1!5§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§5s§.length)
         {
            _loc2_ = this.§5s§[_loc1_];
            if(!_loc4_)
            {
               _loc2_.§ !R§();
               if(!(_loc3_ || this))
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>!3§ = null;
         if(_loc7_ || param1)
         {
            §3-§ += param1;
            if(_loc7_)
            {
               addr34:
               if(§3-§ < 0)
               {
                  if(!(_loc6_ && param1))
                  {
                     return;
                  }
               }
            }
            §§push(this.§9!I§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§;y§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc7_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§5s§[_loc4_]).update(param1);
               if(!_loc6_)
               {
                  this.§`A§(_loc5_);
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(!_loc6_)
            {
               this.§0=§();
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
      
      private function §`A§(param1:§>!3§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(param1.isCompleted)
            {
               if(!_loc4_)
               {
                  if(!this.§3!'§)
                  {
                     if(_loc5_ || this)
                     {
                     }
                  }
                  §§goto(addr105);
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§1!5§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§1!5§ = _loc3_;
               }
               if(_loc5_ || param1)
               {
                  addr76:
                  if(this.§1!5§ < this.§5s§.length)
                  {
                     if(_loc4_ && param1)
                     {
                     }
                  }
                  §§goto(addr105);
               }
               this.§5s§[this.§1!5§].play();
            }
            addr105:
            return;
         }
         §§goto(addr76);
      }
      
      private function §0=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(!(_loc3_ && this))
               {
                  addr33:
                  if(!§;m§)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        addr42:
                        this.§ !R§();
                        if(_loc4_ || _loc2_)
                        {
                           this.play();
                           if(!(_loc4_ || _loc3_))
                           {
                              try
                              {
                                 addr74:
                                 §='§();
                                 if(!(_loc3_ && this))
                                 {
                                    §='§ = null;
                                 }
                                 §§goto(addr127);
                              }
                              catch(e:Error)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §='§ = null;
                                    if(!_loc3_)
                                    {
                                       if(§^b§)
                                       {
                                          §§goto(addr127);
                                       }
                                    }
                                 }
                                 throw e;
                              }
                           }
                           §§goto(addr127);
                        }
                     }
                     addr127:
                     return;
                  }
                  if(§='§ != null)
                  {
                  }
                  §§goto(addr74);
                  §§goto(addr74);
               }
               §§goto(addr42);
            }
            §§goto(addr74);
         }
         §§goto(addr33);
      }
   }
}
