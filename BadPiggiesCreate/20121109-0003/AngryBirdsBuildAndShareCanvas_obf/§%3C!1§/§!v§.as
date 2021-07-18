package §<!1§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!v§
   {
      
      private static const §-%§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-%§ = 1 / 255;
         }
      }
      
      private var §<!g§:TextField;
      
      private var §[%§:uint;
      
      private var §-m§:uint;
      
      private var §-!y§:uint;
      
      private var §#!3§:ColorMatrixFilter;
      
      public function §!v§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<!g§ = param1;
            while(true)
            {
               this.§#!3§ = new ColorMatrixFilter();
               continue loop0;
               addr33:
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function set §5x§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§<!g§ = param1;
         }
      }
      
      public function get §5x§() : TextField
      {
         return this.§<!g§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[%§ = param1;
            do
            {
               this.§-7§();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§[%§;
      }
      
      public function set §-"%§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§-!y§ = param1;
         }
         do
         {
            this.§-7§();
         }
         while(!_loc2_);
         
      }
      
      public function get §-"%§() : uint
      {
         return this.§-!y§;
      }
      
      public function set §"![§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-m§ = param1;
            do
            {
               this.§-7§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function get §"![§() : uint
      {
         return this.§-m§;
      }
      
      private function §-7§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            this.§<!g§.textColor = 16711680;
         }
         var _loc1_:Array = this.§<!P§(this.§-!y§);
         var _loc2_:Array = this.§<!P§(this.§[%§);
         var _loc3_:Array = this.§<!P§(this.§-m§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!(_loc13_ && _loc1_))
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc14_)
            {
               §§push(§§pop() * §-%§);
               if(_loc14_)
               {
                  addr78:
                  §§push(§§pop() + 1);
                  if(_loc14_ || _loc3_)
                  {
                     addr87:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc14_ || this)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * §-%§);
                        if(_loc14_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc14_)
                           {
                           }
                           addr116:
                           var _loc8_:* = §§pop();
                           §§push(_loc2_[2] - 255);
                           if(_loc14_ || _loc2_)
                           {
                              §§push(§§pop() - _loc1_[2]);
                              if(!(_loc13_ && _loc2_))
                              {
                                 §§push(§§pop() * §-%§);
                                 if(!(_loc13_ && _loc1_))
                                 {
                                    addr149:
                                    §§push(§§pop() + 1);
                                    if(_loc14_ || _loc3_)
                                    {
                                       addr158:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    §§push(_loc3_[0] - 255);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() - _loc1_[0]);
                                       if(!_loc13_)
                                       {
                                          §§push(§-%§);
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§push(§§pop() + 1);
                                                if(!(_loc13_ && this))
                                                {
                                                   addr203:
                                                   §§push(§§pop() - _loc7_);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(_loc3_[1] - 255);
                                                if(_loc14_)
                                                {
                                                   §§push(§§pop() - _loc1_[1]);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§-%§);
                                                      if(!(_loc13_ && _loc1_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            addr233:
                                                            §§push(§§pop() + 1);
                                                            if(_loc14_)
                                                            {
                                                               addr238:
                                                               addr237:
                                                               §§push(§§pop() - _loc8_);
                                                               if(!_loc14_)
                                                               {
                                                               }
                                                               addr242:
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc3_[2] - 255);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop() - _loc1_[2]);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§-%§);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc14_)
                                                                        {
                                                                           addr262:
                                                                           §§push(§§pop() + 1);
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              addr272:
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(_loc14_ || _loc1_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        addr281:
                                                                        var _loc12_:* = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           this.§#!3§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                           do
                                                                           {
                                                                              this.§<!g§.filters = [this.§#!3§];
                                                                           }
                                                                           while(_loc13_ && _loc1_);
                                                                           
                                                                        }
                                                                        return;
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr233);
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr158);
                              }
                           }
                           §§goto(addr149);
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr116);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr78);
      }
      
      private function §<!P§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            §§push(255);
            if(_loc3_)
            {
               addr36:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc3_ || this)
               {
                  §§goto(addr46);
               }
               §§goto(addr65);
            }
            addr46:
            §§push(255);
            if(!(_loc2_ && _loc3_))
            {
               addr65:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr36);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!3§ = null;
         }
         while(true)
         {
            this.§<!g§.filters = [];
            while(!(_loc1_ && _loc2_))
            {
               this.§<!g§ = null;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
