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
         if(_loc2_)
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
         if(_loc6_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§5!B§ = param1;
               addr100:
               while(true)
               {
                  this.§&!0§ = new ColorMatrixFilter();
                  continue loop0;
               }
            }
         }
         loop4:
         while(true)
         {
            this.§!A§ = param4;
            while(true)
            {
               if(!(_loc5_ && param3))
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop4;
            }
            §§goto(addr80);
         }
      }
      
      public function set §3f§(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
         if(!_loc2_)
         {
            this.§9R§ = param1;
            do
            {
               this.§@!k§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§9R§;
      }
      
      public function set §@T§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!w§ = param1;
            do
            {
               this.§@!k§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function get §@T§() : uint
      {
         return this.§6!w§;
      }
      
      public function set §""!§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!A§ = param1;
         }
         do
         {
            this.§@!k§();
         }
         while(_loc3_);
         
      }
      
      public function get §""!§() : uint
      {
         return this.§!A§;
      }
      
      private function §@!k§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || _loc3_)
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
         if(_loc14_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(!(_loc13_ && this))
            {
               §§push(§§pop() * §use§);
               if(_loc14_ || _loc2_)
               {
                  addr88:
                  §§push(§§pop() + 1);
                  if(_loc13_ && _loc3_)
                  {
                  }
                  addr98:
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(!(_loc13_ && this))
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(!(_loc13_ && _loc2_))
                     {
                        §§push(§§pop() * §use§);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                           if(!_loc13_)
                           {
                              addr135:
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc8_:* = §§pop();
                     §§push(_loc2_[2] - 255);
                     if(!(_loc13_ && _loc2_))
                     {
                        §§push(§§pop() - _loc1_[2]);
                        if(_loc14_ || _loc1_)
                        {
                           §§push(§§pop() * §use§);
                           if(!_loc13_)
                           {
                              addr164:
                              §§push(§§pop() + 1);
                              if(_loc14_)
                              {
                                 addr168:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc3_[0] - 255);
                           if(_loc14_ || this)
                           {
                              §§push(§§pop() - _loc1_[0]);
                              if(_loc14_)
                              {
                                 §§push(§use§);
                                 if(_loc14_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc14_ || this)
                                    {
                                    }
                                    §§goto(addr233);
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc13_ && _loc1_))
                                 {
                                    addr232:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              addr233:
                              §§push(§§pop() + 1);
                              if(!(_loc13_ && this))
                              {
                                 §§push(_loc7_);
                              }
                              var _loc10_:* = §§pop();
                              §§push(_loc3_[1] - 255);
                              if(_loc14_)
                              {
                                 §§push(§§pop() - _loc1_[1]);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§use§);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc14_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr281);
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr281);
                                 }
                              }
                              addr281:
                              §§push(§§pop() + 1);
                              if(_loc14_ || this)
                              {
                                 §§push(_loc8_);
                              }
                              var _loc11_:Number = §§pop();
                              §§push(_loc3_[2] - 255);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() - _loc1_[2]);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§use§);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc13_ && _loc1_))
                                       {
                                          §§goto(addr317);
                                       }
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr325);
                              }
                              addr317:
                              §§push(§§pop() + 1);
                              if(_loc14_)
                              {
                                 addr321:
                                 §§push(§§pop() - _loc9_);
                                 if(_loc14_)
                                 {
                                    addr325:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc12_:* = §§pop();
                              if(!_loc13_)
                              {
                                 this.§&!0§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                 do
                                 {
                                    this.§5!B§.filters = [this.§&!0§];
                                 }
                                 while(_loc13_);
                                 
                              }
                              return;
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr135);
               }
               §§goto(addr98);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr88);
      }
      
      private function §=A§(param1:uint) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!_loc3_)
         {
            §§push(255);
            if(!_loc3_)
            {
               addr35:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(_loc2_)
               {
                  §§goto(addr40);
               }
               §§goto(addr49);
            }
            addr40:
            §§push(255);
            if(_loc2_ || this)
            {
               addr49:
               §§push(§§pop() & §§pop());
               §§push(param1 & 255);
            }
            return null;
         }
         §§goto(addr35);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!0§ = null;
            while(true)
            {
               this.§5!B§.filters = [];
               while(!(_loc1_ && this))
               {
                  this.§5!B§ = null;
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
   }
}
