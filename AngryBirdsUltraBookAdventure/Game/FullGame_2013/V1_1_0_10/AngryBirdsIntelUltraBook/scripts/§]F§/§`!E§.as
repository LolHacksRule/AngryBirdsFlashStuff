package §]F§
{
   public class §`!E§ extends §!Q§ implements §9!A§
   {
       
      
      private var §#!8§:Vector.<§9!A§>;
      
      private var §=!B§:Boolean = true;
      
      private var §7X§:int = 0;
      
      public function §`!E§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9!A§ = null;
         if(_loc6_ || this)
         {
            this.§#!8§ = new Vector.<§9!A§>();
            if(!_loc7_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               this.§#!8§.push(_loc3_);
            }
         }
         if(_loc6_ || param2)
         {
            this.§=!B§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!A§ = null;
         var _loc3_:* = this.§#!8§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               if(!_loc1_.isCompleted)
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
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9!A§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§#!8§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §-t§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§=!B§)
            {
               loop0:
               while(this.§#!8§.length > this.§7X§)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  if(_loc1_ || this)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr80);
                     }
                     else
                     {
                        addr85:
                     }
                     return this.§#!8§.length;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§push(0);
               if(!(_loc2_ && this))
               {
                  return §§pop();
               }
               addr80:
               return 1;
            }
            §§goto(addr85);
         }
         §§goto(addr89);
      }
      
      private function get §catch§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§=!B§)
            {
               if(_loc1_)
               {
                  §§push(0);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr27:
                  return this.§7X§;
               }
               return §§pop();
            }
         }
         §§goto(addr27);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9!A§ = null;
         while(this.§#!8§.length > 0)
         {
            _loc1_ = this.§#!8§.shift();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9!A§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc3_:* = this.§#!8§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §&T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!A§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr45:
               for each(_loc1_ in this.§#!8§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc1_.§&T§();
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
         {
            if(!_loc4_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
         {
            if(!_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §>!$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!A§ = null;
         if(_loc3_)
         {
            §!!L§ = -§+!e§;
            if(!(_loc4_ && _loc2_))
            {
               this.§7X§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!8§.length)
         {
            _loc2_ = this.§#!8§[_loc1_];
            if(_loc3_ || _loc1_)
            {
               _loc2_.§>!$§();
               if(!(_loc3_ || _loc3_))
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
         var _loc5_:§9!A§ = null;
         if(!_loc6_)
         {
            §!!L§ += param1;
            if(_loc7_)
            {
               if(§!!L§ < 0)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr39);
                  }
               }
            }
            §§push(this.§-t§);
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§catch§);
            if(!(_loc6_ && param1))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§#!8§[_loc4_]).update(param1);
               if(!(_loc6_ && this))
               {
                  this.§`<§(_loc5_);
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_++;
                  }
               }
            }
            if(_loc7_)
            {
               this.§3Y§();
            }
            return;
         }
         addr39:
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
      
      private function §`<§(param1:§9!A§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(param1.isCompleted)
            {
               if(_loc4_ || param1)
               {
                  if(!this.§=!B§)
                  {
                     if(_loc4_ || this)
                     {
                        addr53:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§7X§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§7X§ = _loc3_;
                        }
                        if(!(_loc5_ && this))
                        {
                           addr90:
                           if(this.§7X§ < this.§#!8§.length)
                           {
                              if(!_loc4_)
                              {
                              }
                           }
                           §§goto(addr104);
                        }
                        this.§#!8§[this.§7X§].play();
                        §§goto(addr104);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr104);
               }
               §§goto(addr53);
            }
         }
         addr104:
      }
      
      private function §3Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.isCompleted)
            {
               if(_loc4_)
               {
                  if(!§2!L§)
                  {
                     if(!_loc3_)
                     {
                        this.§>!$§();
                        if(!_loc3_)
                        {
                           this.play();
                           addr36:
                           if(!_loc3_)
                           {
                              addr102:
                              return;
                              addr50:
                           }
                           §§goto(addr102);
                        }
                        try
                        {
                           addr54:
                           §10§();
                           if(!(_loc3_ && _loc3_))
                           {
                              §10§ = null;
                           }
                           §§goto(addr102);
                        }
                        catch(e:Error)
                        {
                           if(!_loc3_)
                           {
                              §10§ = null;
                              if(!_loc3_)
                              {
                                 if(§[!c§)
                                 {
                                    §§goto(addr102);
                                 }
                              }
                           }
                           throw e;
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr36);
                  }
                  else if(§10§ != null)
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr50);
            }
         }
         §§goto(addr102);
      }
   }
}
