package §2=§
{
   public class SimpleTweenContainer extends §=N§ implements §4x§
   {
       
      
      private var §`G§:Vector.<§4x§>;
      
      private var §,7§:Boolean = true;
      
      private var §92§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§4x§ = null;
         if(!_loc6_)
         {
            this.§`G§ = new Vector.<§4x§>();
            if(!_loc6_)
            {
               addr42:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(!(_loc6_ && _loc3_))
               {
                  this.§`G§.push(_loc3_);
               }
            }
            if(!(_loc6_ && _loc3_))
            {
               this.§,7§ = param2;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4x§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§`G§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(!_loc1_.isCompleted);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§`G§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(!_loc1_.isPaused);
                  if(_loc5_ && _loc1_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
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
      
      private function get §0l§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§,7§)
            {
               while(this.§`G§.length > this.§92§)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     addr75:
                     return this.§`G§.length;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr63);
                  }
               }
               §§push(0);
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr75);
         }
         addr63:
         return 1;
      }
      
      private function get §'!@§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,7§)
            {
               if(_loc2_ || _loc2_)
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
                  return this.§92§;
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
         var _loc1_:§4x§ = null;
         while(this.§`G§.length > 0)
         {
            _loc1_ = this.§`G§.shift();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr57:
               var _loc2_:int = 0;
               for each(_loc1_ in this.§`G§)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §,'§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4x§ = null;
         if(_loc5_ || _loc1_)
         {
            §§push(this.isCompleted);
            if(_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr53:
               var _loc3_:* = this.§`G§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.§,'§();
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
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
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            if(!_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §#j§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4x§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §2+§ = -§'r§;
            if(!(_loc3_ && _loc2_))
            {
               this.§92§ = 0;
               addr39:
            }
            §§push(0);
            if(_loc4_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            while(_loc1_ < this.§`G§.length)
            {
               _loc2_ = this.§`G§[_loc1_];
               if(_loc4_)
               {
                  _loc2_.§#j§();
                  if(_loc4_ || this)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc1_ = §§pop();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§4x§ = null;
         if(!_loc7_)
         {
            §2+§ += param1;
            if(!_loc7_)
            {
               §§goto(addr29);
            }
            §§goto(addr35);
         }
         addr29:
         if(§2+§ < 0)
         {
            if(!_loc7_)
            {
               addr35:
               return;
            }
         }
         §§push(this.§0l§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§'!@§);
         if(_loc6_ || this)
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
            _loc5_ = this.§`G§[_loc4_];
            if(!(_loc7_ && _loc3_))
            {
               _loc5_.update(param1);
               loop1:
               while(true)
               {
                  addr117:
                  while(true)
                  {
                     this.§];§(_loc5_);
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr117);
            }
         }
         if(!(_loc7_ && _loc2_))
         {
            this.§1!D§();
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
      
      private function §];§(param1:§4x§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.isCompleted)
            {
               if(!_loc4_)
               {
                  §§push(this.§,7§);
                  if(!(_loc4_ && this))
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr52:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§92§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           _loc2_.§92§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr104);
                     }
                     if(this.§92§ < this.§`G§.length)
                     {
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  §§goto(addr104);
               }
               this.§`G§[this.§92§].play();
            }
            addr104:
            return;
         }
         §§goto(addr52);
      }
      
      private function §1!D§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr37);
                  }
               }
               §§goto(addr65);
            }
            addr37:
            if(!§""§)
            {
               if(_loc3_)
               {
                  this.§#j§();
                  if(_loc4_)
                  {
                  }
                  try
                  {
                     addr65:
                     §>!@§();
                     if(!_loc4_)
                     {
                        §>!@§ = null;
                     }
                     §§goto(addr116);
                  }
                  catch(e:Error)
                  {
                     if(!_loc4_)
                     {
                        §>!@§ = null;
                        if(!(_loc4_ && _loc1_))
                        {
                           if(§+j§)
                           {
                              §§goto(addr116);
                           }
                        }
                     }
                     throw e;
                  }
                  §§goto(addr116);
               }
               this.play();
               if(!_loc4_)
               {
                  addr60:
               }
            }
            else if(§>!@§ != null)
            {
            }
            §§goto(addr116);
            return;
         }
         §§goto(addr60);
      }
   }
}
