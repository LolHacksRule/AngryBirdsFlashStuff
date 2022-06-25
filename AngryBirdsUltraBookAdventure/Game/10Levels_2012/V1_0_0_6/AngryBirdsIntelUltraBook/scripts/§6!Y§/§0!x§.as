package §6!Y§
{
   import §#&§.§+!5§;
   import §#&§.§35§;
   import §#&§.§9!o§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §0!x§ extends §9!?§
   {
      
      public static var §`!6§:§`S§;
      
      public static var §,6§:Array;
      
      private static var §'b§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,6§ = [];
         }
         do
         {
            §'b§ = {};
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected var §^o§:String;
      
      protected var §<!t§:String;
      
      protected var §<E§:Boolean = false;
      
      protected var §^!D§:int = -1;
      
      private var §66§:int = 0;
      
      public function §0!x§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.§^o§ = param1;
            loop0:
            while(true)
            {
               this.§<!t§ = param2;
               loop1:
               while(true)
               {
                  this.§<E§ = param4;
                  while(true)
                  {
                     super(param3);
                     loop3:
                     for(; _loc7_ || param3; if(_loc6_ && param1)
                     {
                        continue;
                     },if(!_loc7_)
                     {
                        continue loop1;
                     },§;s§ = new §5t§(0,param5.items.length,new URLLoader(),null),§§goto(addr103))
                     {
                        while(true)
                        {
                           if(param5)
                           {
                              if(_loc7_)
                              {
                                 continue loop3;
                              }
                              addr103:
                              this.dataLoaded(param5);
                              addr103:
                           }
                           else
                           {
                              §-#§(0,0);
                              if(_loc7_ || param2)
                              {
                                 if(_loc7_ || param3)
                                 {
                                    §§goto(addr25);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr25:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public static function §>!U§(param1:String) : String
      {
         return §'b§[param1];
      }
      
      public function get §-b§() : int
      {
         return this.§66§;
      }
      
      public function get §%X§() : int
      {
         return this.§^!D§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§+!5§ = null;
         var _loc5_:§`S§ = null;
         var _loc3_:Object = {"items":[]};
         if(!_loc8_)
         {
            this.§^!D§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_ || param1)
            {
               §§push(0);
               if(_loc9_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc8_ && param1))
                     {
                        §§push(this.§^!D§);
                        break;
                     }
                  }
                  else
                  {
                     §!o§.§[b§(new §8;§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(_loc9_ || this)
                     {
                        §§push((_loc5_ = §`S§.§2!L§(param1.items[_loc4_])) is §]!B§);
                        if(_loc9_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    §§pop();
                                    if(!_loc8_)
                                    {
                                       §§push(§,6§);
                                       if(_loc9_ || this)
                                       {
                                          §§push(_loc5_.userId);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(!_loc8_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc9_)
                                                {
                                                   addr114:
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         var _loc6_:*;
                                                         §§push((_loc6_ = this).§^!D§);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc7_:* = §§pop();
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            _loc6_.§^!D§ = _loc7_;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            addr300:
                                                            §§push(_loc4_);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            continue;
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      else
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(false)
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §`!6§ = _loc5_;
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_ is §]!B§);
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr158:
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr261:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr262:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§,6§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_.userId);
                                                                                                      if(!(_loc8_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop().indexOf(§§pop()) == -1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr239:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§,6§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.userId);
                                                                                                                        addr250:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().push(§§pop());
                                                                                                                           addr251:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr248:
                                                                                                                  }
                                                                                                                  §§goto(addr251);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_.userId);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(§§pop() == this.§^o§)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        this.§^!D§ = _loc4_;
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  addr273:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §'b§[_loc5_.userId] = _loc5_.avatarString;
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr289:
                                                                                                               _loc3_.items.unshift(_loc5_);
                                                                                                               if(!(_loc9_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr300);
                                                                                                            }
                                                                                                         }
                                                                                                         addr238:
                                                                                                      }
                                                                                                      §§goto(addr250);
                                                                                                   }
                                                                                                   addr226:
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                          }
                                                                                          addr263:
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                    }
                                                                                    §§goto(addr158);
                                                                                 }
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc2_);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr269:
                                                                                    _loc2_ = §§pop();
                                                                                    break;
                                                                                 }
                                                                                 §§pop();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           break;
                                                                           §§goto(addr158);
                                                                        }
                                                                        §§goto(addr273);
                                                                        §§push(_loc5_.avatarString);
                                                                        addr165:
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc5_ as §+!5§);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §]!B§);
                                                      if(!_loc8_)
                                                      {
                                                         addr260:
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr239);
                     }
                     else
                     {
                        _loc3_.items.splice(this.§^!D§,0,this.§6!q§(_loc2_));
                        loop18:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              addr389:
                              while(true)
                              {
                                 _loc3_.totalItemCount = _loc3_.items.length;
                                 addr394:
                                 while(true)
                                 {
                                    this.§66§ = §,6§.length;
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop18;
                                    }
                                    if(false)
                                    {
                                       continue loop19;
                                    }
                                    if(§,6§.indexOf(this.§^o§) >= 0)
                                    {
                                       if(_loc9_ || _loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr453);
                                    }
                                    §§goto(addr450);
                                 }
                                 §§push((_loc6_ = this).§66§);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc7_ = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc6_.§66§ = _loc7_;
                                 }
                                 if(_loc9_)
                                 {
                                    addr450:
                                    super.dataLoaded(_loc3_);
                                    §§goto(addr453);
                                 }
                              }
                           }
                        }
                        addr369:
                        addr404:
                     }
                  }
                  addr453:
                  return;
               }
               addr337:
               if(§§pop() < §§pop())
               {
                  if(_loc9_)
                  {
                     §§push(this);
                     if(!_loc8_)
                     {
                        if(_loc2_)
                        {
                           addr345:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(_loc8_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§^!D§ = §§pop();
                        if(_loc9_ || _loc2_)
                        {
                           §§goto(addr369);
                        }
                        §§goto(addr404);
                     }
                     §§goto(addr345);
                  }
                  §§goto(addr394);
               }
               §§goto(addr389);
            }
            break;
         }
         §§goto(addr337);
         §§push(0);
      }
      
      public function §6!q§(param1:§+!5§) : §+!5§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§<E§)
            {
               §§push(§§findproperty(§9!o§));
               §§push(this.§^o§);
               §§push(this.§<!t§);
               if(!_loc2_)
               {
                  §§push(§`!6§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        addr110:
                        §§push(§`!6§.avatarString);
                        if(!(_loc2_ && _loc2_))
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
                     if(!_loc2_)
                     {
                        if(param1)
                        {
                           addr138:
                           §§push(param1.§&d§);
                           if(!_loc2_)
                           {
                              §§push(int(§§pop() + 1));
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr149);
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        addr149:
                        return new §§pop().§9!o§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr138);
                  }
               }
               §§goto(addr110);
            }
         }
         §§push(§§findproperty(§35§));
         §§push(this.§^o§);
         §§push(this.§<!t§);
         if(!_loc2_)
         {
            §§push(§`!6§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr39:
                  §§push(§`!6§.avatarString);
                  if(!(_loc2_ && this))
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
               if(!_loc2_)
               {
                  if(param1)
                  {
                     addr56:
                     §§push(param1.§&d§);
                     if(!_loc2_)
                     {
                        §§push(1);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(!(_loc2_ && this))
                           {
                              addr89:
                              §§push(0);
                           }
                           §§goto(addr89);
                        }
                        return new §§pop().§35§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr89);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr39);
      }
      
      public function §^n§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() >= data.length)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     while(true)
                     {
                        addr42:
                        while(true)
                        {
                           _loc2_++;
                        }
                     }
                     addr99:
                  }
                  while(!_loc4_)
                  {
                     do
                     {
                        §§push((data[_loc2_] as §+!5§).userId == param1);
                     }
                     while(_loc4_ || _loc3_);
                     
                     while(true)
                     {
                        §§pop();
                        §§goto(addr120);
                     }
                     addr120:
                  }
                  continue;
               }
               §§push(data[_loc2_] is §]!B§);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && this))
                  {
                     addr117:
                     if(§§pop())
                     {
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr42);
                     }
                     return (data[_loc2_] as §+!5§).§&d§;
                     addr73:
                  }
                  §§goto(addr119);
               }
               §§goto(addr117);
               §§goto(addr73);
            }
            break;
         }
         if(_loc4_)
         {
            return §§pop();
         }
         §§goto(addr117);
      }
      
      public function §6G§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= data.length)
               {
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr39);
                        }
                        break;
                     }
                     if(_loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push((data[_loc2_] as §9!o§).§&d§ == 2);
                           if(_loc4_)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 addr112:
                              }
                              break;
                           }
                        }
                        if(§§pop())
                        {
                           break;
                        }
                     }
                     _loc2_++;
                  }
                  continue;
               }
               §§push(data[_loc2_] is §]!B§);
               if(!_loc3_)
               {
                  §§push(!§§pop());
               }
               §§goto(addr112);
            }
            addr39:
            §§push(0);
            if(!(_loc3_ && param1))
            {
               return §§pop();
            }
            addr98:
            return §§pop();
         }
         §§goto(addr98);
         §§push((data[_loc2_] as §9!o§).§#!6§);
      }
      
      public function §-l§(param1:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!data)
            {
               if(_loc5_)
               {
                  §§push(null);
                  if(!_loc4_)
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
                     §§push((data[_loc3_] as §9!o§).userId == this.§^o§);
                     if(_loc5_)
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
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr161:
                                    addr107:
                                    loop7:
                                    while(true)
                                    {
                                       addr74:
                                       while(true)
                                       {
                                          §§push(data[_loc3_] is §]!B§);
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          addr102:
                                          if(_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                addr175:
                                                break loop5;
                                                addr175:
                                             }
                                             §§pop();
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(Boolean(this.§^o§));
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break loop5;
                                                   }
                                                   addr50:
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr161);
                                             }
                                             _loc2_ = data[_loc3_];
                                             _loc3_++;
                                             if(!_loc5_)
                                             {
                                                break loop1;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr50);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             §§pop();
                                             if(!(_loc4_ && param1))
                                             {
                                                if(true)
                                                {
                                                   §§push((data[_loc3_] as §9!o§).§#!6§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() > param1);
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr74);
                                             }
                                             §§goto(addr175);
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr175);
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr175);
                                 }
                                 addr160:
                              }
                              while(true)
                              {
                                 §§goto(addr107);
                              }
                           }
                        }
                     }
                     §§goto(addr160);
                  }
                  return _loc2_;
               }
            }
         }
         §§goto(addr32);
      }
      
      public function §'![§() : §9!o§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §§push(!data);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        addr38:
                        addr34:
                        if(data.length == 0)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr46);
                           }
                        }
                        §§push(this.§^n§(this.§^o§));
                        if(_loc3_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc1_:* = §§pop();
                        if(_loc3_ || this)
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       return null;
                                    }
                                    addr91:
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr100:
                                       if(§§pop() == -1)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(int(data.length + 1));
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr120:
                                                _loc1_ = §§pop();
                                             }
                                             §§goto(addr122);
                                          }
                                       }
                                       addr122:
                                       var _loc2_:* = §§pop();
                                       while(true)
                                       {
                                          if(_loc2_ >= data.length)
                                          {
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                return null;
                                             }
                                             addr177:
                                          }
                                          else if((data[_loc2_] as §9!o§).§&d§ == _loc1_ - 1)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                break;
                                             }
                                             §§goto(addr177);
                                          }
                                          _loc2_++;
                                       }
                                       return data[_loc2_];
                                       §§push(0);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr91);
                     }
                     addr46:
                     return null;
                  }
               }
            }
            §§goto(addr38);
         }
         §§goto(addr34);
      }
      
      override protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var e:Event = param1;
         try
         {
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§&!$§.§1!`§);
         }
      }
      
      public function §@&§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§9!o§ = null;
         var _loc5_:§9!o§;
         if(!(_loc5_ = data[this.§^!D§]))
         {
            if(!(_loc10_ && param1))
            {
               §§push(0);
               if(!_loc10_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr62:
               _loc5_.stars = param2;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     _loc5_.§#!6§ = param1;
                     while(_loc11_)
                     {
                        _loc5_.§-s§ = param3;
                        if(_loc11_)
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
                  if(data[_loc6_] is §]!B§)
                  {
                     if(_loc10_ && param3)
                     {
                     }
                     break;
                  }
                  if((_loc7_ = data[_loc6_]).userId == this.§^o§)
                  {
                     if(_loc10_)
                     {
                        addr107:
                        §§push(_loc5_.§#!6§);
                        if(!(_loc10_ && param2))
                        {
                           §§push(_loc7_.§#!6§);
                           if(!(_loc10_ && param3))
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc10_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§pop();
                                          if(_loc11_ || param1)
                                          {
                                             §§push(_loc5_.§#!6§);
                                             if(!(_loc10_ && this))
                                             {
                                                addr156:
                                                §§push(_loc7_.§#!6§);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc11_ || param2)
                                                   {
                                                      addr179:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                         }
                                                         addr195:
                                                         if(§§pop())
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               param4.push(_loc7_);
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  var _loc8_:*;
                                                                  var _loc9_:* = (_loc8_ = _loc5_).§&d§ - 1;
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     _loc8_.§&d§ = _loc9_;
                                                                  }
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr233:
                                                                     _loc9_ = (_loc8_ = _loc7_).§&d§ + 1;
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc8_.§&d§ = _loc9_;
                                                                     }
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        _loc7_.§+!Z§ = true;
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!_loc5_.targetOffset)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr263:
                                                                                 _loc5_.targetOffset = -1;
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                 }
                                                                                 addr333:
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                                 addr304:
                                                                              }
                                                                              addr289:
                                                                              if(!_loc7_.targetOffset)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr294:
                                                                                    _loc7_.targetOffset = 1;
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc9_ = (_loc8_ = _loc7_).targetOffset + 1;
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                    _loc8_.targetOffset = _loc9_;
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr333);
                                                                              addr273:
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc8_.targetOffset = _loc9_;
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§pop();
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr194:
                                                      §§goto(addr195);
                                                      §§push(_loc5_.§-s§ > _loc7_.§-s§);
                                                   }
                                                   §§goto(addr233);
                                                }
                                             }
                                             §§goto(addr194);
                                          }
                                          §§goto(addr263);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr156);
                     }
                  }
                  else if(_loc7_.§&d§ < _loc5_.§&d§)
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr263);
               }
               return _loc5_.§&d§;
            }
         }
         §§goto(addr62);
      }
   }
}
