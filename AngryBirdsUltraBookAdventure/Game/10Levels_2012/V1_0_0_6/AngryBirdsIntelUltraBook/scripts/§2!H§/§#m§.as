package §2!H§
{
   public class §#m§ extends §!!1§ implements §6X§
   {
       
      
      private var §=W§:Vector.<§6X§>;
      
      private var §#!_§:Boolean = true;
      
      private var §;!%§:int = 0;
      
      public function §#m§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§6X§ = null;
         if(!_loc6_)
         {
            this.§=W§ = new Vector.<§6X§>();
            if(_loc7_ || _loc3_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               this.§=W§.push(_loc3_);
            }
         }
         if(_loc7_ || this)
         {
            this.§#!_§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6X§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=W§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(!_loc1_.isCompleted)
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
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6X§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=W§;
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
      
      private function get §6_§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!_§)
            {
               if(_loc2_)
               {
                  return this.§=W§.length;
               }
               while(true)
               {
                  addr63:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  addr20:
                  §§push(0);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr62);
                  addr70:
               }
               addr80:
            }
            while(true)
            {
               if(this.§=W§.length > this.§;!%§)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr62:
                     return §§pop();
                     §§push(1);
                  }
                  else
                  {
                     §§goto(addr63);
                  }
               }
               break;
               §§goto(addr80);
            }
            §§goto(addr20);
         }
         §§goto(addr70);
      }
      
      private function get §%!P§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!_§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr39:
                  §§push(0);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  return this.§;!%§;
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr39);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6X§ = null;
         while(this.§=W§.length > 0)
         {
            _loc1_ = this.§=W§.shift();
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
         var _loc1_:§6X§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr45:
               var _loc3_:* = this.§=W§;
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
      
      public function §9!l§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§6X§ = null;
         if(_loc4_ || _loc1_)
         {
            if(!this.isCompleted)
            {
               addr49:
               for each(_loc1_ in this.§=W§)
               {
                  if(_loc4_)
                  {
                     _loc1_.§9!l§();
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
         {
            if(!_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §"p§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6X§ = null;
         if(_loc4_ || _loc3_)
         {
            §[f§ = -§@z§;
            if(_loc4_)
            {
               this.§;!%§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§=W§.length)
         {
            _loc2_ = this.§=W§[_loc1_];
            if(_loc4_ || _loc1_)
            {
               _loc2_.§"p§();
               if(_loc3_)
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
         var _loc5_:§6X§ = null;
         if(!_loc7_)
         {
            §[f§ += param1;
            if(_loc6_ || _loc2_)
            {
               if(§[f§ < 0)
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         §§push(this.§6_§);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§%!P§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=W§[_loc4_]).update(param1);
            if(!(_loc7_ && _loc2_))
            {
               this.§3!i§(_loc5_);
               if(_loc7_ && this)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(_loc6_)
         {
            this.§#!^§();
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
      
      private function §3!i§(param1:§6X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || param1)
               {
                  if(!this.§#!_§)
                  {
                     if(_loc5_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§;!%§);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc2_.§;!%§ = _loc3_;
                        }
                        if(_loc5_)
                        {
                           addr76:
                           if(this.§;!%§ < this.§=W§.length)
                           {
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  §§goto(addr90);
               }
               this.§=W§[this.§;!%§].play();
            }
            addr90:
            return;
         }
         §§goto(addr76);
      }
      
      private function §#!^§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.isCompleted)
            {
               if(_loc3_)
               {
                  if(!§5!J§)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr36);
                     }
                     §§goto(addr40);
                  }
                  else if(§3!U§ != null)
                  {
                     §§goto(addr63);
                  }
               }
               addr36:
               this.§"p§();
               if(_loc3_)
               {
                  addr40:
                  this.play();
                  if(_loc4_ && _loc3_)
                  {
                  }
                  §§goto(addr116);
               }
               try
               {
                  addr63:
                  §3!U§();
                  if(_loc3_ || _loc1_)
                  {
                     §3!U§ = null;
                  }
                  §§goto(addr116);
               }
               catch(e:Error)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     §3!U§ = null;
                     if(_loc3_)
                     {
                        if(§6?§)
                        {
                           §§goto(addr116);
                        }
                     }
                  }
                  throw e;
               }
               §§goto(addr116);
            }
            addr116:
            return;
         }
         §§goto(addr36);
      }
   }
}
