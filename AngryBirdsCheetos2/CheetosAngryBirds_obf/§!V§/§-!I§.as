package §!V§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §-!I§
   {
      
      private static const §-a§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-a§ = 1 / 255;
         }
      }
      
      private var §2!%§:TextField;
      
      private var §`U§:uint;
      
      private var §6![§:uint;
      
      private var §,!"§:uint;
      
      private var §8!§:ColorMatrixFilter;
      
      public function §-!I§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§2!%§ = param1;
               while(true)
               {
                  this.§8!§ = new ColorMatrixFilter();
                  continue loop0;
                  addr33:
                  if(!(_loc6_ && param3))
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         while(true)
         {
            this.§6![§ = param4;
            §§goto(addr55);
         }
         §§goto(addr40);
      }
      
      public function set §2!e§(param1:TextField) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!%§ = param1;
         }
      }
      
      public function get §2!e§() : TextField
      {
         return this.§2!%§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`U§ = param1;
            do
            {
               this.§6t§();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§`U§;
      }
      
      public function set §2L§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!"§ = param1;
            do
            {
               this.§6t§();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function get §2L§() : uint
      {
         return this.§,!"§;
      }
      
      public function set §`!^§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6![§ = param1;
         }
         do
         {
            this.§6t§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §`!^§() : uint
      {
         return this.§6![§;
      }
      
      private function §6t§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            this.§2!%§.textColor = 16711680;
         }
         var _loc1_:Array = this.§4!a§(this.§,!"§);
         var _loc2_:Array = this.§4!a§(this.§`U§);
         var _loc3_:Array = this.§4!a§(this.§6![§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(!_loc14_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_ || this)
            {
               §§push(§§pop() * §-a§);
               if(_loc13_ || _loc1_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc13_)
                  {
                  }
                  addr87:
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §-a§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc13_)
                           {
                              addr109:
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc8_:* = §§pop();
                     §§push(_loc2_[2] - 255);
                     if(!(_loc14_ && _loc1_))
                     {
                        §§push(§§pop() - _loc1_[2]);
                        if(_loc13_)
                        {
                           §§push(§§pop() * §-a§);
                           if(_loc13_ || _loc2_)
                           {
                              addr138:
                              §§push(§§pop() + 1);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc3_[0] - 255);
                           if(_loc13_ || _loc1_)
                           {
                              §§push(§§pop() - _loc1_[0]);
                              if(_loc13_)
                              {
                                 §§push(§-a§);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc13_ || _loc1_)
                                       {
                                          addr192:
                                          §§push(§§pop() - _loc7_);
                                          if(_loc13_ || _loc1_)
                                          {
                                             addr201:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc3_[1] - 255);
                                       if(_loc13_ || _loc1_)
                                       {
                                          §§push(§§pop() - _loc1_[1]);
                                          if(!_loc14_)
                                          {
                                             §§push(§-a§);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!_loc14_)
                                                   {
                                                      addr231:
                                                      §§push(§§pop() - _loc8_);
                                                      if(!_loc14_)
                                                      {
                                                         addr235:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc3_[2] - 255);
                                                   if(_loc13_ || this)
                                                   {
                                                      §§push(§§pop() - _loc1_[2]);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(§-a§);
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               addr271:
                                                               §§push(§§pop() + 1);
                                                               if(_loc13_ || _loc1_)
                                                               {
                                                                  addr280:
                                                                  addr281:
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(!_loc13_)
                                                                  {
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               addr285:
                                                               var _loc12_:* = §§pop();
                                                               if(_loc13_ || _loc1_)
                                                               {
                                                                  this.§8!§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                  do
                                                                  {
                                                                     this.§2!%§.filters = [this.§8!§];
                                                                  }
                                                                  while(!_loc13_);
                                                                  
                                                               }
                                                               return;
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr280);
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr201);
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr109);
               }
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr87);
      }
      
      private function §4!a§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(_loc2_ || this)
         {
            §§push(255);
            if(!_loc3_)
            {
               addr40:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(255);
                  if(_loc2_ || _loc2_)
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
         §§goto(addr40);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!§ = null;
         }
         do
         {
            this.§2!%§.filters = [];
            do
            {
               this.§2!%§ = null;
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!(_loc1_ || this));
         
      }
   }
}
