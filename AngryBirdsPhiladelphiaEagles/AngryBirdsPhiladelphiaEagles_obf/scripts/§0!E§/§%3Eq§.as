package §0!E§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §>q§
   {
      
      private static const §4`§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §4`§ = 1 / 255;
         }
      }
      
      private var §!!@§:TextField;
      
      private var §^!,§:uint;
      
      private var §6!?§:uint;
      
      private var §=^§:uint;
      
      private var §?I§:ColorMatrixFilter;
      
      public function §>q§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         super();
         this.§!!@§ = param1;
         this.§?I§ = new ColorMatrixFilter();
         while(true)
         {
            this.§^!,§ = param2;
            while(true)
            {
               this.§=^§ = param3;
               if(_loc5_ && this)
               {
                  break;
               }
               this.§6!?§ = param4;
               if(_loc6_ || this)
               {
                  this.§%T§();
                  return;
               }
            }
         }
      }
      
      public function set §2!L§(param1:TextField) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!@§ = param1;
         }
      }
      
      public function get §2!L§() : TextField
      {
         return this.§!!@§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!,§ = param1;
         }
         do
         {
            this.§%T§();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get textColor() : uint
      {
         return this.§^!,§;
      }
      
      public function set §`!A§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=^§ = param1;
            do
            {
               this.§%T§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get §`!A§() : uint
      {
         return this.§=^§;
      }
      
      public function set §9C§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!?§ = param1;
         }
         do
         {
            this.§%T§();
         }
         while(!_loc2_);
         
      }
      
      public function get §9C§() : uint
      {
         return this.§6!?§;
      }
      
      private function §%T§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            this.§!!@§.textColor = 16711680;
         }
         var _loc1_:Array = this.§`!-§(this.§=^§);
         var _loc2_:Array = this.§`!-§(this.§^!,§);
         var _loc3_:Array = this.§`!-§(this.§6!?§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc14_ || _loc2_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(!(_loc13_ && _loc3_))
            {
               §§push(§§pop() * §4`§);
               if(!(_loc13_ && _loc2_))
               {
                  §§push(§§pop() + 1);
                  if(_loc14_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
         }
         var _loc7_:* = §§pop();
         §§push(_loc2_[1] - 255);
         if(_loc14_)
         {
            §§push(§§pop() - _loc1_[1]);
            if(!(_loc13_ && _loc1_))
            {
               §§push(§§pop() * §4`§);
               if(_loc14_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc13_)
                  {
                     addr120:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(_loc2_[2] - 255);
                  if(_loc14_ || _loc3_)
                  {
                     §§push(§§pop() - _loc1_[2]);
                     if(_loc14_ || _loc3_)
                     {
                        §§push(§§pop() * §4`§);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc14_ || _loc1_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                  }
                  var _loc9_:* = §§pop();
                  §§push(_loc3_[0] - 255);
                  if(!(_loc13_ && this))
                  {
                     §§push(§§pop() - _loc1_[0]);
                     if(_loc14_ || _loc3_)
                     {
                        §§push(§4`§);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc13_ && _loc1_))
                           {
                              §§push(§§pop() + 1);
                              if(_loc14_)
                              {
                                 addr209:
                                 §§push(§§pop() - _loc7_);
                                 if(_loc14_ || _loc3_)
                                 {
                                 }
                                 addr218:
                                 var _loc10_:* = §§pop();
                                 §§push(_loc3_[1] - 255);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - _loc1_[1]);
                                    if(!_loc13_)
                                    {
                                       addr232:
                                       §§push(§4`§);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc13_)
                                          {
                                             addr238:
                                             §§push(§§pop() + 1);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                addr247:
                                                §§push(§§pop() - _loc8_);
                                                if(_loc14_ || _loc2_)
                                                {
                                                   addr256:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc3_[2] - 255);
                                                if(_loc14_)
                                                {
                                                   §§push(§§pop() - _loc1_[2]);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§4`§);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            §§goto(addr300);
                                                         }
                                                         addr300:
                                                         §§goto(addr301);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc14_ || this)
                                                      {
                                                      }
                                                      addr301:
                                                      §§push(§§pop() + 1);
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(_loc9_);
                                                      }
                                                      var _loc12_:Number = §§pop();
                                                      if(_loc14_ || _loc1_)
                                                      {
                                                         this.§?I§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                         do
                                                         {
                                                            this.§!!@§.filters = [this.§?I§];
                                                         }
                                                         while(_loc13_ && _loc3_);
                                                         
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr232);
                              }
                           }
                           §§goto(addr218);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr209);
                     }
                  }
                  §§goto(addr209);
               }
            }
         }
         §§goto(addr120);
      }
      
      private function §`!-§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            §§push(255);
            if(_loc3_ || _loc3_)
            {
               addr51:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc3_ || param1)
               {
                  §§push(255);
                  if(_loc3_ || _loc2_)
                  {
                     addr70:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr51);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?I§ = null;
            while(true)
            {
               this.§!!@§.filters = [];
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§!!@§ = null;
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
