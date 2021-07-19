package §4;§
{
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §8"%§ extends §^g§
   {
      
      public static const §7!H§:Number = 1024;
      
      public static const §<"P§:Number = 658;
      
      public static const §4<§:Number = 55;
      
      public static const §-"O§:String = "cubic_in_out";
      
      public static const §!f§:String = "sin_in_out";
      
      public static const §9!,§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7!H§ = 1024;
            while(true)
            {
               §<"P§ = 658;
               addr92:
               while(true)
               {
                  §4<§ = 55;
               }
               addr68:
               if(!(_loc1_ || §8"%§))
               {
                  continue;
               }
               §9!,§ = "none";
               addr75:
               if(_loc1_)
               {
                  addr44:
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        §-"O§ = "cubic_in_out";
                        while(_loc1_)
                        {
                           §!f§ = "sin_in_out";
                           while(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr68);
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr92);
                        §§goto(addr44);
                     }
                     addr87:
                  }
                  return;
               }
               §§goto(addr51);
            }
         }
         §§goto(addr87);
      }
      
      private var §@i§:String;
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §0J§:Boolean = true;
      
      private var §'!'§:String = "cubic_in_out";
      
      public function §8"%§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§@i§ = param3;
               loop1:
               while(true)
               {
                  this.§4!K§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§7!#§ = param5;
                     loop3:
                     while(_loc8_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§'!'§ = param6;
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function set §!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0J§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || this)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param1))
                     {
                        param1 = §§pop();
                        if(_loc5_ && param2)
                        {
                        }
                        addr80:
                        if(_loc4_ = param2.getChildByName(this.§@i§))
                        {
                           if(_loc6_)
                           {
                              if(_loc4_.name == §+!$§.§&!"§)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(this.§0J§)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          addr122:
                                          §§push(_loc4_);
                                          §§push(this.§#^§());
                                          if(_loc6_ || param3)
                                          {
                                             §§push(-§§pop());
                                             if(_loc6_ || this)
                                             {
                                                addr140:
                                                §§push(§§pop() * this.§9,§(param1));
                                             }
                                             §§pop().x = §§pop();
                                             if(_loc6_ || param1)
                                             {
                                                addr203:
                                                if(param1 >= this.time + duration)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr211:
                                                      §§push(false);
                                                      if(_loc6_ || param2)
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
                                                addr167:
                                             }
                                             else
                                             {
                                                addr165:
                                                if(false)
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr140);
                                       }
                                       else
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§7!#§);
                                             }
                                             §§pop().y = §§pop();
                                             if(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break loop0;
                                                   }
                                                   addr202:
                                                   continue loop0;
                                                }
                                                addr178:
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§#^§());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * this.§9,§(param1));
                                       }
                                       §§pop().y = §§pop();
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.x);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() - this.§4!K§);
                                 }
                                 §§pop().x = §§pop();
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr203);
                     }
                     addr70:
                     if(§§pop() > this.time)
                     {
                        if(_loc6_ || param3)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr203);
                  }
               }
               §§push(param1);
               if(_loc6_)
               {
                  §§goto(addr70);
               }
               §§goto(addr203);
            }
            §§goto(addr70);
         }
         §§goto(addr80);
      }
      
      private function §9,§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - this.time);
            if(_loc5_)
            {
               §§push(§§pop() / duration);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = this.§'!'§;
         if(_loc5_)
         {
            §§push(§-"O§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc3_);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr232:
                        §§push(0);
                        if(_loc4_)
                        {
                           addr242:
                        }
                     }
                     else
                     {
                        addr239:
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr242);
                        }
                     }
                     addr247:
                     loop12:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(_loc2_);
                           while(true)
                           {
                              §§push(2);
                              addr192:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop1:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr194:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§push(_loc2_);
                                       continue loop1;
                                    }
                                 }
                              }
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              §§push(1);
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       return Math.pow(_loc2_,3) / 2;
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr132);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 addr132:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc5_ || param1)
                                    {
                                       break loop12;
                                    }
                                    addr150:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop4;
                                    }
                                 }
                                 addr159:
                                 §§push((Math.pow(_loc2_,3) + 2) / 2);
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                                 return §§pop();
                                 break loop12;
                              }
                           }
                           break;
                        case 1:
                           §§push(Math.cos(Math.PI * _loc2_) - 1);
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(-§§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr69:
                                       §§push(2);
                                       if(!(_loc4_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr87:
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr159);
                                             }
                                             else
                                             {
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       break;
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr69);
                        default:
                           addr250:
                           return §§pop();
                     }
                     §§push(_loc2_);
                     continue loop11;
                  }
                  addr238:
                  if(§!f§ === _loc3_)
                  {
                     §§goto(addr239);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr247);
                  §§goto(addr239);
               }
            }
            §§goto(addr238);
         }
         §§goto(addr232);
      }
      
      protected function §#^§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§0J§)
            {
               if(!_loc2_)
               {
                  addr48:
                  §§push(this.§,>§);
                  if(_loc1_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr58);
               }
               else
               {
                  addr59:
                  §§push(this.§`;§);
                  if(_loc1_ || this)
                  {
                     §§goto(addr68);
                  }
               }
               addr70:
               §§push(§7!H§);
               if(!_loc2_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     addr58:
                     return §§pop();
                  }
                  addr68:
                  §§push(§<"P§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr48);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§,>§ = param1;
         }
         do
         {
            this.§`;§ = param2;
         }
         while(!_loc4_);
         
      }
      
      override public function clone() : §^g§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8"%§ = new §8"%§(time,duration,this.§@i§,this.§4!K§,this.§7!#§,this.§'!'§);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§,>§ = this.§,>§;
         }
         while(true)
         {
            _loc1_.§`;§ = this.§`;§;
            while(_loc3_)
            {
               _loc1_.§0J§ = this.§0J§;
               if(_loc3_ || _loc1_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
