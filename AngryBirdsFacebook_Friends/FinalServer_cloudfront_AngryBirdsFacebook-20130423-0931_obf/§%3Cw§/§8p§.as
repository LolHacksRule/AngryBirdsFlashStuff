package §<w§
{
   import §,l§.§!"T§;
   import §,l§.§"6§;
   import §,l§.§#!>§;
   import §,l§.§;!O§;
   import §,l§.§<"W§;
   import §,l§.§in §;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §8p§ extends § ,§
   {
      
      public static var §+m§:§#!>§;
      
      public static var §,!n§:Array;
      
      private static var §-"A§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,!n§ = [];
            do
            {
               §-"A§ = {};
            }
            while(_loc1_);
            
         }
      }
      
      protected var §'F§:String;
      
      protected var §[!D§:String;
      
      protected var §?"1§:Boolean = false;
      
      protected var §,!"§:int = -1;
      
      private var §7w§:int = 0;
      
      public function §8p§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§'F§ = param1;
         }
         while(true)
         {
            this.§[!D§ = param2;
            loop1:
            for(; !_loc7_; while(!(_loc7_ && this))
            {
               this.dataLoaded(param5);
               §§goto(addr46);
            })
            {
               this.§?"1§ = param4;
               loop2:
               while(true)
               {
                  super(param3);
                  do
                  {
                     if(!param5)
                     {
                        §`!I§(0,0);
                        if(!(_loc7_ && param3))
                        {
                           if(_loc7_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              continue loop2;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(!(_loc6_ || param2))
                              {
                                 continue loop1;
                              }
                           }
                           addr46:
                        }
                     }
                     continue;
                     return;
                  }
                  while(!(_loc6_ || param2));
                  
                  §83§ = new §@L§(0,param5.items.length,new URLLoader(),null);
                  continue loop1;
               }
            }
         }
      }
      
      public static function §["E§(param1:String) : String
      {
         return §-"A§[param1];
      }
      
      public function get §&"U§() : int
      {
         return this.§7w§;
      }
      
      public function get §8#§() : int
      {
         return this.§,!"§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§in § = null;
         var _loc5_:§#!>§ = null;
         param1 = §;!O§.§>k§(param1,"items",param1.level);
         var _loc3_:Object = {"items":[]};
         if(!(_loc8_ && _loc2_))
         {
            this.§,!"§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && param1))
            {
               §§push(0);
               if(!(_loc8_ && param1))
               {
                  if(§§pop() < §§pop())
                  {
                     addr368:
                     if(_loc9_)
                     {
                        §§push(this.§,!"§);
                        break;
                     }
                     §§push(this);
                     if(_loc9_ || param1)
                     {
                        if(_loc2_)
                        {
                           addr378:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(_loc8_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§,!"§ = §§pop();
                        if(!_loc8_)
                        {
                           _loc3_.items.splice(this.§,!"§,0,this.§<!l§(_loc2_));
                           if(!_loc8_)
                           {
                              addr427:
                              while(true)
                              {
                                 addr408:
                                 while(true)
                                 {
                                    _loc3_.totalItemCount = _loc3_.items.length;
                                    if(!_loc8_)
                                    {
                                       this.§7w§ = §,!n§.length;
                                       if(!_loc8_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          §§goto(addr468);
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 var _loc6_:*;
                                 §§push((_loc6_ = this).§7w§);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc8_)
                                 {
                                    _loc6_.§7w§ = _loc7_;
                                 }
                                 if(!_loc8_)
                                 {
                                    addr468:
                                    if(§,!n§.indexOf(this.§'F§) >= 0)
                                    {
                                       if(_loc9_)
                                       {
                                          break loop23;
                                       }
                                       §§goto(addr471);
                                    }
                                    super.dataLoaded(_loc3_);
                                    §§goto(addr471);
                                 }
                              }
                           }
                           §§goto(addr471);
                        }
                        §§goto(addr427);
                     }
                     §§goto(addr378);
                  }
                  else
                  {
                     §9"?§.§"!V§(new §`h§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push((_loc5_ = §#!>§.§?$§(param1.items[_loc4_])) is §!"T§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§pop();
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(§,!n§);
                                       if(_loc9_ || this)
                                       {
                                          §§push(_loc5_.userId);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   addr147:
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push((_loc6_ = this).§,!"§);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc7_ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         _loc6_.§,!"§ = _loc7_;
                                                      }
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§,!n§);
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.userId);
                                                                  if(_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().indexOf(§§pop()) == -1);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 addr281:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr282:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§,!n§);
                                                                                          break loop6;
                                                                                       }
                                                                                       addr282:
                                                                                    }
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_.userId);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(§§pop() == this.§'F§)
                                                                                          {
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr251:
                                                                                                   this.§,!"§ = _loc4_;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && _loc2_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §+m§ = _loc5_;
                                                                                                            addr233:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ || this))
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                         addr261:
                                                                                                         addr230:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr286:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr286:
                                                                                                      }
                                                                                                      §§goto(addr251);
                                                                                                   }
                                                                                                   addr254:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_ is §!"T§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        addr307:
                                                                                                                        _loc2_ = _loc5_ as §in §;
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr230);
                                                                                                                  }
                                                                                                                  addr327:
                                                                                                                  _loc3_.items.unshift(_loc5_);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr333:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     break loop5;
                                                                                                                  }
                                                                                                                  break loop5;
                                                                                                               }
                                                                                                               §§goto(addr307);
                                                                                                            }
                                                                                                            §§goto(addr254);
                                                                                                         }
                                                                                                         §§goto(addr233);
                                                                                                      }
                                                                                                      §§goto(addr333);
                                                                                                   }
                                                                                                   addr311:
                                                                                                   if(_loc5_.avatarString)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §-"A§[_loc5_.userId] = _loc5_.avatarString;
                                                                                                      if(_loc8_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr327);
                                                                                                   addr198:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   addr291:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr293:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        addr283:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.userId);
                                                                           §§goto(addr282);
                                                                        }
                                                                     }
                                                                     addr270:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     §§goto(addr286);
                                                                  }
                                                               }
                                                               addr266:
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §!"T§);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr286);
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr281);
                     }
                  }
                  §§goto(addr427);
               }
               addr365:
               if(§§pop() < §§pop())
               {
                  if(!_loc8_)
                  {
                     §§goto(addr368);
                  }
                  addr471:
                  return;
               }
               §§goto(addr408);
            }
            break;
         }
         §§goto(addr365);
         §§push(0);
      }
      
      public function §<!l§(param1:§in §) : §in §
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§?"1§)
            {
               §§push(§§findproperty(§<"W§));
               §§push(this.§'F§);
               §§push(this.§[!D§);
               if(!(_loc2_ && this))
               {
                  §§push(§+m§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        addr107:
                        §§push(§+m§.avatarString);
                        if(_loc3_ || param1)
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
                     if(_loc3_ || _loc2_)
                     {
                        if(param1)
                        {
                           addr140:
                           §§push(param1.§'Q§);
                           if(!_loc2_)
                           {
                              §§push(int(§§pop() + 1));
                              if(_loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        return new §§pop().§<"W§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr140);
                  }
               }
               §§goto(addr107);
            }
         }
         §§push(§§findproperty(§"6§));
         §§push(this.§'F§);
         §§push(this.§[!D§);
         if(!_loc2_)
         {
            §§push(§+m§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr39:
                  §§push(§+m§.avatarString);
                  if(_loc3_)
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
               if(_loc3_ || this)
               {
                  if(param1)
                  {
                     addr56:
                     §§push(param1.§'Q§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(int(§§pop() + 1));
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr87);
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr87:
                  return new §§pop().§"6§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               }
               §§goto(addr56);
            }
         }
         §§goto(addr39);
      }
      
      public function §2v§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  if(§§pop() >= data.length)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_++;
                        }
                        addr41:
                     }
                     loop2:
                     for(; _loc3_ || _loc2_; §§goto(addr41))
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        loop3:
                        while(true)
                        {
                           §§push((data[_loc2_] as §in §).userId == param1);
                           if(!_loc4_)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 addr111:
                              }
                              break;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr99);
                  }
                  §§push(data[_loc2_] is §!"T§);
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§goto(addr111);
               }
               addr99:
               return (data[_loc2_] as §in §).§'Q§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §,"E§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  if(§§pop() >= data.length)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || this)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push((data[_loc2_] as §<"W§).§'Q§ == 2);
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop2;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       addr118:
                                    }
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           break;
                        }
                     }
                     §§goto(addr109);
                  }
                  §§push(data[_loc2_] is §!"T§);
                  §§goto(addr118);
               }
               addr109:
               return (data[_loc2_] as §<"W§).§,y§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §<J§(param1:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(!data)
            {
               if(_loc5_)
               {
                  addr28:
                  §§push(null);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(null);
               }
               var _loc2_:Object = §§pop();
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(§§pop() < data.length)
                  {
                     §§push((data[_loc3_] as §<"W§).userId == this.§'F§);
                     if(!_loc4_)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       §§push(data[_loc3_] is §!"T§);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr113:
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(this.§'F§));
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                     _loc3_++;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr185:
                                                                     addr177:
                                                                  }
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     continue loop6;
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  continue loop5;
                                                                  break loop1;
                                                               }
                                                               break;
                                                            }
                                                            addr180:
                                                            _loc2_ = data[_loc3_];
                                                            §§goto(addr185);
                                                            addr128:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§pop();
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§push((data[_loc3_] as §<"W§).§,y§);
                                                                     if(!(_loc5_ || _loc2_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr177);
                                                                     §§push(§§pop() > param1);
                                                                  }
                                                                  §§goto(addr180);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr113);
                                                         addr66:
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          addr114:
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                                 continue loop0;
                                 addr148:
                              }
                              §§goto(addr114);
                           }
                        }
                     }
                     §§goto(addr148);
                  }
                  return _loc2_;
               }
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public function §!_§() : §<"W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(!data);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr32:
                     §§pop();
                     §§goto(addr47);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr47:
                     if(!_loc3_)
                     {
                        §§push(data.length == 0);
                     }
                     return null;
                  }
               }
               §§push(this.§2v§(this.§'F§));
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc4_)
                           {
                              return null;
                           }
                           addr102:
                           §§push(0);
                        }
                        else
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              addr86:
                              if(§§pop() == -1)
                              {
                                 if(!_loc3_)
                                 {
                                    addr89:
                                    §§push(int(data.length + 1));
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr101:
                                       _loc1_ = §§pop();
                                    }
                                    §§goto(addr103);
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                        addr103:
                        var _loc2_:* = §§pop();
                        do
                        {
                           if(_loc2_ >= data.length)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       return null;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push((data[_loc2_] as §<"W§).§'Q§ == _loc1_ - 1);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       addr175:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop1;
                                       }
                                    }
                                    addr152:
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                 }
                                 _loc2_++;
                              }
                              continue;
                           }
                           §§push(data[_loc2_] is §<"W§);
                           if(!(_loc3_ && this))
                           {
                              if(§§pop())
                              {
                                 §§goto(addr175);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr175);
                        }
                        while(!_loc3_);
                        
                        return data[_loc2_];
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr101);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr32);
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§1!j§.§%e§);
         }
      }
      
      public function §1"<§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§<"W§ = null;
         var _loc5_:§<"W§;
         if(!(_loc5_ = data[this.§,!"§]))
         {
            if(_loc10_ || param1)
            {
               §§push(0);
               if(!_loc11_)
               {
                  return §§pop();
               }
            }
            else
            {
               while(true)
               {
                  _loc5_.§5"§ = param3;
                  if(_loc10_ || this)
                  {
                     if(true)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        _loc5_.§,y§ = param1;
                        addr69:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     addr59:
                  }
                  while(!_loc10_)
                  {
                     §§goto(addr69);
                     §§goto(addr59);
                  }
               }
               §§push(int(data.length - 1));
            }
            var _loc6_:* = §§pop();
            loop3:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() >= 0)
               {
                  if(data[_loc6_] is §!"T§)
                  {
                     if(!(_loc10_ || param1))
                     {
                        break;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§'F§)
                  {
                     if(_loc11_)
                     {
                        addr257:
                        if(!_loc5_.targetOffset)
                        {
                           if(!_loc11_)
                           {
                              addr262:
                              _loc5_.targetOffset = -1;
                              if(!(_loc11_ && param1))
                              {
                                 addr298:
                                 if(!_loc7_.targetOffset)
                                 {
                                    if(!_loc11_)
                                    {
                                       addr303:
                                       _loc7_.targetOffset = 1;
                                       if(_loc10_ || param1)
                                       {
                                       }
                                       addr332:
                                       §§push(_loc6_);
                                       if(_loc10_ || param1)
                                       {
                                          §§push(§§pop() - 1);
                                          if(!(_loc11_ && this))
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    var _loc8_:*;
                                    var _loc9_:* = (_loc8_ = _loc7_).targetOffset + 1;
                                    if(_loc10_ || param3)
                                    {
                                       _loc8_.targetOffset = _loc9_;
                                    }
                                 }
                                 §§goto(addr332);
                                 addr272:
                              }
                              §§goto(addr332);
                           }
                           addr313:
                           §§goto(addr332);
                        }
                        else
                        {
                           _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                           if(!(_loc11_ && param3))
                           {
                              _loc8_.targetOffset = _loc9_;
                           }
                           if(_loc10_ || param3)
                           {
                              §§goto(addr298);
                           }
                        }
                        §§goto(addr303);
                     }
                  }
                  else if(_loc7_.§'Q§ <= _loc5_.§'Q§)
                  {
                     if(!(_loc11_ && param3))
                     {
                        §§push(_loc5_.§,y§);
                        if(!(_loc11_ && this))
                        {
                           §§push(_loc7_.§,y§);
                           if(_loc10_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc10_ || param1)
                              {
                                 §§push(§§pop());
                                 if(!_loc11_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc5_.§,y§);
                                             if(_loc10_ || param2)
                                             {
                                                addr155:
                                                §§push(_loc7_.§,y§);
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc10_ || param3)
                                                   {
                                                      addr183:
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_ || param2)
                                                         {
                                                            addr191:
                                                            §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               addr199:
                                                               if(_loc5_.§5"§ > _loc7_.§5"§)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     param4.push(_loc7_);
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        _loc9_ = (_loc8_ = _loc5_).§'Q§ - 1;
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc8_.§'Q§ = _loc9_;
                                                                        }
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc9_ = (_loc8_ = _loc7_).§'Q§ + 1;
                                                                           if(!_loc11_)
                                                                           {
                                                                              _loc8_.§'Q§ = _loc9_;
                                                                           }
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              addr252:
                                                                              _loc7_.§0!m§ = true;
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr313);
                  }
                  §§goto(addr303);
               }
               addr369:
               return _loc5_.§'Q§;
            }
         }
         else
         {
            _loc5_.stars = param2;
         }
         §§goto(addr69);
      }
      
      public function §^!H§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            if(data)
            {
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_ = 0;
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || this)
                     {
                        if(_loc3_ || param1)
                        {
                           if(§§pop() >= data.length)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    addr59:
                                    break;
                                 }
                                 addr64:
                                 _loc2_++;
                              }
                              if(_loc3_ || param1)
                              {
                                 continue;
                              }
                              addr101:
                              return (data[_loc2_] as §"6§).§[![§;
                              addr95:
                           }
                           else
                           {
                              if((data[_loc2_] as §"6§).userId != param1)
                              {
                                 §§goto(addr64);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr101);
                     }
                     break;
                  }
                  return §§pop();
                  addr114:
               }
               §§goto(addr114);
            }
            §§goto(addr59);
         }
         §§goto(addr114);
      }
      
      public function §`N§(param1:String) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_ || this)
         {
            if(data)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr108:
                  _loc2_ = 0;
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() >= data.length)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_ || this)
                              {
                                 §§goto(addr57);
                              }
                              addr91:
                              §§push((data[_loc2_] as §<"W§).§,y§);
                              break;
                           }
                           loop1:
                           while(!(_loc4_ || _loc2_))
                           {
                              while(true)
                              {
                                 _loc2_++;
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        if((data[_loc2_] as §<"W§).userId == param1)
                        {
                           §§goto(addr91);
                        }
                        §§goto(addr60);
                     }
                     break;
                  }
                  §§goto(addr57);
               }
               return §§pop();
            }
            addr57:
            return 0;
         }
         §§goto(addr108);
      }
   }
}
