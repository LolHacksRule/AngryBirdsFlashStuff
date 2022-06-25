package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §@!l§ extends §?!t§
   {
      
      public static const §!"#§:Number = 1024;
      
      public static const §8p§:Number = 658;
      
      public static const §>!;§:Number = 55;
      
      public static const §%k§:String = "cubic_in_out";
      
      public static const §2!w§:String = "sin_in_out";
      
      public static const §3!@§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!"#§ = 1024;
            while(true)
            {
               §8p§ = 658;
               addr86:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            §>!;§ = 55;
            loop3:
            while(true)
            {
               §%k§ = "cubic_in_out";
               while(true)
               {
                  §2!w§ = "sin_in_out";
                  while(!_loc1_)
                  {
                     continue loop3;
                     §3!@§ = "none";
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        return;
                     }
                     §§goto(addr86);
                  }
               }
            }
         }
      }
      
      private var §]X§:String;
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §]z§:Boolean = true;
      
      private var §;!L§:String = "cubic_in_out";
      
      public function §@!l§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§]X§ = param3;
               loop1:
               while(true)
               {
                  this.§#!!§ = param4;
                  loop2:
                  while(_loc8_)
                  {
                     this.§!!3§ = param5;
                     loop3:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§;!L§ = param6;
                           if(_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function set §+!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]z§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc5_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr39:
                        param1 = §§pop();
                        if(_loc6_ || this)
                        {
                           addr47:
                           §§push(param1);
                           if(_loc6_ || param3)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    addr60:
                                    if(_loc4_ = param2.getChildByName(this.§]X§))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_.name == §1$§.§3t§)
                                          {
                                             if(_loc6_)
                                             {
                                                addr77:
                                                if(this.§]z§)
                                                {
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§[]§());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() * this.§]!Q§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         do
                                                         {
                                                            §§push(_loc4_);
                                                            §§push(_loc4_.y);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(§§pop() - this.§!!3§);
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                         while(!_loc6_);
                                                         
                                                         if(!_loc5_)
                                                         {
                                                            addr137:
                                                            if(false)
                                                            {
                                                            }
                                                            addr183:
                                                            if(param1 >= this.time + duration)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr191:
                                                                  §§push(false);
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr200:
                                                                  return true;
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         else
                                                         {
                                                            addr182:
                                                         }
                                                         addr155:
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§[]§());
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§push(§§pop() * this.§]!Q§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() - this.§#!!§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr137);
                           }
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr191);
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr60);
      }
      
      private function §]!Q§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc5_ || _loc3_)
            {
               addr30:
               §§push(§§pop() / duration);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§;!L§;
            if(!_loc4_)
            {
               §§push(§%k§);
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!(_loc5_ || _loc2_))
                           {
                              addr257:
                           }
                        }
                        else
                        {
                           addr249:
                           §§push(1);
                           if(_loc5_ || _loc2_)
                           {
                              §§goto(addr257);
                           }
                        }
                        addr262:
                        loop10:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(2);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr203:
                                    addr160:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    while(true)
                                    {
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop() - §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr169:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   break loop10;
                                                }
                                                §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                while(true)
                                                {
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr204:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr178:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr189);
                              }
                              addr132:
                              return §§pop();
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!_loc4_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(-§§pop());
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr62:
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr160);
                                          }
                                          addr189:
                                          return Math.pow(_loc2_,3) / 2;
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr62);
                        }
                        addr265:
                        return §§pop();
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr247:
                        §§push(§2!w§);
                        §§push(_loc3_);
                     }
                     §§goto(addr249);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr249);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr262);
               }
               §§goto(addr247);
            }
            §§goto(addr249);
         }
         §§goto(addr30);
      }
      
      protected function §[]§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§]z§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr53:
                  §§push(this.§3!8§);
                  if(!_loc2_)
                  {
                     §§push(§!"#§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc1_ || this)
                        {
                           return §§pop();
                        }
                        addr78:
                        §§push(§8p§);
                     }
                     return §§pop() - §§pop();
                  }
               }
               else
               {
                  addr69:
                  §§push(this.§0!Q§);
                  if(_loc1_ || this)
                  {
                     §§goto(addr78);
                  }
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr53);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3!8§ = param1;
            do
            {
               this.§0!Q§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      override public function clone() : §?!t§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@!l§ = new §@!l§(time,duration,this.§]X§,this.§#!!§,this.§!!3§,this.§;!L§);
         if(!(_loc3_ && this))
         {
            _loc1_.§3!8§ = this.§3!8§;
            do
            {
               _loc1_.§0!Q§ = this.§0!Q§;
               do
               {
                  _loc1_.§]z§ = this.§]z§;
               }
               while(_loc3_ && _loc3_);
               
            }
            while(!_loc2_);
            
         }
         return _loc1_;
      }
   }
}
