package §5!1§
{
   public class § get§ extends §^Q§ implements §&C§
   {
       
      
      private var §8o§:Vector.<§&C§>;
      
      private var §4I§:Boolean = true;
      
      private var §9!<§:int = 0;
      
      public function § get§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§&C§ = null;
         if(_loc7_)
         {
            this.§8o§ = new Vector.<§&C§>();
            if(!_loc6_)
            {
               addr30:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(_loc7_ || param2)
               {
                  this.§8o§.push(_loc3_);
               }
            }
            if(_loc7_ || this)
            {
               this.§4I§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&C§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§8o§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ || _loc3_))
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&C§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§8o§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(_loc4_ || this)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §"!F§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§4I§)
            {
               if(_loc1_ || _loc2_)
               {
                  return this.§8o§.length;
               }
               while(true)
               {
                  addr52:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  addr24:
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr51);
               }
               addr84:
            }
            while(true)
            {
               if(this.§8o§.length > this.§9!<§)
               {
                  if(!_loc2_)
                  {
                     addr50:
                     addr51:
                     return §§pop();
                     §§push(1);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               break;
               §§goto(addr84);
            }
            §§goto(addr24);
         }
         §§goto(addr50);
      }
      
      private function get §0a§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§4I§)
            {
               if(_loc2_)
               {
                  §§push(0);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return this.§9!<§;
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&C§ = null;
         while(this.§8o§.length > 0)
         {
            _loc1_ = this.§8o§.shift();
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
         var _loc1_:§&C§ = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.§8o§)
               {
                  if(_loc4_ || this)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §2=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&C§ = null;
         if(!(_loc5_ && this))
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.§8o§)
               {
                  if(_loc4_)
                  {
                     _loc1_.§2=§();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §99§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&C§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§8o§)
         {
            if(_loc4_ || _loc2_)
            {
               _loc1_.§99§();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&C§ = null;
         var _loc3_:* = this.§8o§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §9!6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&C§ = null;
         if(!_loc4_)
         {
            §+K§ = -§]A§;
            if(_loc3_)
            {
               this.§9!<§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§8o§.length)
         {
            _loc2_ = this.§8o§[_loc1_];
            if(_loc3_)
            {
               _loc2_.§9!6§();
               if(_loc4_ && _loc1_)
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
         var _loc5_:§&C§ = null;
         if(_loc6_ || param1)
         {
            §+K§ += param1;
            if(_loc6_ || param1)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         if(§+K§ < 0)
         {
            if(_loc6_ || _loc3_)
            {
               addr48:
               return;
            }
         }
         §§push(this.§"!F§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§0a§);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§8o§[_loc4_]).update(param1);
            if(_loc6_ || this)
            {
               this.§1!H§(_loc5_);
               if(_loc7_ && this)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(!_loc7_)
         {
            this.§8!e§();
         }
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
      
      private function §1!H§(param1:§&C§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.isCompleted)
            {
               if(!_loc5_)
               {
                  if(!this.§4I§)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§9!<§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§9!<§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                           if(this.§9!<§ < this.§8o§.length)
                           {
                              if(!_loc5_)
                              {
                                 addr78:
                                 this.§8o§[this.§9!<§].play();
                              }
                           }
                        }
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §8!e§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.isCompleted)
            {
               if(!_loc4_)
               {
                  if(!§#c§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§9!6§();
                        if(_loc3_ || _loc2_)
                        {
                           addr45:
                           this.play();
                           if(!(_loc3_ || _loc2_))
                           {
                              try
                              {
                                 addr68:
                                 §,3§();
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §,3§ = null;
                                 }
                                 §§goto(addr121);
                              }
                              catch(e:Error)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §,3§ = null;
                                    if(_loc3_)
                                    {
                                       if(§ !Z§)
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                 }
                                 throw e;
                              }
                           }
                           §§goto(addr121);
                        }
                     }
                     addr121:
                     return;
                  }
                  if(§,3§ != null)
                  {
                  }
                  §§goto(addr68);
                  §§goto(addr68);
               }
               §§goto(addr45);
            }
         }
         §§goto(addr68);
      }
   }
}
