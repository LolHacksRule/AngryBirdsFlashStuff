package §"n§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §;Z§
   {
      
      private static const §?8§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?8§ = 1 / 255;
         }
      }
      
      private var §"v§:TextField;
      
      private var § %§:uint;
      
      private var §%!D§:uint;
      
      private var §%!5§:uint;
      
      private var §8h§:ColorMatrixFilter;
      
      public function §;Z§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super();
            while(true)
            {
               this.§"v§ = param1;
               while(_loc5_ || param1)
               {
                  this.§8h§ = new ColorMatrixFilter();
                  loop2:
                  while(true)
                  {
                     this.§ %§ = param2;
                     addr86:
                     while(true)
                     {
                        this.§%!5§ = param3;
                        continue loop2;
                     }
                  }
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  this.§%!D§ = param4;
                  §§goto(addr43);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function set textField(param1:TextField) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"v§ = param1;
         }
      }
      
      public function get textField() : TextField
      {
         return this.§"v§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ %§ = param1;
         }
         do
         {
            this.§`@§();
         }
         while(_loc2_);
         
      }
      
      public function get textColor() : uint
      {
         return this.§ %§;
      }
      
      public function set §!I§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!5§ = param1;
            do
            {
               this.§`@§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get §!I§() : uint
      {
         return this.§%!5§;
      }
      
      public function set § !Q§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%!D§ = param1;
            do
            {
               this.§`@§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get § !Q§() : uint
      {
         return this.§%!D§;
      }
      
      private function §`@§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            this.§"v§.textColor = 16711680;
         }
         var _loc1_:Array = this.§3!3§(this.§%!5§);
         var _loc2_:Array = this.§3!3§(this.§ %§);
         var _loc3_:Array = this.§3!3§(this.§%!D§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc13_ || _loc1_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(!(_loc14_ && _loc3_))
            {
               §§push(§§pop() * §?8§);
               if(_loc13_ || _loc1_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc14_)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc2_[1] - 255);
               if(_loc13_ || _loc1_)
               {
                  §§push(§§pop() - _loc1_[1]);
                  if(!_loc14_)
                  {
                     §§push(§§pop() * §?8§);
                     if(!(_loc14_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                        if(_loc14_ && _loc2_)
                        {
                        }
                        addr130:
                        var _loc8_:* = §§pop();
                        §§push(_loc2_[2] - 255);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - _loc1_[2]);
                           if(_loc13_)
                           {
                              §§push(§§pop() * §?8§);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!_loc14_)
                                 {
                                    addr152:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc9_:* = §§pop();
                              §§push(_loc3_[0] - 255);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() - _loc1_[0]);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(§?8§);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc14_)
                                       {
                                          addr207:
                                          §§push(§§pop() + 1);
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(_loc7_);
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(_loc3_[1] - 255);
                                          if(_loc13_ || _loc2_)
                                          {
                                             §§push(§§pop() - _loc1_[1]);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr231:
                                                §§push(§?8§);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                             addr246:
                                             §§push(§§pop() - _loc8_);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr255:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc11_:* = §§pop();
                                             §§push(_loc3_[2] - 255);
                                             if(!(_loc14_ && this))
                                             {
                                                §§push(§§pop() - _loc1_[2]);
                                                if(_loc13_ || _loc1_)
                                                {
                                                   §§push(§?8§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                addr305:
                                                §§goto(addr291);
                                             }
                                             addr291:
                                             §§push(§§pop() + 1);
                                             if(!_loc14_)
                                             {
                                                §§push(_loc9_);
                                             }
                                             var _loc12_:* = §§pop();
                                             if(_loc13_)
                                             {
                                                this.§8h§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                             }
                                             do
                                             {
                                                this.§"v§.filters = [this.§8h§];
                                             }
                                             while(!(_loc13_ || this));
                                             
                                             return;
                                          }
                                          §§goto(addr231);
                                       }
                                       addr206:
                                       §§goto(addr207);
                                       §§push(Number(§§pop()));
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!_loc14_)
                                    {
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr152);
                     }
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr130);
            }
         }
         §§goto(addr91);
      }
      
      private function §3!3§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || _loc2_)
         {
            §§push(255);
            if(_loc3_ || _loc2_)
            {
               addr46:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!(_loc2_ && param1))
               {
                  §§goto(addr66);
               }
               §§goto(addr70);
            }
            addr66:
            §§push(255);
            if(!_loc2_)
            {
               addr70:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr46);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8h§ = null;
            while(true)
            {
               this.§"v§.filters = [];
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§"v§ = null;
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
   }
}
