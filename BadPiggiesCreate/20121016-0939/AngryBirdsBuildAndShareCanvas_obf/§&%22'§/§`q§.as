package §&"'§
{
   public class §`q§ extends §1!X§ implements §@5§
   {
       
      
      private var static:Vector.<§@5§>;
      
      private var §'!c§:Boolean = true;
      
      private var §2!w§:int = 0;
      
      public function §`q§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@5§ = null;
         if(_loc7_)
         {
            this.static = new Vector.<§@5§>();
            if(_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_ || param1)
            {
               this.static.push(_loc3_);
            }
         }
         if(_loc7_ || param2)
         {
            this.§'!c§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@5§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.static;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc4_ && _loc3_))
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
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            if(_loc4_ || this)
            {
               if(!_loc1_.isPaused)
               {
                  if(_loc4_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §6"3§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§'!c§)
            {
               while(this.static.length > this.§2!w§)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr51);
                     }
                     else
                     {
                        addr66:
                     }
                     return this.static.length;
                  }
               }
               §§push(0);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr51:
               return 1;
            }
         }
         §§goto(addr66);
      }
      
      private function get §>"-§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§'!c§)
            {
               if(!_loc2_)
               {
                  §§push(0);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§2!w§;
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
         var _loc1_:§@5§ = null;
         while(this.static.length > 0)
         {
            _loc1_ = this.static.shift();
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§@5§ = null;
         if(_loc4_ || _loc1_)
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.static)
               {
                  if(_loc4_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §9g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@5§ = null;
         if(_loc5_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               addr40:
               for each(_loc1_ in this.static)
               {
                  if(!_loc4_)
                  {
                     _loc1_.§9g§();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            if(_loc4_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            if(!_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §'!w§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@5§ = null;
         if(!(_loc4_ && _loc1_))
         {
            §7A§ = -§0!<§;
            if(_loc3_)
            {
               this.§2!w§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.static.length)
         {
            _loc2_ = this.static[_loc1_];
            if(_loc3_)
            {
               _loc2_.§'!w§();
               if(_loc4_)
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
         var _loc5_:§@5§ = null;
         if(!_loc7_)
         {
            §7A§ += param1;
            if(_loc6_ || _loc2_)
            {
               if(§7A§ < 0)
               {
                  if(_loc7_ && _loc3_)
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return;
         }
         addr44:
         §§push(this.§6"3§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§>"-§);
         if(!_loc7_)
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
            (_loc5_ = this.static[_loc4_]).update(param1);
            if(_loc6_ || _loc2_)
            {
               this.§3v§(_loc5_);
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(!_loc7_)
         {
            this.§1!m§();
         }
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
      
      private function §3v§(param1:§@5§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(param1.isCompleted)
            {
               if(_loc4_ || this)
               {
                  addr33:
                  if(!this.§'!c§)
                  {
                     if(_loc4_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§2!w§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§2!w§ = _loc3_;
                        }
                        if(_loc4_)
                        {
                           if(this.§2!w§ < this.static.length)
                           {
                              if(!_loc5_)
                              {
                                 this.static[this.§2!w§].play();
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §1!m§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.isCompleted)
            {
               if(!(_loc4_ && _loc1_))
               {
                  if(!§4!Y§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr41:
                        this.§'!w§();
                        if(_loc4_ && _loc3_)
                        {
                        }
                        try
                        {
                           addr68:
                           §&6§();
                           if(_loc3_ || _loc2_)
                           {
                              §&6§ = null;
                           }
                           §§goto(addr116);
                        }
                        catch(e:Error)
                        {
                           if(!_loc4_)
                           {
                              §&6§ = null;
                              if(_loc4_)
                              {
                              }
                              §§goto(addr111);
                           }
                           if(!§<!y§)
                           {
                              addr111:
                              throw e;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr116);
                     }
                     this.play();
                     if(_loc3_)
                     {
                        addr116:
                        return;
                     }
                     §§goto(addr68);
                  }
                  else if(§&6§ != null)
                  {
                  }
                  §§goto(addr68);
               }
               §§goto(addr41);
            }
         }
         §§goto(addr68);
      }
   }
}
