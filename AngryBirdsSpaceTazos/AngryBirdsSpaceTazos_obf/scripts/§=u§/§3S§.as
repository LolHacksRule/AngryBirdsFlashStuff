package §=u§
{
   public class §3S§ extends § ">§ implements § "1§
   {
       
      
      private var §+!j§:Vector.<§ "1§>;
      
      private var §^"8§:Boolean = true;
      
      private var §]!%§:int = 0;
      
      public function §3S§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ "1§ = null;
         if(_loc6_)
         {
            this.§+!j§ = new Vector.<§ "1§>();
            if(!(_loc7_ && param2))
            {
               super();
               addr34:
            }
            for each(_loc3_ in param1)
            {
               if(!_loc7_)
               {
                  this.§+!j§.push(_loc3_);
               }
            }
            if(_loc6_ || param2)
            {
               this.§^"8§ = param2;
            }
            return;
         }
         §§goto(addr34);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "1§ = null;
         for each(_loc1_ in this.§+!j§)
         {
            if(_loc4_ || this)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!_loc5_)
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
         var _loc1_:§ "1§ = null;
         var _loc3_:* = this.§+!j§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
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
      
      private function get §#!1§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§^"8§)
            {
               while(this.§+!j§.length > this.§]!%§)
               {
                  if(!(_loc2_ && this))
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr53);
                     }
                     else
                     {
                        addr70:
                     }
                     return this.§+!j§.length;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §§push(0);
               if(_loc1_)
               {
                  return §§pop();
               }
               §§goto(addr53);
            }
            §§goto(addr70);
         }
         addr53:
         return 1;
      }
      
      private function get §5!Y§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§^"8§)
            {
               if(!_loc2_)
               {
                  §§push(0);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§]!%§;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ "1§ = null;
         while(this.§+!j§.length > 0)
         {
            _loc1_ = this.§+!j§.shift();
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc2_ && this))
         {
            super.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "1§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.isCompleted)
            {
               addr39:
               var _loc2_:int = 0;
               for each(_loc1_ in this.§+!j§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §+e§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ "1§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               var _loc2_:int = 0;
               addr25:
               for each(_loc1_ in this.§+!j§)
               {
                  if(_loc5_ || _loc2_)
                  {
                     _loc1_.§+e§();
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      override public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ "1§ = null;
         if(!_loc4_)
         {
            super.pause();
         }
         var _loc3_:* = this.§+!j§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.pause();
            }
         }
      }
      
      override public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "1§ = null;
         if(!_loc5_)
         {
            super.play();
         }
         for each(_loc1_ in this.§+!j§)
         {
            if(_loc4_ || this)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §[§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ "1§ = null;
         if(!_loc4_)
         {
            § "?§ = -§1"'§;
            if(_loc3_ || _loc1_)
            {
               this.§]!%§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!j§.length)
         {
            _loc2_ = this.§+!j§[_loc1_];
            if(!_loc4_)
            {
               _loc2_.§[§();
               if(!(_loc4_ && _loc2_))
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
         var _loc5_:§ "1§ = null;
         if(_loc6_)
         {
            if(!§7z§(param1))
            {
               if(_loc6_)
               {
                  §§goto(addr27);
               }
            }
            §§push(this.§#!1§);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§5!Y§);
            if(_loc6_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§+!j§[_loc4_]).update(param1);
               if(!_loc7_)
               {
                  this.§54§(_loc5_);
                  if(!_loc7_)
                  {
                     _loc4_++;
                  }
               }
            }
            if(!(_loc7_ && _loc3_))
            {
               this.§@"<§();
            }
            return;
         }
         addr27:
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
      
      private function §54§(param1:§ "1§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || this)
               {
                  addr34:
                  if(!this.§^"8§)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§]!%§);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc2_.§]!%§ = _loc3_;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           if(this.§]!%§ < this.§+!j§.length)
                           {
                              if(_loc4_ && param1)
                              {
                              }
                           }
                           §§goto(addr110);
                        }
                        this.§+!j§[this.§]!%§].play();
                     }
                  }
               }
            }
            addr110:
            return;
         }
         §§goto(addr34);
      }
      
      private function §@"<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.isCompleted)
            {
               if(!_loc4_)
               {
                  if(!§["-§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§[§();
                        if(_loc3_)
                        {
                           §§goto(addr40);
                        }
                     }
                  }
                  else
                  {
                     if(§6!s§ != null)
                     {
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr58);
         }
         addr40:
         this.play();
         if(!_loc3_)
         {
            try
            {
               addr58:
               §6!s§();
               if(!_loc4_)
               {
                  §6!s§ = null;
               }
               §§goto(addr106);
            }
            catch(e:Error)
            {
               if(!_loc4_)
               {
                  §6!s§ = null;
                  if(_loc3_ || _loc1_)
                  {
                  }
                  §§goto(addr101);
               }
               if(!§1"G§)
               {
                  addr101:
                  throw e;
               }
               §§goto(addr106);
            }
            §§goto(addr106);
         }
         addr106:
      }
   }
}
