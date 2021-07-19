package §'@§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §@=§
   {
      
      private static const §0"+§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0"+§ = 1 / 255;
         }
      }
      
      private var §&!w§:TextField;
      
      private var §^!f§:uint;
      
      private var §2T§:uint;
      
      private var §@i§:uint;
      
      private var §1!R§:ColorMatrixFilter;
      
      public function §@=§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super();
            while(true)
            {
               this.§&!w§ = param1;
               addr97:
               while(_loc5_)
               {
                  this.§1!R§ = new ColorMatrixFilter();
               }
            }
         }
         loop2:
         while(true)
         {
            this.§^!f§ = param2;
            loop3:
            while(true)
            {
               if(!_loc5_)
               {
                  continue loop2;
               }
               this.§@i§ = param3;
               loop4:
               while(!_loc6_)
               {
                  this.§2T§ = param4;
                  while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        continue loop3;
                     }
                     continue loop4;
                     addr62:
                     this.§=!,§();
                     if(!_loc6_)
                     {
                        return;
                     }
                  }
                  continue loop3;
               }
               §§goto(addr97);
            }
         }
      }
      
      public function set §%I§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!w§ = param1;
         }
      }
      
      public function get §%I§() : TextField
      {
         return this.§&!w§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!f§ = param1;
            do
            {
               this.§=!,§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§^!f§;
      }
      
      public function set § null§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@i§ = param1;
         }
         do
         {
            this.§=!,§();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function get § null§() : uint
      {
         return this.§@i§;
      }
      
      public function set §%j§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2T§ = param1;
            do
            {
               this.§=!,§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §%j§() : uint
      {
         return this.§2T§;
      }
      
      private function §=!,§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || _loc1_)
         {
            this.§&!w§.textColor = 16711680;
         }
         var _loc1_:Array = this.§`!n§(this.§@i§);
         var _loc2_:Array = this.§`!n§(this.§^!f§);
         var _loc3_:Array = this.§`!n§(this.§2T§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc13_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_ || _loc2_)
            {
               §§push(§§pop() * §0"+§);
               if(_loc13_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc13_ || _loc2_)
                  {
                  }
                  addr97:
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §0"+§);
                        if(!(_loc14_ && this))
                        {
                           §§push(§§pop() + 1);
                           if(_loc13_)
                           {
                              addr124:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(_loc2_[2] - 255);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - _loc1_[2]);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() * §0"+§);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc14_)
                                    {
                                    }
                                    addr153:
                                    var _loc9_:* = §§pop();
                                    §§push(_loc3_[0] - 255);
                                    if(_loc13_ || _loc2_)
                                    {
                                       §§push(§§pop() - _loc1_[0]);
                                       if(_loc13_)
                                       {
                                          §§push(§0"+§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_)
                                             {
                                                addr188:
                                                §§push(§§pop() + 1);
                                                if(!_loc14_)
                                                {
                                                   addr193:
                                                   §§push(§§pop() - _loc7_);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc3_[1] - 255);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() - _loc1_[1]);
                                                if(_loc13_ || _loc2_)
                                                {
                                                   §§push(§0"+§);
                                                   if(!(_loc14_ && _loc1_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         addr227:
                                                         §§push(§§pop() + 1);
                                                         if(_loc13_)
                                                         {
                                                            addr232:
                                                            §§push(§§pop() - _loc8_);
                                                            if(_loc13_)
                                                            {
                                                               addr235:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc3_[2] - 255);
                                                            if(_loc13_)
                                                            {
                                                               §§push(§§pop() - _loc1_[2]);
                                                               if(!(_loc14_ && _loc1_))
                                                               {
                                                                  §§push(§0"+§);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                        }
                                                                        addr285:
                                                                        var _loc12_:Number = §§pop();
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc14_ && _loc2_))
                                                                  {
                                                                     addr284:
                                                                     if(!(_loc14_ && _loc1_))
                                                                     {
                                                                        this.§1!R§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                     }
                                                                     do
                                                                     {
                                                                        this.§&!w§.filters = [this.§1!R§];
                                                                     }
                                                                     while(_loc14_ && this);
                                                                     
                                                                     return;
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr153);
                              }
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr153);
                        }
                     }
                  }
                  §§goto(addr124);
               }
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr97);
      }
      
      private function §`!n§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(_loc2_ || param1)
         {
            §§push(255);
            if(_loc2_)
            {
               addr40:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc2_)
               {
                  §§goto(addr45);
               }
               §§goto(addr64);
            }
            addr45:
            §§push(255);
            if(!(_loc3_ && _loc3_))
            {
               addr64:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr40);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§1!R§ = null;
            while(true)
            {
               this.§&!w§.filters = [];
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§&!w§ = null;
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
