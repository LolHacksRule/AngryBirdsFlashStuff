package §;&§
{
   import flash.geom.Rectangle;
   
   public class §8" §
   {
      
      public static const VERSION:String = "1.2.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "1.2.0";
         }
      }
      
      private var §<!f§:int = 0;
      
      private var §8>§:int = 0;
      
      private var §6%§:int = 0;
      
      private var §@!B§:int = 0;
      
      private var §[N§:Array;
      
      private var §!,§:Vector.<§1!n§>;
      
      private var §6!o§:Vector.<§1!n§>;
      
      private var §?!P§:Vector.<§1!n§>;
      
      private var §%T§:§1!n§;
      
      private var §1"E§:Vector.<§9" §>;
      
      private var §=K§:Vector.<§1!n§>;
      
      public function §8" §(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[N§ = [];
            loop0:
            while(true)
            {
               this.§!,§ = new Vector.<§1!n§>();
               while(true)
               {
                  this.§6!o§ = new Vector.<§1!n§>();
                  continue loop0;
                  addr86:
                  if(!(_loc4_ && param1))
                  {
                     this.§%T§ = new §1!n§(param1 + 1,param2 + 1,0,0);
                     loop7:
                     while(!(_loc4_ && this))
                     {
                        this.reset(param1,param2);
                        if(!_loc4_)
                        {
                           addr30:
                           if(!(_loc3_ || param1))
                           {
                              while(true)
                              {
                                 this.§=K§ = new Vector.<§1!n§>();
                                 addr101:
                                 while(true)
                                 {
                                    super();
                                    break loop7;
                                 }
                                 §§goto(addr30);
                              }
                              addr109:
                           }
                           return;
                           addr37:
                        }
                     }
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           addr69:
                           if(_loc4_ && _loc3_)
                           {
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.§1"E§ = new Vector.<§9" §>();
                                 §§goto(addr109);
                                 §§goto(addr69);
                              }
                              continue loop0;
                              addr117:
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr101);
                        §§goto(addr51);
                     }
                     addr51:
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function get §9!x§() : int
      {
         return this.§!,§.length;
      }
      
      public function get §-!D§() : int
      {
         return this.§6%§;
      }
      
      public function get §%!M§() : int
      {
         return this.§@!B§;
      }
      
      public function reset(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(!this.§!,§.length)
            {
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     if(!this.§6!o§.length)
                     {
                        loop3:
                        while(!_loc3_)
                        {
                           this.§<!f§ = param1;
                           loop4:
                           while(true)
                           {
                              this.§8>§ = param2;
                              loop5:
                              while(true)
                              {
                                 this.§6%§ = 0;
                                 loop6:
                                 while(true)
                                 {
                                    this.§@!B§ = 0;
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                       addr61:
                                       loop8:
                                       while(!(_loc3_ && this))
                                       {
                                          do
                                          {
                                             if(!this.§[N§.length)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                   continue loop8;
                                                }
                                             }
                                             else
                                             {
                                                this.§^!C§(this.§[N§.pop());
                                             }
                                          }
                                          while(_loc4_);
                                          
                                          continue loop4;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        this.§]p§(this.§6!o§.pop());
                     }
                  }
               }
            }
            else
            {
               this.§]p§(this.§!,§.pop());
            }
         }
      }
      
      public function §3"@§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!n§ = this.§!,§[param1];
         if(_loc5_)
         {
            if(!param2)
            {
               return new Rectangle(_loc3_.x,_loc3_.y,_loc3_.width,_loc3_.height);
            }
            param2.x = _loc3_.x;
         }
         while(true)
         {
            param2.y = _loc3_.y;
            param2.width = _loc3_.width;
            while(_loc5_)
            {
               param2.height = _loc3_.height;
               if(_loc5_ || param1)
               {
                  return param2;
               }
            }
         }
      }
      
      public function §^"?§(param1:int) : int
      {
         var _loc2_:§1!n§ = this.§!,§[param1];
         return _loc2_.id;
      }
      
      public function §@!L§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§9" § = this.§5!"§(param1,param2,param3);
         if(!_loc6_)
         {
            this.§[N§.push(_loc4_);
         }
      }
      
      public function §8^§(param1:Boolean = true) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§9" § = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§1!n§ = null;
         var _loc7_:§1!n§ = null;
         if(_loc9_)
         {
            if(param1)
            {
               if(_loc9_ || _loc2_)
               {
                  addr43:
                  this.§[N§.sortOn("width",Array.NUMERIC);
               }
            }
            loop0:
            while(true)
            {
               §§push(this.§[N§);
               while(§§pop().length > 0)
               {
                  §§push(this.§[N§);
                  if(!(_loc9_ || param1))
                  {
                     continue;
                  }
                  _loc2_ = §§pop().pop() as §9" §;
                  if(!_loc8_)
                  {
                     §§push(_loc2_.width);
                     if(!_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(_loc9_ || this)
                        {
                           _loc3_ = §§pop();
                           if(_loc9_)
                           {
                              §§push(_loc2_.height);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       addr97:
                                       §§push(this.§^!h§(_loc3_,_loc4_));
                                       if(_loc9_)
                                       {
                                          addr103:
                                          §§push(int(§§pop()));
                                          if(!_loc8_)
                                          {
                                             addr106:
                                             §§push(§§pop());
                                             if(!_loc8_)
                                             {
                                                _loc5_ = §§pop();
                                                addr110:
                                                §§push(0);
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc8_ && _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                addr119:
                                                _loc6_ = this.§6!o§[_loc5_];
                                                (_loc7_ = this.§=!M§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
                                                if(_loc9_)
                                                {
                                                   this.§=!j§(_loc7_,this.§6!o§,this.§?!P§);
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(this.§?!P§.length > 0)
                                                         {
                                                            this.§6!o§[this.§6!o§.length] = this.§?!P§.pop();
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   addr257:
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   this.§!,§[this.§!,§.length] = _loc7_;
                                                   loop5:
                                                   while(true)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_.right);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(this.§6%§);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     if(_loc8_ && _loc2_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     this.§6%§ = _loc7_.right;
                                                                  }
                                                                  while(!(_loc8_ && _loc3_))
                                                                  {
                                                                     if(_loc8_ && _loc2_)
                                                                     {
                                                                        §§goto(addr249);
                                                                     }
                                                                     if(!(_loc9_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        this.§@!B§ = _loc7_.bottom;
                                                                        addr182:
                                                                        if(false)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        addr258:
                                                                        this.§^!C§(_loc2_);
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_.bottom);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(this.§@!B§);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr169);
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr97);
               }
               return this.§9!x§;
            }
         }
         §§goto(addr43);
      }
      
      private function §'!I§(param1:Vector.<§1!n§>) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§1!n§ = null;
         var _loc4_:* = 0;
         var _loc5_:§1!n§ = null;
         var _loc6_:§1!n§ = null;
         var _loc2_:* = int(param1.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1[_loc2_];
            if(_loc7_)
            {
               §§push(int(param1.length - 1));
               if(_loc7_ || this)
               {
                  _loc4_ = §§pop();
                  if(!(_loc8_ && _loc3_))
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           §§push(0);
                           loop3:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       while(true)
                                       {
                                          _loc5_ = param1[_loc4_];
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(_loc3_.x);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc5_.x);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr198:
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.y);
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.y);
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.right);
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(_loc5_.right);
                                                                                                   loop16:
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(_loc8_ && _loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.bottom);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.bottom);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                        addr171:
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                               addr166:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr230:
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc8_ && _loc3_)
                                                                                                                  {
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  §§push(§§pop() - 1);
                                                                                                                  if(!(_loc7_ || param1))
                                                                                                                  {
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     this.§]p§(_loc3_);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr171);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               _loc6_ = param1.pop();
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(§§pop() < param1.length)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           param1[_loc2_] = _loc6_;
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           addr229:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc7_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           addr229:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr229);
                                                                                                                  }
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr229);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                         addr154:
                                                                                                      }
                                                                                                      §§goto(addr166);
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr188:
                                                                                 }
                                                                                 §§goto(addr154);
                                                                              }
                                                                           }
                                                                           addr185:
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       addr76:
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr229);
                           }
                        }
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr246);
            }
            §§goto(addr229);
         }
      }
      
      private function §=!j§(param1:§1!n§, param2:Vector.<§1!n§>, param3:Vector.<§1!n§>) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§1!n§ = null;
         var _loc10_:§1!n§ = null;
         §§push(param1.x);
         if(_loc11_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(!(_loc12_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.right);
         if(!(_loc12_ && this))
         {
            §§push(int(§§pop() + 1));
         }
         var _loc6_:* = §§pop();
         §§push(param1.bottom);
         if(!(_loc12_ && this))
         {
            §§push(int(§§pop() + 1));
         }
         var _loc7_:* = §§pop();
         var _loc8_:* = int(param2.length - 1);
         loop0:
         while(_loc8_ >= 0)
         {
            _loc9_ = param2[_loc8_];
            if(!_loc12_)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(_loc9_.right);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >= §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc11_ || param2)
                                    {
                                       if(!_loc11_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(_loc9_.x);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          addr222:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc12_ && param3)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc12_ && param1)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc12_ && param2)
                                                               {
                                                                  while(_loc11_)
                                                                  {
                                                                     §§pop();
                                                                     break loop17;
                                                                  }
                                                                  continue loop3;
                                                                  addr225:
                                                               }
                                                               §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     addr94:
                                                                     §§push(_loc9_.y);
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr113:
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    while(!§§pop())
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          this.§!";§(param1,_loc9_,param3);
                                                                                          if(_loc12_ && param3)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          addr157:
                                                                                          if(!(_loc12_ && param3))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      break;
                                                                                                      addr172:
                                                                                                   }
                                                                                                   §§push(_loc9_.bottom);
                                                                                                   while(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      continue loop9;
                                                                                                      §§goto(addr94);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                addr261:
                                                                                                §§push(§§pop() - 1);
                                                                                                break loop6;
                                                                                                addr166:
                                                                                             }
                                                                                             _loc10_ = param2.pop();
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                if(_loc8_ < param2.length)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      param2[_loc8_] = _loc10_;
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break loop17;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§push(_loc8_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    break loop6;
                                                                                    addr122:
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                                  break loop6;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr166);
                                                               §§goto(addr157);
                                                            }
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      continue;
                                                      addr182:
                                                   }
                                                   §§goto(addr225);
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 _loc8_ = §§pop();
                                 continue loop0;
                              }
                           }
                           §§goto(addr222);
                        }
                     }
                  }
               }
            }
            §§goto(addr207);
         }
         if(!_loc12_)
         {
            this.§'!I§(param3);
         }
      }
      
      private function §!";§(param1:§1!n§, param2:§1!n§, param3:Vector.<§1!n§>) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:int = 0;
         §§push(param2.right);
         if(!_loc10_)
         {
            §§push(param1.right);
            if(_loc9_ || param1)
            {
               addr33:
               §§push(int(§§pop() - §§pop()));
               §§push(int(§§pop() - §§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc9_ || param1)
            {
               §§push(0);
               if(!_loc10_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc9_ || this)
                     {
                        param3[param3.length] = this.§=!M§(param1.right,param2.y,_loc5_,param2.height);
                        if(_loc9_)
                        {
                           _loc4_++;
                        }
                     }
                  }
                  §§push(param1.x);
                  if(!_loc10_)
                  {
                     §§push(param2.x);
                     if(_loc9_ || param3)
                     {
                        addr84:
                        §§push(int(§§pop() - §§pop()));
                        §§push(int(§§pop() - §§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc9_)
                     {
                        §§push(0);
                        if(!(_loc10_ && param1))
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc9_ || param2)
                              {
                                 param3[param3.length] = this.§=!M§(param2.x,param2.y,_loc6_,param2.height);
                                 if(_loc9_)
                                 {
                                    _loc4_++;
                                 }
                              }
                           }
                           §§push(param2.bottom);
                           if(_loc9_)
                           {
                              addr136:
                              §§push(param1.bottom);
                              if(_loc9_ || this)
                              {
                                 §§push(int(§§pop() - §§pop()));
                              }
                              var _loc7_:* = §§pop();
                              if(!(_loc10_ && param3))
                              {
                                 §§push(0);
                                 if(_loc9_ || param2)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          param3[param3.length] = this.§=!M§(param2.x,param1.bottom,param2.width,_loc7_);
                                          if(_loc9_)
                                          {
                                             _loc4_++;
                                          }
                                       }
                                    }
                                    §§push(param1.y);
                                    if(!_loc10_)
                                    {
                                       addr185:
                                       §§push(param2.y);
                                       if(!(_loc10_ && param1))
                                       {
                                          addr196:
                                          §§push(int(§§pop() - §§pop()));
                                          §§push(int(§§pop() - §§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(0);
                                          if(_loc9_ || this)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   param3[param3.length] = this.§=!M§(param2.x,param2.y,param2.width,_loc8_);
                                                   if(_loc9_)
                                                   {
                                                      _loc4_++;
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      addr334:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr336:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 param3[param3.length] = param2;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§]p§(param2);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           addr299:
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§goto(addr237);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr310:
                                                                           }
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.height);
                                                                              if(_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.height);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr268:
                                                                                    §§push(§§pop() < §§pop());
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                       addr320:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr339:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ || param3))
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§push(§§pop() < §§pop());
                                                                                    }
                                                                                    addr312:
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr312);
                                                                              §§goto(addr332);
                                                                           }
                                                                           addr332:
                                                                        }
                                                                        addr237:
                                                                        return;
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr310);
                                                   §§goto(addr340);
                                                }
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr264);
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr185);
                           }
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr33);
      }
      
      private function §^!h§(param1:int, param2:int) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§1!n§ = null;
         var _loc3_:§1!n§ = this.§%T§;
         var _loc4_:* = -1;
         var _loc5_:int;
         §§push(_loc5_ = this.§6!o§.length);
         if(!(_loc8_ && param2))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(_loc6_ >= 0)
         {
            §§push((_loc7_ = this.§6!o§[_loc6_]).x);
            if(_loc9_)
            {
               §§push(_loc3_.x);
               if(!_loc8_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc9_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(param1);
                                 if(!(_loc8_ && param2))
                                 {
                                    §§push(_loc7_.width);
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       addr322:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(_loc7_.height);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                         }
                                                         addr288:
                                                      }
                                                      addr370:
                                                      §§push(§§pop() - 1);
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr373);
                                                      }
                                                      else
                                                      {
                                                         addr378:
                                                      }
                                                      addr378:
                                                      _loc6_ = §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                addr324:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr290);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr370);
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr322);
                     }
                     §§goto(addr272);
                  }
                  addr290:
                  loop25:
                  while(§§pop())
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(_loc6_);
                        if(_loc9_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc8_ && this))
                           {
                              addr309:
                              _loc4_ = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc7_.width);
                                       if(!(_loc8_ && this))
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop25;
                                                }
                                                §§push(§§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop19;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(_loc7_.width);
                                                            while(true)
                                                            {
                                                               §§push(_loc7_.height);
                                                               addr224:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                               }
                                                            }
                                                         }
                                                         addr273:
                                                      }
                                                      while(true)
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop21:
                                                            while(§§pop())
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_.right);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this.§<!f§);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(§§pop() < §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    break loop21;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              addr106:
                                                                              if(!(_loc9_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc8_ && param2)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             addr146:
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr205:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc7_.height);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§goto(addr106);
                                                                                                                  }
                                                                                                                  addr340:
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     _loc3_ = _loc7_;
                                                                                                                  }
                                                                                                                  if(_loc9_ || param2)
                                                                                                                  {
                                                                                                                     addr348:
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  break loop25;
                                                                                                               }
                                                                                                               §§goto(addr222);
                                                                                                            }
                                                                                                            §§goto(addr378);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ || param1))
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr218);
                                                                                                                  §§goto(addr146);
                                                                                                               }
                                                                                                               §§goto(addr273);
                                                                                                               addr215:
                                                                                                            }
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         addr218:
                                                                                                         continue loop21;
                                                                                                         addr205:
                                                                                                      }
                                                                                                      addr167:
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.height);
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               addr337:
                                                                                                               §§goto(addr340);
                                                                                                               §§push(_loc7_.width);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr196);
                                                                                             }
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr146);
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr340);
                                    }
                                    addr250:
                                 }
                                 break;
                              }
                              §§goto(addr373);
                           }
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr348);
                  }
                  §§push(_loc6_);
                  if(_loc9_ || param2)
                  {
                     §§goto(addr370);
                  }
                  addr373:
                  return §§pop();
               }
               §§goto(addr340);
            }
            §§goto(addr250);
         }
         §§goto(addr378);
         §§push(_loc4_);
      }
      
      private function §=!M§(param1:int, param2:int, param3:int, param4:int) : §1!n§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§1!n§ = null;
         if(_loc6_ || param1)
         {
            if(this.§=K§.length <= 0)
            {
               return new §1!n§(param1,param2,param3,param4);
            }
         }
         (_loc5_ = this.§=K§.pop()).x = param1;
         if(_loc6_)
         {
            _loc5_.y = param2;
            while(true)
            {
               _loc5_.width = param3;
               do
               {
                  _loc5_.height = param4;
               }
               while(!(_loc6_ || this));
               
               _loc5_.right = param1 + param3;
               §§goto(addr93);
            }
         }
         addr93:
         while(true)
         {
            _loc5_.bottom = param2 + param4;
            if(!(_loc7_ && this))
            {
               break;
            }
            continue loop0;
         }
         return _loc5_;
      }
      
      private function §]p§(param1:§1!n§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§=K§[this.§=K§.length] = param1;
         }
      }
      
      private function §5!"§(param1:int, param2:int, param3:int) : §9" §
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§9" § = null;
         if(!(_loc5_ && this))
         {
            if(this.§1"E§.length > 0)
            {
               (_loc4_ = this.§1"E§.pop()).width = param1;
               addr32:
               if(!_loc5_)
               {
                  _loc4_.height = param2;
               }
               else
               {
                  if(false)
                  {
                     loop1:
                     while(true)
                     {
                        _loc4_.id = param3;
                        if(_loc6_ || param3)
                        {
                           break;
                        }
                        addr90:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     return _loc4_;
                  }
                  §§goto(addr91);
               }
               §§goto(addr90);
            }
            addr91:
            return new §9" §(param1,param2,param3);
         }
         §§goto(addr32);
      }
      
      private function §^!C§(param1:§9" §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1"E§[this.§1"E§.length] = param1;
         }
      }
   }
}
