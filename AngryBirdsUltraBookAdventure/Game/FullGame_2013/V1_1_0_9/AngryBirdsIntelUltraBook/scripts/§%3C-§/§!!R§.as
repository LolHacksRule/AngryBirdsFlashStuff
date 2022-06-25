package §<-§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!!R§
   {
      
      private static const §use§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §use§ = 1 / 255;
         }
      }
      
      private var §5!B§:TextField;
      
      private var §9R§:uint;
      
      private var §!A§:uint;
      
      private var §6!w§:uint;
      
      private var §&!0§:ColorMatrixFilter;
      
      public function §!!R§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super();
         }
         while(true)
         {
            this.§5!B§ = param1;
            loop1:
            for(; _loc6_; if(!(_loc6_ || this))
            {
               continue;
            },§§goto(addr92))
            {
               this.§&!0§ = new ColorMatrixFilter();
               loop2:
               while(true)
               {
                  this.§9R§ = param2;
                  while(true)
                  {
                     if(!(_loc5_ && param1))
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr92:
                     this.§6!w§ = param3;
                     do
                     {
                        this.§!A§ = param4;
                        do
                        {
                           this.§@!k§();
                        }
                        while(_loc5_);
                        
                     }
                     while(!_loc6_);
                     
                     if(_loc6_ || this)
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function set §3f§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5!B§ = param1;
         }
      }
      
      public function get §3f§() : TextField
      {
         return this.§5!B§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9R§ = param1;
         }
         do
         {
            this.§@!k§();
         }
         while(_loc2_);
         
      }
      
      public function get textColor() : uint
      {
         return this.§9R§;
      }
      
      public function set §@T§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!w§ = param1;
            do
            {
               this.§@!k§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function get §@T§() : uint
      {
         return this.§6!w§;
      }
      
      public function set §""!§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!A§ = param1;
         }
         do
         {
            this.§@!k§();
         }
         while(!_loc3_);
         
      }
      
      public function get §""!§() : uint
      {
         return this.§!A§;
      }
      
      private function §@!k§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || _loc1_)
         {
            this.§5!B§.textColor = 16711680;
         }
         var _loc1_:Array = this.§=A§(this.§6!w§);
         var _loc2_:Array = this.§=A§(this.§9R§);
         var _loc3_:Array = this.§=A§(this.§!A§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc13_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_)
            {
               §§push(§§pop() * §use§);
               if(_loc13_)
               {
                  §§push(§§pop() + 1);
                  if(_loc13_ || _loc3_)
                  {
                     addr86:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_ || _loc3_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(!_loc14_)
                     {
                        §§push(§§pop() * §use§);
                        if(_loc13_ || this)
                        {
                        }
                        addr120:
                        var _loc8_:Number = §§pop();
                        addr119:
                        §§push(_loc2_[2] - 255);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - _loc1_[2]);
                           if(!_loc14_)
                           {
                              §§push(§§pop() * §use§);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc14_ && _loc1_)
                                 {
                                 }
                                 addr148:
                                 var _loc9_:* = §§pop();
                                 §§push(_loc3_[0] - 255);
                                 if(_loc13_ || this)
                                 {
                                    §§push(§§pop() - _loc1_[0]);
                                    if(_loc13_ || _loc2_)
                                    {
                                       §§push(§use§);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_)
                                          {
                                             addr188:
                                             §§push(§§pop() + 1);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr197:
                                                §§push(§§pop() - _loc7_);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc3_[1] - 255);
                                             if(_loc13_ || _loc2_)
                                             {
                                                §§push(§§pop() - _loc1_[1]);
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(§use§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         addr256:
                                                         §§push(§§pop() + 1);
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            §§push(_loc8_);
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc3_[2] - 255);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() - _loc1_[2]);
                                                            if(!(_loc14_ && this))
                                                            {
                                                               §§push(§use§);
                                                               if(_loc13_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        §§goto(addr295);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  addr295:
                                                                  §§goto(addr296);
                                                               }
                                                               addr296:
                                                               §§push(§§pop() - _loc9_);
                                                               if(_loc13_ || this)
                                                               {
                                                                  addr304:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  this.§&!0§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                  do
                                                                  {
                                                                     this.§5!B§.filters = [this.§&!0§];
                                                                  }
                                                                  while(_loc14_);
                                                                  
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc14_ && _loc1_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr197);
                              }
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr148);
                     }
                     §§push(§§pop() + 1);
                     if(_loc13_)
                     {
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §=A§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!_loc2_)
         {
            §§push(255);
            if(_loc3_ || _loc3_)
            {
               addr51:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc3_ || this)
               {
                  §§goto(addr61);
               }
               §§goto(addr70);
            }
            addr61:
            §§push(255);
            if(_loc3_ || _loc2_)
            {
               addr70:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr51);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&!0§ = null;
            while(true)
            {
               this.§5!B§.filters = [];
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.§5!B§ = null;
            if(_loc2_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
