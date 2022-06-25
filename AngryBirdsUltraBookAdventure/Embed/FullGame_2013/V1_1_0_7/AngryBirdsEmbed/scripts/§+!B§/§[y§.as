package §+!B§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §[y§
   {
      
      private static const §=[§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §=[§ = 1 / 255;
         }
      }
      
      private var §@w§:TextField;
      
      private var §'!§:uint;
      
      private var §<'§:uint;
      
      private var §?!D§:uint;
      
      private var §7!K§:ColorMatrixFilter;
      
      public function §[y§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
            this.§@w§ = param1;
         }
         this.§7!K§ = new ColorMatrixFilter();
         if(!(_loc6_ && this))
         {
            this.§'!§ = param2;
            if(_loc5_ || param3)
            {
               §§goto(addr69);
            }
            §§goto(addr79);
         }
         addr69:
         this.§?!D§ = param3;
         if(_loc5_ || this)
         {
            addr79:
            this.§<'§ = param4;
            this.§]!%§();
         }
      }
      
      public function set §-,§(param1:TextField) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@w§ = param1;
         }
      }
      
      public function get §-,§() : TextField
      {
         return this.§@w§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'!§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               this.§]!%§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function get textColor() : uint
      {
         return this.§'!§;
      }
      
      public function set §9&§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§?!D§ = param1;
            if(_loc3_)
            {
               addr29:
               this.§]!%§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function get §9&§() : uint
      {
         return this.§?!D§;
      }
      
      public function set §[S§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<'§ = param1;
            if(!_loc3_)
            {
               addr23:
               this.§]!%§();
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function get §[S§() : uint
      {
         return this.§<'§;
      }
      
      private function §]!%§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            this.§@w§.textColor = 16711680;
         }
         var _loc1_:Array = this.§]-§(this.§?!D§);
         var _loc2_:Array = this.§]-§(this.§'!§);
         var _loc3_:Array = this.§]-§(this.§<'§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!(_loc13_ && _loc1_))
         {
            §§push(§§pop() - _loc1_[0]);
            if(!_loc13_)
            {
               §§push(§§pop() * §=[§);
               if(!(_loc13_ && this))
               {
                  §§push(§§pop() + 1);
                  if(_loc14_)
                  {
                     addr87:
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc7_:* = §§pop();
            §§push(_loc2_[1] - 255);
            if(_loc14_)
            {
               §§push(§§pop() - _loc1_[1]);
               if(_loc14_ || this)
               {
                  §§push(§§pop() * §=[§);
                  if(!(_loc13_ && this))
                  {
                     §§push(§§pop() + 1);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            var _loc8_:* = §§pop();
            §§push(_loc2_[2] - 255);
            if(_loc14_)
            {
               §§push(§§pop() - _loc1_[2]);
               if(_loc14_ || _loc2_)
               {
                  §§push(§§pop() * §=[§);
                  if(_loc14_ || this)
                  {
                     addr149:
                     §§push(§§pop() + 1);
                     if(_loc14_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc9_:* = §§pop();
               §§push(_loc3_[0] - 255);
               if(!(_loc13_ && _loc1_))
               {
                  §§push(§§pop() - _loc1_[0]);
                  if(_loc14_)
                  {
                     §§push(§=[§);
                     if(_loc14_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc13_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc13_ && _loc2_))
                           {
                              addr204:
                              §§push(§§pop() - _loc7_);
                              if(_loc14_)
                              {
                                 addr207:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc10_:* = §§pop();
                           §§push(_loc3_[1] - 255);
                           if(!(_loc13_ && this))
                           {
                              §§push(§§pop() - _loc1_[1]);
                              if(!_loc13_)
                              {
                                 §§push(§=[§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc14_)
                                    {
                                       addr252:
                                       §§push(§§pop() + 1);
                                       if(_loc14_ || _loc2_)
                                       {
                                          addr242:
                                          §§push(_loc8_);
                                       }
                                       var _loc11_:* = §§pop();
                                       §§push(_loc3_[2] - 255);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - _loc1_[2]);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(§=[§);
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_)
                                                {
                                                   addr282:
                                                   §§push(§§pop() + 1);
                                                   if(!_loc13_)
                                                   {
                                                      addr286:
                                                      addr287:
                                                      §§push(§§pop() - _loc9_);
                                                      if(_loc13_ && _loc2_)
                                                      {
                                                      }
                                                      addr296:
                                                      var _loc12_:* = §§pop();
                                                      if(_loc14_ || this)
                                                      {
                                                         this.§7!K§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                         if(_loc14_ || _loc1_)
                                                         {
                                                            addr345:
                                                            this.§@w§.filters = [this.§7!K§];
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr296);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr207);
                     }
                  }
                  §§goto(addr204);
               }
               §§goto(addr207);
            }
            §§goto(addr149);
         }
         §§goto(addr87);
      }
      
      private function §]-§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!(_loc3_ && this))
         {
            §§push(255);
            if(_loc2_ || param1)
            {
               addr45:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc2_)
               {
                  §§push(255);
                  if(!_loc3_)
                  {
                     addr54:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr54);
         }
         §§goto(addr45);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§7!K§ = null;
            if(!_loc1_)
            {
               this.§@w§.filters = [];
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr53);
            }
            this.§@w§ = null;
         }
         addr53:
      }
   }
}
