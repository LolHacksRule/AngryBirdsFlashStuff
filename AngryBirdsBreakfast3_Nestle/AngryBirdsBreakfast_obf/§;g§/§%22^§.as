package §;g§
{
   public class §"^§ extends §]w§ implements §<!9§
   {
       
      
      private var §6!Y§:Vector.<§<!9§>;
      
      private var §%9§:Boolean = true;
      
      private var §0_§:int = 0;
      
      public function §"^§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§<!9§ = null;
         if(!_loc6_)
         {
            this.§6!Y§ = new Vector.<§<!9§>();
            if(_loc7_ || this)
            {
               addr45:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(!_loc6_)
               {
                  this.§6!Y§.push(_loc3_);
               }
            }
            if(_loc7_ || param1)
            {
               this.§%9§ = param2;
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<!9§ = null;
         for each(_loc1_ in this.§6!Y§)
         {
            if(_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!_loc4_)
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
         var _loc1_:§<!9§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§6!Y§)
         {
            if(!(_loc5_ && this))
            {
               if(!_loc1_.isPaused)
               {
                  if(_loc4_ || _loc2_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §@!B§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§%9§)
            {
               while(this.§6!Y§.length > this.§0_§)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr56);
                     }
                     else
                     {
                        addr71:
                     }
                     return this.§6!Y§.length;
                  }
               }
               §§push(0);
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr56);
            }
            §§goto(addr71);
         }
         addr56:
         return 1;
      }
      
      private function get §9!s§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§%9§)
            {
               if(!_loc1_)
               {
                  §§push(0);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return this.§0_§;
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<!9§ = null;
         while(this.§6!Y§.length > 0)
         {
            _loc1_ = this.§6!Y§.shift();
            if(_loc3_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            super.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<!9§ = null;
         if(_loc4_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§6!Y§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §?"+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<!9§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.isCompleted)
            {
               addr39:
               for each(_loc1_ in this.§6!Y§)
               {
                  if(!(_loc5_ && this))
                  {
                     _loc1_.§?"+§();
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<!9§ = null;
         if(!(_loc4_ && _loc3_))
         {
            super.pause();
         }
         for each(_loc1_ in this.§6!Y§)
         {
            if(_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      override public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<!9§ = null;
         if(_loc4_)
         {
            super.play();
         }
         for each(_loc1_ in this.§6!Y§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §=E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!9§ = null;
         if(_loc3_ || this)
         {
            §>!?§ = -§<!n§;
            if(_loc3_)
            {
               addr42:
               this.§0_§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§6!Y§.length)
            {
               _loc2_ = this.§6!Y§[_loc1_];
               if(!_loc4_)
               {
                  _loc2_.§=E§();
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§<!9§ = null;
         if(_loc6_ || _loc3_)
         {
            if(!§^!m§(param1))
            {
               if(_loc6_ || _loc2_)
               {
                  §§goto(addr37);
               }
            }
            §§push(this.§@!B§);
            if(_loc6_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§9!s§);
            if(!(_loc7_ && this))
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
               (_loc5_ = this.§6!Y§[_loc4_]).update(param1);
               if(!_loc7_)
               {
                  this.§+X§(_loc5_);
                  if(!_loc7_)
                  {
                     _loc4_++;
                  }
               }
            }
            if(!_loc7_)
            {
               this.§=!c§();
            }
            return;
         }
         addr37:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.update(0);
         }
      }
      
      private function §+X§(param1:§<!9§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.isCompleted)
            {
               if(!_loc5_)
               {
                  if(!this.§%9§)
                  {
                     if(_loc4_)
                     {
                        addr28:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§0_§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           _loc2_.§0_§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                           if(this.§0_§ < this.§6!Y§.length)
                           {
                              if(_loc4_ || _loc2_)
                              {
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     this.§6!Y§[this.§0_§].play();
                  }
               }
            }
            addr94:
            return;
         }
         §§goto(addr28);
      }
      
      private function §=!c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.isCompleted)
            {
               if(!_loc3_)
               {
                  if(!§7!>§)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        this.§=E§();
                        if(!_loc4_)
                        {
                        }
                        try
                        {
                           addr59:
                           §;!h§();
                           if(_loc4_ || _loc3_)
                           {
                              §;!h§ = null;
                           }
                           §§goto(addr112);
                        }
                        catch(e:Error)
                        {
                           if(!_loc3_)
                           {
                              §;!h§ = null;
                              if(_loc4_ || _loc1_)
                              {
                              }
                              §§goto(addr107);
                           }
                           if(!§#M§)
                           {
                              addr107:
                              throw e;
                           }
                           §§goto(addr112);
                        }
                        addr112:
                        return;
                     }
                     this.play();
                     if(_loc3_)
                     {
                        §§goto(addr59);
                     }
                  }
                  else if(§;!h§ != null)
                  {
                     §§goto(addr59);
                  }
               }
            }
         }
         §§goto(addr59);
      }
   }
}
