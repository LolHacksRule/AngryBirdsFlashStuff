package §9@§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §3"!§
   {
      
      private static const §9"=§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3"!§))
         {
            §9"=§ = 1 / 255;
         }
      }
      
      private var §-" §:TextField;
      
      private var § V§:uint;
      
      private var §;2§:uint;
      
      private var §<!>§:uint;
      
      private var §8s§:ColorMatrixFilter;
      
      public function §3"!§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.§-" § = param1;
               addr89:
               while(true)
               {
                  this.§8s§ = new ColorMatrixFilter();
               }
            }
            addr92:
         }
         while(true)
         {
            this.§ V§ = param2;
            while(true)
            {
               this.§<!>§ = param3;
               loop4:
               while(true)
               {
                  this.§;2§ = param4;
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop4;
                  }
                  §§goto(addr89);
               }
            }
            if(_loc6_ && this)
            {
               continue;
            }
            if(!_loc6_)
            {
               return;
            }
            §§goto(addr92);
         }
      }
      
      public function set §"B§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-" § = param1;
         }
      }
      
      public function get §"B§() : TextField
      {
         return this.§-" §;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ V§ = param1;
            do
            {
               this.§1"M§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§ V§;
      }
      
      public function set §9!A§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<!>§ = param1;
            do
            {
               this.§1"M§();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function get §9!A§() : uint
      {
         return this.§<!>§;
      }
      
      public function set §5"Y§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;2§ = param1;
         }
         do
         {
            this.§1"M§();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function get §5"Y§() : uint
      {
         return this.§;2§;
      }
      
      private function §1"M§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || this)
         {
            this.§-" §.textColor = 16711680;
         }
         var _loc1_:Array = this.§;!9§(this.§<!>§);
         var _loc2_:Array = this.§;!9§(this.§ V§);
         var _loc3_:Array = this.§;!9§(this.§;2§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!_loc14_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(!(_loc14_ && _loc1_))
            {
               §§push(§§pop() * §9"=§);
               if(_loc13_)
               {
                  §§push(§§pop() + 1);
                  if(_loc13_ || this)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc7_:* = §§pop();
            §§push(_loc2_[1] - 255);
            if(_loc13_ || this)
            {
               §§push(§§pop() - _loc1_[1]);
               if(!_loc14_)
               {
                  addr111:
                  §§push(§§pop() * §9"=§);
                  if(_loc13_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc13_ || _loc1_)
                     {
                        addr124:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(_loc2_[2] - 255);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - _loc1_[2]);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §9"=§);
                        if(!(_loc14_ && _loc1_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc13_)
                           {
                              addr152:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc9_:* = §§pop();
                        §§push(_loc3_[0] - 255);
                        if(!(_loc14_ && _loc2_))
                        {
                           §§push(§§pop() - _loc1_[0]);
                           if(!_loc14_)
                           {
                              addr182:
                              §§push(§9"=§);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc14_ && _loc1_))
                                    {
                                       addr198:
                                       §§push(§§pop() - _loc7_);
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          addr206:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc3_[1] - 255);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() - _loc1_[1]);
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             §§push(§9"=§);
                                             if(_loc13_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!_loc14_)
                                                   {
                                                      addr241:
                                                      §§push(§§pop() - _loc8_);
                                                      if(!_loc14_)
                                                      {
                                                         addr245:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc3_[2] - 255);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§push(§§pop() - _loc1_[2]);
                                                      if(_loc13_ || _loc1_)
                                                      {
                                                         §§push(§9"=§);
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               addr286:
                                                               §§push(§§pop() + 1);
                                                               if(_loc14_ && _loc2_)
                                                               {
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§push(_loc9_);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      addr305:
                                                      var _loc12_:* = §§pop();
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         this.§8s§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                      }
                                                      do
                                                      {
                                                         this.§-" §.filters = [this.§8s§];
                                                      }
                                                      while(!(_loc13_ || _loc3_));
                                                      
                                                      return;
                                                   }
                                                   §§goto(addr286);
                                                }
                                             }
                                             §§goto(addr241);
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr124);
            }
            §§goto(addr111);
         }
         §§goto(addr91);
      }
      
      private function §;!9§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(_loc2_ || _loc3_)
         {
            §§push(255);
            if(!(_loc3_ && param1))
            {
               addr45:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!_loc3_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8s§ = null;
            while(true)
            {
               this.§-" §.filters = [];
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            this.§-" § = null;
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
