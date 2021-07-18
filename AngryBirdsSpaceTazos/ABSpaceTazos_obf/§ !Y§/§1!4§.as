package § !Y§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §1!4§
   {
      
      private static const §1!h§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!h§ = 1 / 255;
         }
      }
      
      private var § !'§:TextField;
      
      private var §2O§:uint;
      
      private var §8r§:uint;
      
      private var §0!-§:uint;
      
      private var §&A§:ColorMatrixFilter;
      
      public function §1!4§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§ !'§ = param1;
               while(true)
               {
                  this.§&A§ = new ColorMatrixFilter();
                  addr67:
                  if(!(_loc6_ && param3))
                  {
                     if(_loc5_)
                     {
                        this.§8r§ = param4;
                        while(!_loc6_)
                        {
                           this.§%""§();
                           if(!(_loc6_ && param3))
                           {
                              return;
                           }
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc6_ && param3))
                           {
                              §§goto(addr67);
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    this.§0!-§ = param3;
                                    continue loop4;
                                 }
                                 addr99:
                                 while(true)
                                 {
                                    this.§2O§ = param2;
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        addr43:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      public function set textField(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§ !'§ = param1;
         }
      }
      
      public function get textField() : TextField
      {
         return this.§ !'§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2O§ = param1;
            do
            {
               this.§%""§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§2O§;
      }
      
      public function set §-!P§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!-§ = param1;
         }
         do
         {
            this.§%""§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §-!P§() : uint
      {
         return this.§0!-§;
      }
      
      public function set §]#§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8r§ = param1;
            do
            {
               this.§%""§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function get §]#§() : uint
      {
         return this.§8r§;
      }
      
      private function §%""§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            this.§ !'§.textColor = 16711680;
         }
         var _loc1_:Array = this.§]k§(this.§0!-§);
         var _loc2_:Array = this.§]k§(this.§2O§);
         var _loc3_:Array = this.§]k§(this.§8r§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!_loc14_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_ || _loc3_)
            {
               addr78:
               §§push(§§pop() * §1!h§);
               if(!(_loc14_ && this))
               {
                  §§push(§§pop() + 1);
                  if(_loc13_)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_)
                     {
                        addr106:
                        §§push(§§pop() * §1!h§);
                        if(_loc13_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc8_:* = §§pop();
                     §§push(_loc2_[2] - 255);
                     if(!(_loc14_ && _loc2_))
                     {
                        §§push(§§pop() - _loc1_[2]);
                        if(_loc13_)
                        {
                           §§push(§§pop() * §1!h§);
                           if(_loc13_ || this)
                           {
                           }
                           addr153:
                           var _loc9_:Number = §§pop();
                           addr152:
                           §§push(_loc3_[0] - 255);
                           if(_loc13_ || _loc3_)
                           {
                              §§push(§§pop() - _loc1_[0]);
                              if(!(_loc14_ && this))
                              {
                                 §§push(§1!h§);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc13_)
                                       {
                                          addr203:
                                          §§push(§§pop() - _loc7_);
                                          if(_loc13_)
                                          {
                                             addr206:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr206);
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(_loc3_[1] - 255);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() - _loc1_[1]);
                                       if(_loc13_ || _loc1_)
                                       {
                                          §§push(§1!h§);
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_ || _loc1_)
                                             {
                                                addr242:
                                                §§push(§§pop() + 1);
                                                if(!_loc14_)
                                                {
                                                   addr246:
                                                   §§push(§§pop() - _loc8_);
                                                   if(!(_loc14_ && _loc1_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc3_[2] - 255);
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(§§pop() - _loc1_[2]);
                                                   if(_loc13_)
                                                   {
                                                      addr275:
                                                      §§push(§1!h§);
                                                      if(_loc13_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               addr301:
                                                               §§push(§§pop() - _loc9_);
                                                               if(!_loc13_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         addr305:
                                                         var _loc12_:* = §§pop();
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            this.§&A§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                            do
                                                            {
                                                               this.§ !'§.filters = [this.§&A§];
                                                            }
                                                            while(_loc14_ && this);
                                                            
                                                         }
                                                         return;
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr275);
                                             }
                                          }
                                          §§goto(addr246);
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr203);
                              }
                           }
                           §§goto(addr206);
                        }
                        §§push(§§pop() + 1);
                        if(!(_loc14_ && _loc1_))
                        {
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr78);
      }
      
      private function §]k§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!_loc3_)
         {
            §§push(255);
            if(_loc2_ || this)
            {
               addr40:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!(_loc3_ && param1))
               {
                  §§push(255);
                  if(!_loc3_)
                  {
                     addr64:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr64);
         }
         §§goto(addr40);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§&A§ = null;
         }
         do
         {
            this.§ !'§.filters = [];
            do
            {
               this.§ !'§ = null;
            }
            while(_loc1_ && _loc2_);
            
         }
         while(!_loc2_);
         
      }
   }
}
