package §<a§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §>!i§
   {
      
      private static const §%!C§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!C§ = 1 / 255;
         }
      }
      
      private var §5!=§:TextField;
      
      private var § 2§:uint;
      
      private var §#!P§:uint;
      
      private var §;"+§:uint;
      
      private var §7!Q§:ColorMatrixFilter;
      
      public function §>!i§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§5!=§ = param1;
               loop1:
               while(true)
               {
                  this.§7!Q§ = new ColorMatrixFilter();
                  addr90:
                  while(true)
                  {
                     this.§ 2§ = param2;
                     continue loop1;
                  }
               }
               if(!(_loc6_ || this))
               {
                  continue;
               }
               this.§;"+§ = param3;
               loop4:
               while(_loc6_)
               {
                  loop5:
                  while(true)
                  {
                     this.§#!P§ = param4;
                     while(_loc6_)
                     {
                        this.§'O§();
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break loop5;
                        }
                        §§goto(addr90);
                     }
                     continue loop4;
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr55);
      }
      
      public function set §6]§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5!=§ = param1;
         }
      }
      
      public function get §6]§() : TextField
      {
         return this.§5!=§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ 2§ = param1;
            do
            {
               this.§'O§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§ 2§;
      }
      
      public function set §?!$§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;"+§ = param1;
         }
         do
         {
            this.§'O§();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get §?!$§() : uint
      {
         return this.§;"+§;
      }
      
      public function set §5!2§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#!P§ = param1;
         }
         do
         {
            this.§'O§();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function get §5!2§() : uint
      {
         return this.§#!P§;
      }
      
      private function §'O§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            this.§5!=§.textColor = 16711680;
         }
         var _loc1_:Array = this.§2!j§(this.§;"+§);
         var _loc2_:Array = this.§2!j§(this.§ 2§);
         var _loc3_:Array = this.§2!j§(this.§#!P§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() - _loc1_[0]);
            if(!_loc14_)
            {
               addr73:
               §§push(§§pop() * §%!C§);
               if(!(_loc14_ && _loc1_))
               {
                  addr82:
                  §§push(§§pop() + 1);
                  if(!(_loc14_ && _loc2_))
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_ || _loc3_)
                     {
                        §§push(§§pop() * §%!C§);
                        if(_loc14_ && _loc1_)
                        {
                        }
                        addr130:
                        var _loc8_:* = §§pop();
                        §§push(_loc2_[2] - 255);
                        if(_loc13_ || _loc3_)
                        {
                           §§push(§§pop() - _loc1_[2]);
                           if(!(_loc14_ && _loc3_))
                           {
                              §§push(§§pop() * §%!C§);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc13_ || _loc3_)
                                 {
                                 }
                                 addr168:
                                 var _loc9_:* = §§pop();
                                 §§push(_loc3_[0] - 255);
                                 if(_loc13_ || _loc1_)
                                 {
                                    §§push(§§pop() - _loc1_[0]);
                                    if(!(_loc14_ && this))
                                    {
                                       addr202:
                                       §§push(§%!C§);
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc13_)
                                             {
                                                addr217:
                                                addr218:
                                                §§push(§§pop() - _loc7_);
                                                if(_loc13_ || _loc1_)
                                                {
                                                }
                                                addr227:
                                                var _loc10_:* = §§pop();
                                                §§push(_loc3_[1] - 255);
                                                if(!(_loc14_ && _loc1_))
                                                {
                                                   §§push(§§pop() - _loc1_[1]);
                                                   if(_loc13_ || _loc1_)
                                                   {
                                                      addr251:
                                                      §§push(§%!C§);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc13_)
                                                         {
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   addr262:
                                                   §§push(§§pop() + 1);
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      addr272:
                                                      §§push(§§pop() - _loc8_);
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         addr280:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc3_[2] - 255);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() - _loc1_[2]);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§%!C§);
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_ || this)
                                                            {
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc13_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   addr325:
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§push(_loc9_);
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   if(_loc13_ || _loc1_)
                                                   {
                                                      this.§7!Q§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                      do
                                                      {
                                                         this.§5!=§.filters = [this.§7!Q§];
                                                      }
                                                      while(!_loc13_);
                                                      
                                                   }
                                                   return;
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr227);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr202);
                              }
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr168);
                     }
                     §§push(§§pop() + 1);
                     if(!(_loc14_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr91);
            }
            §§goto(addr82);
         }
         §§goto(addr73);
      }
      
      private function §2!j§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || _loc2_)
         {
            §§push(255);
            if(_loc3_ || _loc2_)
            {
               addr56:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc3_)
               {
                  §§goto(addr61);
               }
               §§goto(addr70);
            }
            addr61:
            §§push(255);
            if(_loc3_ || param1)
            {
               addr70:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr56);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7!Q§ = null;
            do
            {
               this.§5!=§.filters = [];
               do
               {
                  this.§5!=§ = null;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
   }
}
