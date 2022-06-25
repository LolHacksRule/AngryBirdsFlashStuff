package §?!O§
{
   public class SimpleTweenContainer extends §!i§ implements §9N§
   {
       
      
      private var §;J§:Vector.<§9N§>;
      
      private var §6[§:Boolean = true;
      
      private var §3&§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9N§ = null;
         if(_loc7_ || this)
         {
            this.§;J§ = new Vector.<§9N§>();
            if(!(_loc6_ && param2))
            {
               addr52:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(!_loc6_)
               {
                  this.§;J§.push(_loc3_);
               }
            }
            if(!(_loc6_ && param2))
            {
               this.§6[§ = param2;
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9N§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§;J§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ || this)
               {
                  §§push(!_loc1_.isCompleted);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(false);
                        break;
                     }
                  }
               }
            }
            return true;
         }
         return §§pop();
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9N§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§;J§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  addr64:
                  break;
               }
               §§push(!_loc1_.isPaused);
               if(_loc4_)
               {
                  return §§pop();
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr64);
         §§push(false);
      }
      
      private function get §1!U§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§6[§)
            {
               if(_loc1_)
               {
                  return this.§;J§.length;
               }
               while(true)
               {
               }
               addr59:
            }
            while(this.§;J§.length > this.§3&§)
            {
               if(!_loc1_)
               {
                  break;
               }
               addr49:
               if(_loc1_)
               {
                  §§goto(addr48);
               }
               §§goto(addr59);
            }
            §§push(0);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr48:
            return 1;
         }
         §§goto(addr49);
      }
      
      private function get §7Q§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§6[§)
            {
               if(_loc1_ || this)
               {
                  addr38:
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  return this.§3&§;
               }
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9N§ = null;
         while(this.§;J§.length > 0)
         {
            _loc1_ = this.§;J§.shift();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9N§ = null;
         if(_loc5_)
         {
            §§push(this.isCompleted);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr48:
               var _loc3_:* = this.§;J§;
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
         §§goto(addr48);
      }
      
      public function §"f§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9N§ = null;
         if(!_loc5_)
         {
            §§push(this.isCompleted);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr47:
               var _loc3_:* = this.§;J§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.§"f§();
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
         {
            if(_loc4_ || this)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
         {
            if(_loc5_ || this)
            {
               _loc1_.play();
            }
         }
      }
      
      public function § !=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9N§ = null;
         if(_loc4_)
         {
            §28§ = -§^!5§;
            if(!(_loc3_ && _loc2_))
            {
               this.§3&§ = 0;
            }
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ < this.§;J§.length)
         {
            _loc2_ = this.§;J§[_loc1_];
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            _loc2_.§ !=§();
            if(!_loc4_)
            {
               continue;
            }
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_)
               {
                  addr88:
                  §§push(int(§§pop()));
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§9N§ = null;
         if(!(_loc7_ && this))
         {
            §28§ += param1;
            if(_loc6_ || param1)
            {
               addr39:
               if(§28§ < 0)
               {
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
            §§push(this.§1!U§);
            if(_loc6_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§7Q§);
            if(_loc6_)
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
               _loc5_ = this.§;J§[_loc4_];
               if(_loc6_)
               {
                  _loc5_.update(param1);
                  loop1:
                  while(true)
                  {
                     addr122:
                     while(true)
                     {
                        this.§0'§(_loc5_);
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_ || _loc2_)
                     {
                        addr111:
                        §§push(int(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(_loc6_ || param1)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr111);
               }
            }
            if(!(_loc7_ && _loc2_))
            {
               this.§;G§();
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.update(0);
         }
      }
      
      private function §0'§(param1:§9N§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param1.isCompleted)
            {
               if(_loc5_)
               {
                  addr29:
                  §§push(this.§6[§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr52:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§3&§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc2_.§3&§ = _loc3_;
                        }
                        if(!(_loc4_ && param1))
                        {
                           if(this.§3&§ < this.§;J§.length)
                           {
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr99);
                        }
                     }
                     this.§;J§[this.§3&§].play();
                  }
                  §§goto(addr99);
               }
               §§goto(addr52);
            }
            addr99:
            return;
         }
         §§goto(addr29);
      }
      
      private function §;G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr48:
                     if(!§!!J§)
                     {
                        if(_loc4_)
                        {
                           this.§ !=§();
                           if(_loc4_)
                           {
                              addr66:
                              this.play();
                              if(_loc4_ || _loc3_)
                              {
                              }
                              §§goto(addr132);
                           }
                        }
                     }
                     else
                     {
                        if(§3!K§ != null)
                        {
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr132);
                  }
                  try
                  {
                     §3!K§();
                     if(_loc4_ || _loc1_)
                     {
                        §3!K§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     if(_loc4_)
                     {
                        §3!K§ = null;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr127);
                     }
                     if(!§?4§)
                     {
                        addr127:
                        throw e;
                     }
                  }
               }
               addr132:
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
   }
}
