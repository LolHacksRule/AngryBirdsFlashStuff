package §9!n§
{
   public class §'H§ extends §0e§ implements §;_§
   {
       
      
      private var §=!H§:Vector.<§;_§>;
      
      private var §[H§:Boolean = true;
      
      private var §`!M§:int = 0;
      
      public function §'H§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§;_§ = null;
         if(_loc6_ || _loc3_)
         {
            this.§=!H§ = new Vector.<§;_§>();
            if(_loc6_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               this.§=!H§.push(_loc3_);
            }
         }
         if(_loc6_ || this)
         {
            this.§[H§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;_§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=!H§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(_loc1_.isCompleted);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc1_)
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
      
      private function get §1!e§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§[H§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr54);
               }
            }
            if(this.§=!H§.length > 0)
            {
               if(!(_loc1_ && this))
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr81:
                  §§push(0);
               }
               return §§pop();
            }
            §§goto(addr81);
         }
         addr54:
         return this.§=!H§.length;
      }
      
      private function get §%!1§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§[H§)
            {
               if(!_loc2_)
               {
                  §§push(0);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(this.§`!M§);
               }
               return §§pop();
            }
         }
         §§goto(addr32);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;_§ = null;
         while(this.§=!H§.length > 0)
         {
            _loc1_ = this.§=!H§.shift();
            if(_loc3_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;_§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc2_:int = 0;
               for each(_loc1_ in this.§=!H§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §'!=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;_§ = null;
         if(_loc4_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               addr49:
               var _loc3_:* = this.§=!H§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.§'!=§();
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function pause() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;_§ = null;
         §§push(this.§1!e§);
         if(!_loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.pause();
               if(_loc4_ || _loc1_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
      }
      
      public function play() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;_§ = null;
         §§push(this.§1!e§);
         if(!_loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            if(!(_loc3_ && _loc2_))
            {
               _loc2_.play();
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
      }
      
      public function §^_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;_§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §8!N§ = -§ V§;
            if(!_loc3_)
            {
               addr53:
               this.§`!M§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§=!H§.length)
            {
               _loc2_ = this.§=!H§[_loc1_];
               if(!_loc3_)
               {
                  _loc2_.§^_§();
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§;_§ = null;
         if(!(_loc6_ && _loc2_))
         {
            §8!N§ += param1;
            if(!(_loc6_ && param1))
            {
               addr39:
               if(§8!N§ < 0)
               {
                  if(_loc7_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            §§push(this.§1!e§);
            if(_loc7_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§%!1§);
            if(_loc7_ || _loc2_)
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
               (_loc5_ = this.§=!H§[_loc4_]).update(param1);
               if(!_loc6_)
               {
                  this.§6X§(_loc5_);
                  if(!(_loc6_ && param1))
                  {
                     _loc4_++;
                  }
               }
            }
            if(!(_loc6_ && param1))
            {
               this.§5!4§();
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
      
      private function §6X§(param1:§;_§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.isCompleted);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr33:
                     if(!this.§[H§)
                     {
                        if(_loc5_)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§`!M§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§`!M§ = _loc3_;
                           }
                           if(_loc5_ || this)
                           {
                              if(this.§`!M§ < this.§=!H§.length)
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr97);
                           }
                        }
                     }
                     §§goto(addr97);
                  }
                  this.§=!H§[this.§`!M§].play();
               }
               addr97:
               return;
            }
         }
         §§goto(addr33);
      }
      
      private function §5!4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.isCompleted)
            {
               if(_loc4_ || _loc1_)
               {
                  addr33:
                  if(!§,!]§)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§^_§();
                        if(_loc4_ || _loc1_)
                        {
                           addr61:
                           this.play();
                           if(!_loc3_)
                           {
                              addr117:
                              return;
                              addr65:
                           }
                           §§goto(addr117);
                        }
                        try
                        {
                           addr69:
                           §2S§();
                           if(_loc4_ || _loc2_)
                           {
                              §2S§ = null;
                           }
                           §§goto(addr117);
                        }
                        catch(e:Error)
                        {
                           if(_loc4_)
                           {
                              §2S§ = null;
                              if(_loc3_)
                              {
                              }
                              §§goto(addr112);
                           }
                           if(!§4!V§)
                           {
                              addr112:
                              throw e;
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     if(§2S§ != null)
                     {
                        §§goto(addr69);
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr117);
         }
         §§goto(addr33);
      }
   }
}
