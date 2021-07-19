package §6"G§
{
   public class §[#-§ extends §?!4§ implements § #B§
   {
       
      
      private var §9!o§:Vector.<§ #B§>;
      
      private var §^j§:Boolean = true;
      
      private var §3%§:int = 0;
      
      public function §[#-§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ #B§ = null;
         if(_loc6_ || param1)
         {
            this.§9!o§ = new Vector.<§ #B§>();
            if(!_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param2)
            {
               this.§9!o§.push(_loc3_);
            }
         }
         if(!_loc7_)
         {
            this.§^j§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ #B§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§9!o§)
         {
            if(!_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc5_ && _loc2_))
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
         var _loc1_:§ #B§ = null;
         for each(_loc1_ in this.§9!o§)
         {
            if(_loc4_)
            {
               if(!_loc1_.isPaused)
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
      
      private function get §2# §() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§^j§)
            {
               loop0:
               while(this.§9!o§.length > this.§3%§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr56);
                  }
                  if(!_loc2_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     addr80:
                     return this.§9!o§.length;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§push(0);
               if(_loc1_)
               {
                  return §§pop();
               }
               addr56:
               return 1;
            }
            §§goto(addr80);
         }
         §§goto(addr84);
      }
      
      private function get §%!5§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§^j§)
            {
               if(_loc1_ || this)
               {
                  §§push(0);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§3%§;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ #B§ = null;
         while(this.§9!o§.length > 0)
         {
            _loc1_ = this.§9!o§.shift();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            super.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ #B§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(!this.isCompleted)
            {
               addr40:
               for each(_loc1_ in this.§9!o§)
               {
                  if(_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §^"P§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ #B§ = null;
         if(_loc4_ || _loc1_)
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.§9!o§)
               {
                  if(_loc4_ || this)
                  {
                     _loc1_.§^"P§();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ #B§ = null;
         if(_loc4_)
         {
            super.pause();
         }
         for each(_loc1_ in this.§9!o§)
         {
            if(!_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      override public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ #B§ = null;
         if(_loc4_ || _loc3_)
         {
            super.play();
         }
         for each(_loc1_ in this.§9!o§)
         {
            if(!_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §=#O§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ #B§ = null;
         if(_loc4_ || _loc2_)
         {
            §@o§ = -§"!l§;
            if(_loc4_)
            {
               addr43:
               this.§3%§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§9!o§.length)
            {
               _loc2_ = this.§9!o§[_loc1_];
               if(_loc4_)
               {
                  _loc2_.§=#O§();
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§ #B§ = null;
         if(!_loc6_)
         {
            if(!§"c§(param1))
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         §§push(this.§2# §);
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§%!5§);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!o§[_loc4_]).update(param1);
            if(!_loc6_)
            {
               this.§&!-§(_loc5_);
               if(!_loc6_)
               {
                  _loc4_++;
               }
            }
         }
         if(!(_loc6_ && _loc3_))
         {
            this.§+#'§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §&!-§(param1:§ #B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.isCompleted)
            {
               if(_loc4_)
               {
                  if(!this.§^j§)
                  {
                     if(_loc4_)
                     {
                        addr28:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§3%§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc2_.§3%§ = _loc3_;
                        }
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr89);
                     }
                     if(this.§3%§ < this.§9!o§.length)
                     {
                        if(!(_loc5_ && this))
                        {
                           addr83:
                           this.§9!o§[this.§3%§].play();
                        }
                     }
                     §§goto(addr89);
                  }
                  addr89:
                  return;
               }
            }
            §§goto(addr28);
         }
         §§goto(addr83);
      }
      
      private function §+#'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.isCompleted)
            {
               if(_loc3_ || this)
               {
                  if(!§'#_§)
                  {
                     if(!(_loc4_ && this))
                     {
                        this.§=#O§();
                        if(!(_loc4_ && this))
                        {
                           addr60:
                           this.play();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  else
                  {
                     if(§;!S§ != null)
                     {
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr111);
               }
               try
               {
                  §;!S§();
                  if(_loc3_)
                  {
                     §;!S§ = null;
                  }
               }
               catch(e:Error)
               {
                  if(!_loc4_)
                  {
                     §;!S§ = null;
                     if(!_loc4_)
                     {
                        if(§4"q§)
                        {
                        }
                     }
                  }
                  throw e;
               }
            }
            addr111:
            return;
         }
         §§goto(addr60);
      }
   }
}
