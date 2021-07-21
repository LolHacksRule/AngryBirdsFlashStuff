package §`",§
{
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §8y§ extends §7!s§
   {
      
      public static const §["3§:Number = 1024;
      
      public static const §7$§:Number = 658;
      
      public static const §4!r§:Number = 55;
      
      public static const §,n§:String = "cubic_in_out";
      
      public static const §%#§:String = "sin_in_out";
      
      public static const §5"§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §["3§ = 1024;
         }
         do
         {
            §7$§ = 658;
            loop1:
            do
            {
               §4!r§ = 55;
               while(true)
               {
                  §,n§ = "cubic_in_out";
                  while(!(_loc2_ && §8y§))
                  {
                     §%#§ = "sin_in_out";
                     while(_loc1_ || §8y§)
                     {
                        §5"§ = "none";
                        if(_loc1_ || §8y§)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(!(_loc1_ || §8y§));
            
         }
         while(!_loc1_);
         
      }
      
      private var §#^§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var §]`§:Boolean = true;
      
      private var §%!G§:String = "cubic_in_out";
      
      public function §8y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§#^§ = param3;
            }
            addr75:
         }
         loop1:
         while(true)
         {
            this.mX = param4;
            loop2:
            while(_loc7_)
            {
               this.mY = param5;
               while(!_loc8_)
               {
                  this.§%!G§ = param6;
                  if(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        return;
                     }
                     continue loop2;
                  }
               }
               continue loop1;
            }
            §§goto(addr75);
         }
      }
      
      public function set §1V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]`§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || param2)
                     {
                        param1 = §§pop();
                        if(_loc6_)
                        {
                           addr52:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr55:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§#^§))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc4_.name == §%!!§.§=[§)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(this.§]`§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§4c§());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() * this.§]"$§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr178:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               addr201:
                                                               §§push(false);
                                                               if(_loc6_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr205:
                                                               return true;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr205);
                                                         addr137:
                                                         addr117:
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   addr135:
                                                   if(false)
                                                   {
                                                   }
                                                   §§goto(addr178);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§4c§());
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(§§pop() * this.§]"$§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   addr177:
                                                }
                                                §§goto(addr137);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() - this.mX);
                                             }
                                             §§pop().x = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr205);
               }
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      private function §]"$§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - this.time);
            if(_loc5_)
            {
               addr30:
               §§push(§§pop() / duration);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§%!G§;
            if(_loc5_ || _loc2_)
            {
               §§push(§,n§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           addr227:
                           §§push(0);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr234:
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        addr252:
                        loop12:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              break;
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(2);
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc5_)
                                                            {
                                                               addr90:
                                                               if(_loc5_ || param1)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr255);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr188:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr189:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr171:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr172:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§push(_loc2_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                                 addr151:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr152:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ || param1))
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                                                          §§goto(addr113);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break loop12;
                                                            }
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr90);
                                    }
                                    §§goto(addr188);
                                 }
                                 addr113:
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop8;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr255);
                           default:
                              addr255:
                              return §§pop();
                        }
                        §§push(_loc2_);
                        continue loop11;
                     }
                     addr233:
                     if(§%#§ === _loc3_)
                     {
                        §§goto(addr234);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr252);
                     §§goto(addr234);
                  }
               }
               §§goto(addr233);
            }
            §§goto(addr227);
         }
         §§goto(addr30);
      }
      
      protected function §4c§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]`§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.§",§);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr81);
                  }
                  §§goto(addr74);
               }
               else
               {
                  addr75:
                  §§push(this.§%"0§);
                  if(!_loc1_)
                  {
                     §§goto(addr79);
                  }
               }
               addr81:
               §§push(§["3§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     addr74:
                     return §§pop();
                  }
                  addr79:
                  §§push(§7$§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr75);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§",§ = param1;
         }
         do
         {
            this.§%"0§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §7!s§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8y§ = new §8y§(time,duration,this.§#^§,this.mX,this.mY,this.§%!G§);
         if(_loc2_)
         {
            _loc1_.§",§ = this.§",§;
            while(true)
            {
               _loc1_.§%"0§ = this.§%"0§;
               while(_loc2_ || this)
               {
                  _loc1_.§]`§ = this.§]`§;
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return _loc1_;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
   }
}
