package §1!i§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §2#0§
   {
      
      private static const §]!]§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §2#0§)
         {
            §]!]§ = 1 / 255;
         }
      }
      
      private var §13§:TextField;
      
      private var §=#N§:uint;
      
      private var §?!1§:uint;
      
      private var §7"G§:uint;
      
      private var §@"]§:ColorMatrixFilter;
      
      public function §2#0§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super();
            while(true)
            {
               this.§13§ = param1;
               while(_loc6_)
               {
                  this.§@"]§ = new ColorMatrixFilter();
                  while(true)
                  {
                     this.§=#N§ = param2;
                     addr75:
                     while(_loc6_)
                     {
                        this.§7"G§ = param3;
                     }
                  }
                  addr58:
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  this.§=!a§();
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr75);
                     }
                     return;
                     addr41:
                  }
                  loop5:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr58);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§?!1§ = param4;
                           continue loop5;
                        }
                        §§goto(addr41);
                        addr70:
                     }
                  }
                  addr65:
               }
            }
         }
         §§goto(addr70);
      }
      
      public function set §`"Y§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§13§ = param1;
         }
      }
      
      public function get §`"Y§() : TextField
      {
         return this.§13§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=#N§ = param1;
            do
            {
               this.§=!a§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§=#N§;
      }
      
      public function set §]#_§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7"G§ = param1;
            do
            {
               this.§=!a§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function get §]#_§() : uint
      {
         return this.§7"G§;
      }
      
      public function set §5"§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!1§ = param1;
         }
         do
         {
            this.§=!a§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §5"§() : uint
      {
         return this.§?!1§;
      }
      
      private function §=!a§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            this.§13§.textColor = 16711680;
         }
         var _loc1_:Array = this.§'S§(this.§7"G§);
         var _loc2_:Array = this.§'S§(this.§=#N§);
         var _loc3_:Array = this.§'S§(this.§?!1§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc13_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_)
            {
               addr68:
               §§push(§§pop() * §]!]§);
               if(_loc13_)
               {
                  §§push(§§pop() + 1);
                  if(_loc13_)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_ || _loc1_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §]!]§);
                        if(_loc13_)
                        {
                           addr100:
                           §§push(§§pop() + 1);
                           if(_loc14_)
                           {
                           }
                           addr105:
                           var _loc8_:* = §§pop();
                           §§push(_loc2_[2] - 255);
                           if(_loc13_)
                           {
                              §§push(§§pop() - _loc1_[2]);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * §]!]§);
                                 if(!_loc14_)
                                 {
                                    addr123:
                                    §§push(§§pop() + 1);
                                    if(_loc13_)
                                    {
                                       addr127:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(_loc3_[0] - 255);
                                 if(_loc13_ || _loc2_)
                                 {
                                    §§push(§§pop() - _loc1_[0]);
                                    if(!_loc14_)
                                    {
                                       §§push(§]!]§);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc13_)
                                             {
                                                addr173:
                                                §§push(§§pop() - _loc7_);
                                                if(_loc14_ && _loc3_)
                                                {
                                                }
                                                addr182:
                                                var _loc10_:* = §§pop();
                                                §§push(_loc3_[1] - 255);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() - _loc1_[1]);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§push(§]!]§);
                                                      if(_loc13_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc13_)
                                                         {
                                                            addr226:
                                                            §§push(§§pop() + 1);
                                                            if(_loc13_)
                                                            {
                                                               §§push(_loc8_);
                                                            }
                                                            var _loc11_:Number = §§pop();
                                                            §§push(_loc3_[2] - 255);
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               §§push(§§pop() - _loc1_[2]);
                                                               if(!(_loc14_ && _loc1_))
                                                               {
                                                                  §§push(§]!]§);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(!(_loc14_ && _loc2_))
                                                                        {
                                                                           addr271:
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(_loc13_ || _loc2_)
                                                                           {
                                                                              addr279:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        if(!_loc14_)
                                                                        {
                                                                           this.§@"]§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                        }
                                                                        do
                                                                        {
                                                                           this.§13§.filters = [this.§@"]§];
                                                                        }
                                                                        while(!_loc13_);
                                                                        
                                                                        return;
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc14_ && _loc3_)
                                                      {
                                                      }
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr182);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr105);
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr68);
      }
      
      private function §'S§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!(_loc3_ && param1))
         {
            §§push(255);
            if(!(_loc3_ && this))
            {
               addr45:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc2_ || param1)
               {
                  §§push(255);
                  if(_loc2_)
                  {
                     addr69:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr45);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@"]§ = null;
         }
         do
         {
            this.§13§.filters = [];
            do
            {
               this.§13§ = null;
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || this));
         
      }
   }
}
