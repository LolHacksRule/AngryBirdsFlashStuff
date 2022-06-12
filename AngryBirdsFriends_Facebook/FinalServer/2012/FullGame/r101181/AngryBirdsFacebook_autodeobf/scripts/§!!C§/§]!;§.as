package §!!C§
{
   import §<a§.§!!m§;
   import §]!>§.§"!w§;
   import §]!>§.§#"1§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import §]!>§.§>+§;
   import §]!>§.§@"+§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §]!;§ extends §=!S§
   {
      
      public static var §-!k§:§#"1§;
      
      public static var §!!"§:Array;
      
      private static var § "4§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!"§ = [];
            do
            {
               § "4§ = {};
            }
            while(_loc1_);
            
         }
      }
      
      protected var §"S§:String;
      
      protected var §]!e§:String;
      
      protected var §;_§:Boolean = false;
      
      protected var §`Q§:int = -1;
      
      private var §6!S§:int = 0;
      
      public function §]!;§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§"S§ = param1;
            while(true)
            {
               this.§]!e§ = param2;
               loop1:
               while(_loc7_ || param2)
               {
                  this.§;_§ = param4;
                  while(true)
                  {
                     super(param3);
                     loop3:
                     while(_loc7_ || this)
                     {
                        while(true)
                        {
                           if(!param5)
                           {
                              §%!e§(0,0);
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr75:
                                 §7"F§ = new §#!^§(0,param5.items.length,new URLLoader(),null);
                                 while(true)
                                 {
                                    this.dataLoaded(param5);
                                 }
                                 addr86:
                              }
                              while(_loc6_ && param3)
                              {
                                 §§goto(addr86);
                              }
                              if(_loc6_ && this)
                              {
                                 continue loop3;
                              }
                              §§goto(addr20);
                              continue loop3;
                           }
                           §§goto(addr75);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function §<T§(param1:String) : String
      {
         return § "4§[param1];
      }
      
      public function get §%!=§() : int
      {
         return this.§6!S§;
      }
      
      public function get §8"?§() : int
      {
         return this.§`Q§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§@"+§ = null;
         var _loc5_:§#"1§ = null;
         param1 = §"!w§.§1!C§(param1,"items",param1.level);
         var _loc3_:Object = {"items":[]};
         if(!(_loc8_ && _loc3_))
         {
            this.§`Q§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_ || _loc3_)
            {
               §§push(0);
               if(!(_loc8_ && this))
               {
                  if(§§pop() < §§pop())
                  {
                     addr468:
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(this.§`Q§);
                        break;
                     }
                     super.dataLoaded(_loc3_);
                  }
                  else
                  {
                     §!H§.§^!;§(new §^!b§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(!_loc8_)
                     {
                        §§push((_loc5_ = §#"1§.§!!t§(param1.items[_loc4_])) is §;!e§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_ || param1)
                                 {
                                    addr94:
                                    §§pop();
                                    if(_loc9_ || param1)
                                    {
                                       §§push(§!!"§);
                                       if(!_loc8_)
                                       {
                                          §§push(_loc5_.userId);
                                          if(_loc9_ || this)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(!_loc8_)
                                             {
                                                addr119:
                                                §§push(!§§pop());
                                                if(!_loc8_)
                                                {
                                                   addr122:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         addr130:
                                                         var _loc6_:*;
                                                         §§push((_loc6_ = this).§`Q§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc7_:* = §§pop();
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            _loc6_.§`Q§ = _loc7_;
                                                         }
                                                         if(_loc8_ && this)
                                                         {
                                                            addr304:
                                                            § "4§[_loc5_.userId] = _loc5_.avatarString;
                                                            if(_loc8_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            addr317:
                                                            _loc3_.items.unshift(_loc5_);
                                                            if(!_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            this.§`Q§ = _loc4_;
                                                            if(!_loc8_)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §-!k§ = _loc5_;
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_ is §;!e§);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr176:
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc8_ && param1)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(_loc5_ as §@"+§);
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             addr299:
                                                                                             if(_loc5_.avatarString)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                }
                                                                                                break loop3;
                                                                                             }
                                                                                             break loop3;
                                                                                          }
                                                                                          §§goto(addr304);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          addr289:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr290:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr292:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§!!"§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_.userId);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr265:
                                                                                                                  §§push(§§pop().indexOf(§§pop()) == -1);
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              §§push(§!!"§);
                                                                                                                              break loop6;
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                        addr236:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.userId);
                                                                                                                           if(_loc9_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop() == this.§"S§)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    break loop5;
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§goto(addr299);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr265);
                                                                                                                  }
                                                                                                                  addr268:
                                                                                                               }
                                                                                                               addr282:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().push(§§pop());
                                                                                                                  addr283:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr236);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr261:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr282);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       addr288:
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           addr323:
                                                                           §§push(_loc4_);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §;!e§);
                                                   }
                                                }
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr282);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        addr363:
                        §§push(this);
                        if(!_loc8_)
                        {
                           if(_loc2_)
                           {
                              addr368:
                              §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                              if(!_loc9_)
                              {
                              }
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§pop().§`Q§ = §§pop();
                           if(!(_loc8_ && this))
                           {
                              _loc3_.items.splice(this.§`Q§,0,this.§9"0§(_loc2_));
                              if(_loc9_)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    addr405:
                                    while(true)
                                    {
                                       _loc3_.totalItemCount = _loc3_.items.length;
                                       while(true)
                                       {
                                          this.§6!S§ = §!!"§.length;
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(§!!"§.indexOf(this.§"S§) >= 0)
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr446:
                                                         §§push((_loc6_ = this).§6!S§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            _loc6_.§6!S§ = _loc7_;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr468);
                                                }
                                                addr471:
                                                return;
                                                addr402:
                                             }
                                             continue;
                                          }
                                          §§goto(addr471);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr471);
                           }
                           §§goto(addr446);
                        }
                        §§goto(addr368);
                     }
                  }
                  §§goto(addr471);
               }
               addr355:
               if(§§pop() < §§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§goto(addr363);
                  }
                  §§goto(addr402);
               }
               §§goto(addr405);
            }
            break;
         }
         §§goto(addr355);
         §§push(0);
      }
      
      public function §9"0§(param1:§@"+§) : §@"+§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§;_§)
         {
            §§push(§§findproperty(§>+§));
            §§push(this.§"S§);
            §§push(this.§]!e§);
            if(_loc2_)
            {
               §§push(§-!k§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr36:
                     §§push(§-!k§.avatarString);
                     if(!(_loc3_ && param1))
                     {
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(0);
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(param1)
                     {
                        addr58:
                        §§push(param1.§9!Y§);
                        if(_loc2_)
                        {
                           §§push(int(§§pop() + 1));
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     return new §§pop().§>+§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr36);
         }
         else
         {
            §§push(§§findproperty(§2!W§));
            §§push(this.§"S§);
            §§push(this.§]!e§);
            if(_loc2_ || _loc3_)
            {
               §§push(§-!k§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr104:
                     §§push(§-!k§.avatarString);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(0);
                  §§push(0);
                  §§push(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(param1)
                     {
                        addr132:
                        §§push(param1.§9!Y§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(int(§§pop() + 1));
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     return new §§pop().§2!W§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr104);
         }
      }
      
      public function §+[§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() >= data.length)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     if(_loc4_ || this)
                     {
                        §§goto(addr66);
                     }
                     loop1:
                     while(true)
                     {
                        §§push((data[_loc2_] as §@"+§).userId == param1);
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(!(_loc4_ || this))
                           {
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr132:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr131:
                           }
                           break;
                        }
                        §§goto(addr132);
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     addr76:
                     _loc2_++;
                     continue;
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(data[_loc2_] is §;!e§);
               }
               §§goto(addr131);
            }
            addr66:
            §§push(-1);
            if(!(_loc3_ && _loc3_))
            {
               return §§pop();
            }
            addr122:
            return §§pop();
         }
         §§goto(addr122);
         §§push((data[_loc2_] as §@"+§).§9!Y§);
      }
      
      public function §4!X§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= data.length)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(!_loc4_)
                     {
                        loop2:
                        while(_loc3_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push((data[_loc2_] as §2!W§).§9!Y§ == 2);
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr112:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop3;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop3;
                                             }
                                          }
                                       }
                                       addr111:
                                    }
                                    break;
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr114);
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr100);
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           _loc2_++;
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§push(data[_loc2_] is §;!e§);
                  §§goto(addr111);
               }
               addr100:
               return (data[_loc2_] as §2!W§).§ "3§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §>"D§(param1:Number) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!data)
            {
               if(_loc4_ || param1)
               {
                  addr27:
                  §§push(null);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push(null);
               }
               var _loc2_:Object = §§pop();
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(true)
                  {
                     if(§§pop() < data.length)
                     {
                        §§push((data[_loc3_] as §2!W§).userId == this.§"S§);
                        if(_loc4_ || param1)
                        {
                           §§push(!§§pop());
                        }
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(data[_loc3_] is §;!e§);
                                       if(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc4_)
                                                            {
                                                               §§push(Boolean(this.§"S§));
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr161:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     _loc3_++;
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                     addr51:
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr60);
                                                            }
                                                            break;
                                                         }
                                                         addr181:
                                                         return _loc2_;
                                                         addr107:
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr107);
                                       addr77:
                                       if(false)
                                       {
                                          continue;
                                       }
                                       §§push((data[_loc3_] as §2!W§).§ "3§);
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr161);
                                       §§push(§§pop() > param1);
                                    }
                                 }
                                 _loc2_ = data[_loc3_];
                                 §§goto(addr161);
                              }
                              §§goto(addr100);
                           }
                        }
                     }
                     §§goto(addr181);
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr27);
      }
      
      public function §3"=§() : §2!W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(!data);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        addr44:
                        if(data.length == 0)
                        {
                           if(!_loc3_)
                           {
                              return null;
                           }
                        }
                     }
                     §§push(this.§+[§(this.§"S§));
                     if(!(_loc3_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc1_);
                        if(_loc4_ || this)
                        {
                           §§push(1);
                           if(_loc4_ || _loc1_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    return null;
                                 }
                                 §§goto(addr107);
                              }
                              addr107:
                              §§goto(addr123);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(int(data.length + 1));
                                 if(_loc4_)
                                 {
                                    _loc1_ = §§pop();
                                 }
                                 addr123:
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    §§push(-1);
                                 }
                                 var _loc2_:* = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    if(_loc2_ >= data.length)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          break;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr150:
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                addr187:
                                                loop3:
                                                while(true)
                                                {
                                                   §§push((data[_loc2_] as §2!W§).§9!Y§ == _loc1_ - 1);
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr205:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop3;
                                                   }
                                                }
                                                while(!§§pop())
                                                {
                                                   continue loop4;
                                                   §§goto(addr206);
                                                }
                                                addr206:
                                             }
                                             return data[_loc2_];
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(data[_loc2_] is §2!W§);
                                       if(_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr205);
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                                 return null;
                              }
                           }
                           §§push(0);
                        }
                     }
                     §§goto(addr107);
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      override protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var e:Event = param1;
         try
         {
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§!!m§.§4H§);
         }
      }
      
      public function §&]§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§2!W§ = null;
         var _loc5_:§2!W§;
         if(!(_loc5_ = data[this.§`Q§]))
         {
            if(_loc10_ || param2)
            {
               §§push(0);
               if(_loc10_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr66:
               _loc5_.stars = param2;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     _loc5_.§ "3§ = param1;
                     while(_loc10_)
                     {
                        _loc5_.§69§ = param3;
                        if(_loc10_ || param1)
                        {
                           if(true)
                           {
                              break loop3;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
            }
            var _loc6_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() >= 0)
               {
                  if(data[_loc6_] is §;!e§)
                  {
                     if(!_loc10_)
                     {
                        continue loop0;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§"S§)
                  {
                     if(!(_loc10_ || param3))
                     {
                        addr288:
                     }
                  }
                  else if(_loc7_.§9!Y§ <= _loc5_.§9!Y§)
                  {
                     if(_loc10_)
                     {
                        §§push(_loc5_.§ "3§);
                        if(_loc10_ || param1)
                        {
                           §§push(_loc7_.§ "3§);
                           if(_loc10_ || param3)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                                 if(_loc10_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc5_.§ "3§);
                                             if(_loc10_)
                                             {
                                                §§push(_loc7_.§ "3§);
                                                if(_loc10_)
                                                {
                                                   addr169:
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr173:
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_ || param2)
                                                         {
                                                            addr181:
                                                            §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               addr189:
                                                               if(_loc5_.§69§ > _loc7_.§69§)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr192:
                                                                     param4.push(_loc7_);
                                                                     if(_loc10_)
                                                                     {
                                                                        var _loc8_:*;
                                                                        var _loc9_:* = (_loc8_ = _loc5_).§9!Y§ - 1;
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc8_.§9!Y§ = _loc9_;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc9_ = (_loc8_ = _loc7_).§9!Y§ + 1;
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              _loc8_.§9!Y§ = _loc9_;
                                                                           }
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              _loc7_.§7!X§ = true;
                                                                              if(_loc10_ || param2)
                                                                              {
                                                                                 addr247:
                                                                                 if(!_loc5_.targetOffset)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       _loc5_.targetOffset = -1;
                                                                                       if(_loc11_)
                                                                                       {
                                                                                       }
                                                                                       addr283:
                                                                                       _loc7_.targetOffset = 1;
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       addr312:
                                                                                       §§push(_loc6_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                          if(_loc11_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       _loc6_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr278:
                                                                                    if(!_loc7_.targetOffset)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc9_ = (_loc8_ = _loc7_).targetOffset + 1;
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc8_.targetOffset = _loc9_;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       _loc8_.targetOffset = _loc9_;
                                                                                    }
                                                                                    if(_loc10_ || param3)
                                                                                    {
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr247);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr283);
               }
               return _loc5_.§9!Y§;
            }
         }
         §§goto(addr66);
      }
   }
}
