package §?_§
{
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §?!'§ extends §3'§
   {
      
      public static const §?[§:Number = 1024;
      
      public static const §3!h§:Number = 658;
      
      public static const §&!9§:Number = 55;
      
      public static const §%!X§:String = "cubic_in_out";
      
      public static const §,!P§:String = "sin_in_out";
      
      public static const final:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?[§ = 1024;
            while(true)
            {
               §3!h§ = 658;
               addr75:
               while(_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §&!9§ = 55;
            loop3:
            for(; _loc1_; if(_loc1_)
            {
               return;
            })
            {
               §%!X§ = "cubic_in_out";
               while(true)
               {
                  §,!P§ = "sin_in_out";
                  while(!_loc2_)
                  {
                     final = "none";
                     if(!_loc2_)
                     {
                        continue loop3;
                     }
                  }
               }
            }
            §§goto(addr75);
         }
      }
      
      private var §6K§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §@I§:Boolean = true;
      
      private var §!k§:String = "cubic_in_out";
      
      public function §?!'§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§6K§ = param3;
               addr59:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               this.§!k§ = param6;
               addr66:
               if(_loc8_)
               {
                  addr30:
                  if(_loc7_ && param1)
                  {
                     while(true)
                     {
                        this.§""4§ = param4;
                        while(true)
                        {
                           this.§%W§ = param5;
                           addr52:
                           while(!(_loc7_ && param3))
                           {
                              §§goto(addr59);
                              §§goto(addr66);
                           }
                        }
                        §§goto(addr30);
                     }
                     addr86:
                  }
                  return;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr86);
      }
      
      public function set §?!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@I§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr57:
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§6K§))
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc4_.name == §5"!§.§!#§)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                addr97:
                                                if(this.§@I§)
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§8§());
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() * this.§?!=§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc5_ && param3)
                                                      {
                                                         addr197:
                                                      }
                                                      addr198:
                                                      if(param1 >= this.time + duration)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr206:
                                                            §§push(false);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr225:
                                                            return true;
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr225);
                                                      addr174:
                                                   }
                                                   else
                                                   {
                                                      addr172:
                                                      if(false)
                                                      {
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§8§());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * this.§?!=§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                do
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.y);
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§push(§§pop() - this.§%W§);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                while(_loc5_);
                                                
                                                if(_loc6_ || param1)
                                                {
                                                   §§goto(addr172);
                                                }
                                                else
                                                {
                                                   §§goto(addr197);
                                                }
                                                addr185:
                                             }
                                             §§goto(addr197);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() - this.§""4§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr97);
                                    }
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr225);
               }
               §§goto(addr57);
            }
            §§goto(addr198);
         }
         §§goto(addr57);
      }
      
      private function §?!=§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               §§push(§§pop() / duration);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = this.§!k§;
         if(!(_loc5_ && _loc2_))
         {
            §§push(§%!X§);
            if(!(_loc5_ && this))
            {
               §§push(_loc3_);
               if(_loc4_ || this)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        addr231:
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr238:
                        §§push(1);
                        if(_loc5_ && _loc3_)
                        {
                        }
                     }
                     §§goto(addr261);
                  }
                  else
                  {
                     §§goto(addr237);
                  }
               }
               §§goto(addr237);
            }
            addr237:
            if(§,!P§ === _loc3_)
            {
               §§goto(addr238);
            }
            else
            {
               §§push(2);
            }
            addr261:
            loop7:
            switch(§§pop())
            {
               case 0:
                  §§push(_loc2_);
                  if(!(_loc5_ && this))
                  {
                     §§push(2);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(_loc4_ || param1)
                           {
                              _loc2_ = §§pop();
                              §§push(_loc2_);
                              while(true)
                              {
                                 §§push(1);
                                 addr162:
                                 while(§§pop() >= §§pop())
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       §§push(2);
                                       addr135:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc4_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          while(true)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                      if(!_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop7;
                                                   }
                                                   break loop1;
                                                }
                                                addr263:
                                                §§push(_loc2_);
                                                break loop7;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 break loop1;
                              }
                              addr161:
                           }
                           break loop7;
                        }
                        §§goto(addr169);
                     }
                  }
                  break;
               case 1:
                  §§push(Math.cos(Math.PI * _loc2_) - 1);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           §§push(-§§pop());
                           if(!_loc5_)
                           {
                              addr68:
                              §§push(2);
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr134);
                                    }
                                    break;
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr135);
                           }
                           break;
                        }
                        addr169:
                        return Math.pow(_loc2_,3) / 2;
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr68);
               default:
                  §§goto(addr263);
            }
            return §§pop();
         }
         §§goto(addr231);
      }
      
      protected function §8§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§@I§)
            {
               if(!_loc2_)
               {
                  §§goto(addr23);
               }
               else
               {
                  addr64:
                  §§push(this.§8>§);
                  if(!_loc2_)
                  {
                     §§goto(addr69);
                     §§push(§3!h§);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr64);
         }
         addr23:
         §§push(this.§<!f§);
         if(!_loc2_)
         {
            §§push(§?[§);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc1_ || this))
               {
                  §§goto(addr70);
               }
            }
            else
            {
               addr69:
               addr70:
               return §§pop();
               §§push(§§pop() - §§pop());
            }
            §§goto(addr70);
         }
         return §§pop();
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§<!f§ = param1;
         }
         do
         {
            this.§8>§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §3'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?!'§ = new §?!'§(time,duration,this.§6K§,this.§""4§,this.§%W§,this.§!k§);
         if(!(_loc2_ && this))
         {
            _loc1_.§<!f§ = this.§<!f§;
         }
         do
         {
            _loc1_.§8>§ = this.§8>§;
            do
            {
               _loc1_.§@I§ = this.§@I§;
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
         return _loc1_;
      }
   }
}
