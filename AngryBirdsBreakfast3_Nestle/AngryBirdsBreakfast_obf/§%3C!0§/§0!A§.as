package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §0!A§ extends §=!?§
   {
      
      public static const §3z§:Number = 1024;
      
      public static const §`!,§:Number = 658;
      
      public static const § ]§:Number = 55;
      
      public static const §"L§:String = "cubic_in_out";
      
      public static const §^!1§:String = "sin_in_out";
      
      public static const §-0§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3z§ = 1024;
            while(true)
            {
               §`!,§ = 658;
               while(true)
               {
                  § ]§ = 55;
                  addr71:
                  while(_loc2_)
                  {
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §"L§ = "cubic_in_out";
            loop4:
            for(; !_loc1_; if(!(_loc1_ && _loc1_))
            {
               return;
            })
            {
               §^!1§ = "sin_in_out";
               while(_loc2_)
               {
                  §-0§ = "none";
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop4;
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr71);
         }
      }
      
      private var §`]§:String;
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §4q§:Boolean = true;
      
      private var §#!-§:String = "cubic_in_out";
      
      public function §0!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§`]§ = param3;
            loop1:
            do
            {
               this.§]!B§ = param4;
               while(true)
               {
                  this.§9=§ = param5;
                  while(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        this.§#!-§ = param6;
                        if(_loc7_ || param2)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(_loc8_ && param3);
            
            return;
         }
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4q§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param3))
                     {
                        addr59:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr62:
                           §§push(param1);
                           if(!(_loc5_ && param1))
                           {
                              addr70:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    addr80:
                                    if(_loc4_ = param2.getChildByName(this.§`]§))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_.name == §%C§.§<!'§)
                                          {
                                             if(_loc6_)
                                             {
                                                if(this.§4q§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§&!&§());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            addr130:
                                                            §§push(§§pop() * this.§56§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr142:
                                                         }
                                                         else
                                                         {
                                                            addr192:
                                                         }
                                                         addr193:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr201:
                                                               §§push(false);
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr220:
                                                               return true;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr220);
                                                         addr159:
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§&!&§());
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() * this.§56§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() - this.§]!B§);
                                             }
                                             §§pop().x = §§pop();
                                             do
                                             {
                                                §§push(_loc4_);
                                                §§push(_loc4_.y);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - this.§9=§);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             while(!_loc6_);
                                             
                                             if(_loc6_)
                                             {
                                                if(false)
                                                {
                                                }
                                                §§goto(addr193);
                                             }
                                             else
                                             {
                                                §§goto(addr192);
                                             }
                                             addr175:
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr201);
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr80);
               }
               §§goto(addr62);
            }
            §§goto(addr59);
         }
         §§goto(addr80);
      }
      
      private function §56§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc5_)
            {
               addr25:
               §§push(§§pop() / duration);
               if(_loc5_ || param1)
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§#!-§;
               if(_loc5_ || param1)
               {
                  §§push(§"L§);
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                              }
                           }
                           else
                           {
                              addr224:
                              §§push(1);
                              if(!_loc5_)
                              {
                              }
                           }
                           addr242:
                           loop13:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(_loc2_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(2);
                                    addr182:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop1:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop2:
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
                                                   addr158:
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(Math.pow(_loc2_,3) / 2);
                                                            while(true)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  break loop2;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr167:
                                                         }
                                                         else if(_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      §§push(_loc2_);
                                                      continue loop4;
                                                   }
                                                }
                                                §§push(2);
                                                addr145:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr146:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(_loc4_)
                                                         {
                                                            break loop13;
                                                         }
                                                         §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          return §§pop();
                                       }
                                    }
                                 }
                                 break;
                              case 1:
                                 §§push(Math.cos(Math.PI * _loc2_) - 1);
                                 if(!_loc4_)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(-§§pop());
                                          if(_loc5_ || this)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(2);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr245);
                           }
                           addr245:
                           return §§pop();
                           §§push(_loc2_);
                        }
                        else
                        {
                           addr222:
                           §§push(§^!1§);
                           §§push(_loc3_);
                        }
                        §§goto(addr224);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr224);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr222);
               }
               §§goto(addr224);
            }
            §§goto(addr34);
         }
         §§goto(addr25);
      }
      
      protected function §&!&§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§4q§)
            {
               if(_loc1_)
               {
                  §§goto(addr23);
               }
               else
               {
                  addr49:
                  §§push(this.§2!y§);
                  if(_loc1_ || this)
                  {
                     §§goto(addr69);
                     §§push(§`!,§);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr49);
         }
         addr23:
         §§push(this.§!a§);
         if(!_loc2_)
         {
            §§push(§3z§);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc1_ || _loc2_))
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
         if(_loc3_ || _loc3_)
         {
            this.§!a§ = param1;
         }
         do
         {
            this.§2!y§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §=!?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0!A§ = new §0!A§(time,duration,this.§`]§,this.§]!B§,this.§9=§,this.§#!-§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§!a§ = this.§!a§;
         }
         do
         {
            _loc1_.§2!y§ = this.§2!y§;
            do
            {
               _loc1_.§4q§ = this.§4q§;
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_ && _loc3_);
         
         return _loc1_;
      }
   }
}
